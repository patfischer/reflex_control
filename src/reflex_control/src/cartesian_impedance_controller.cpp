// Copyright (c) 2017 Franka Emika GmbH
// Use of this source code is governed by the Apache-2.0 license, see LICENSE
#include <reflex_control/cartesian_impedance_controller.h>

#include <cmath>
#include <memory>

#include <controller_interface/controller_base.h>
#include <franka/robot_state.h>
#include <pluginlib/class_list_macros.h>
#include <ros/ros.h>

#include "pseudo_inversion.h"

namespace reflex_control {

bool CartesianImpedanceController::init(hardware_interface::RobotHW* robot_hw,
                                               ros::NodeHandle& node_handle) {

  //~ sub_equilibrium_pose_ = node_handle.subscribe(
      //~ "/equilibrium_pose", 20, &CartesianImpedanceController::equilibriumPoseCallback, this,
      //~ ros::TransportHints().reliable().tcpNoDelay());
  
  name_ = "Reflex Controller";

  nh_ = node_handle;
  
  // advertise switchControllerMode service
  controller_switch_service = node_handle.advertiseService(
    "switchController", &CartesianImpedanceController::switchControllerModeCB, this);

  std::string arm_id;
  if (!node_handle.getParam("arm_id", arm_id)) {
    ROS_ERROR_STREAM("CartesianImpedanceController: Could not read parameter arm_id");
    return false;
  }
  std::vector<std::string> joint_names;
  if (!node_handle.getParam("joint_names", joint_names) || joint_names.size() != 7) {
    ROS_ERROR(
        "CartesianImpedanceController: Invalid or no joint_names parameters provided, "
        "aborting controller init!");
    return false;
  }

  auto* model_interface = robot_hw->get<franka_hw::FrankaModelInterface>();
  if (model_interface == nullptr) {
    ROS_ERROR_STREAM(
        "CartesianImpedanceController: Error getting model interface from hardware");
    return false;
  }
  try {
    model_handle_ = std::make_unique<franka_hw::FrankaModelHandle>(
        model_interface->getHandle(arm_id + "_model"));
  } catch (hardware_interface::HardwareInterfaceException& ex) {
    ROS_ERROR_STREAM(
        "CartesianImpedanceController: Exception getting model handle from interface: "
        << ex.what());
    return false;
  }

  auto* state_interface = robot_hw->get<franka_hw::FrankaStateInterface>();
  if (state_interface == nullptr) {
    ROS_ERROR_STREAM(
        "CartesianImpedanceController: Error getting state interface from hardware");
    return false;
  }
  try {
    state_handle_ = std::make_unique<franka_hw::FrankaStateHandle>(
        state_interface->getHandle(arm_id + "_robot"));
  } catch (hardware_interface::HardwareInterfaceException& ex) {
    ROS_ERROR_STREAM(
        "CartesianImpedanceController: Exception getting state handle from interface: "
        << ex.what());
    return false;
  }

  auto* effort_joint_interface = robot_hw->get<hardware_interface::EffortJointInterface>();
  if (effort_joint_interface == nullptr) {
    ROS_ERROR_STREAM(
        "CartesianImpedanceController: Error getting effort joint interface from hardware");
    return false;
  }
  for (size_t i = 0; i < 7; ++i) {
    try {
      joint_handles_.push_back(effort_joint_interface->getHandle(joint_names[i]));
    } catch (const hardware_interface::HardwareInterfaceException& ex) {
      ROS_ERROR_STREAM(
          "CartesianImpedanceController: Exception getting joint handles: " << ex.what());
      return false;
    }
  }

  dynamic_reconfigure_compliance_param_node_ =
      ros::NodeHandle("dynamic_reconfigure_compliance_param_node");

  dynamic_server_compliance_param_ = std::make_unique<
      dynamic_reconfigure::Server<reflex_control::compliance_paramConfig>>(

      dynamic_reconfigure_compliance_param_node_);
  dynamic_server_compliance_param_->setCallback(
      boost::bind(&CartesianImpedanceController::complianceParamCallback, this, _1, _2));

  position_d_.setZero();
  orientation_d_.coeffs() << 0.0, 0.0, 0.0, 1.0;
  position_d_target_.setZero();
  orientation_d_target_.coeffs() << 0.0, 0.0, 0.0, 1.0;

  cartesian_stiffness_.setZero();
  cartesian_damping_.setZero();

  impReflex_init();

  return true;
}

void CartesianImpedanceController::starting(const ros::Time& /*time*/) {
  // compute initial velocity with jacobian and set x_attractor and q_d_nullspace
  // to initial configuration
  franka::RobotState initial_state = state_handle_->getRobotState();
  // get jacobian
  std::array<double, 42> jacobian_array =
      model_handle_->getZeroJacobian(franka::Frame::kEndEffector);
  // convert to eigen
  Eigen::Map<Eigen::Matrix<double, 6, 7>> jacobian(jacobian_array.data());
  Eigen::Map<Eigen::Matrix<double, 7, 1>> dq_initial(initial_state.dq.data());
  Eigen::Map<Eigen::Matrix<double, 7, 1>> q_initial(initial_state.q.data());
  Eigen::Affine3d initial_transform(Eigen::Matrix4d::Map(initial_state.O_T_EE.data()));

  // set equilibrium point to current state
  position_d_ = initial_transform.translation();
  orientation_d_ = Eigen::Quaterniond(initial_transform.linear());
  position_d_target_ = initial_transform.translation();
  orientation_d_target_ = Eigen::Quaterniond(initial_transform.linear());

  // set nullspace equilibrium configuration to initial q
  q_d_nullspace_ = q_initial;

  // initial control mode
  impReflex_start();
  control_mode = 1;
}

void CartesianImpedanceController::update(const ros::Time& time,
                                                 const ros::Duration& period) {
  //~ ROS_DEBUG_THROTTLE_NAMED(1, name_, "Update: period: %f", period.toSec());
  switch(control_mode) {
  case 1:
    impReflex_update(time, period);
    break;
  case 2:
	testMove_update(time, period);
	break;
  default:
    impReflex_start();
    impReflex_update(time, period);
    break;
  }

  // update parameters changed online through dynamic reconfigure by filtering
  updateParams();

  // // update equilibrium position
  // position_d_ = filter_params_ * position_d_target_ + (1.0 - filter_params_) * position_d_;
  // Eigen::AngleAxisd aa_orientation_d(orientation_d_);
  // Eigen::AngleAxisd aa_orientation_d_target(orientation_d_target_);
  // aa_orientation_d.axis() = filter_params_ * aa_orientation_d_target.axis() +
  //                           (1.0 - filter_params_) * aa_orientation_d.axis();
  // aa_orientation_d.angle() = filter_params_ * aa_orientation_d_target.angle() +
  //                            (1.0 - filter_params_) * aa_orientation_d.angle();
  // orientation_d_ = Eigen::Quaterniond(aa_orientation_d);

}

void CartesianImpedanceController::updateParams() {
  // update parameters changed online through dynamic reconfigure by filtering
  cartesian_stiffness_ =
      filter_params_ * cartesian_stiffness_target_ + (1.0 - filter_params_) * cartesian_stiffness_;
  cartesian_damping_ =
      filter_params_ * cartesian_damping_target_ + (1.0 - filter_params_) * cartesian_damping_;
  nullspace_stiffness_ =
      filter_params_ * nullspace_stiffness_target_ + (1.0 - filter_params_) * nullspace_stiffness_;
  // other controller modes
  impReflex_cartesian_stiffness =
      filter_params_ * impReflex_cartesian_stiffness_target + (1.0 - filter_params_) * impReflex_cartesian_stiffness;
  impReflex_cartesian_damping =
      filter_params_ * impReflex_cartesian_damping_target + (1.0 - filter_params_) * impReflex_cartesian_damping;
  impReflex_nullspace_stiffness =
      filter_params_ * impReflex_nullspace_stiffness_target + (1.0 - filter_params_) * impReflex_nullspace_stiffness;

  gravReflex_cartesian_stiffness =
      filter_params_ * gravReflex_cartesian_stiffness_target + (1.0 - filter_params_) * gravReflex_cartesian_stiffness;
  gravReflex_cartesian_damping =
      filter_params_ * gravReflex_cartesian_damping_target + (1.0 - filter_params_) * gravReflex_cartesian_damping;
  gravReflex_nullspace_stiffness =
      filter_params_ * gravReflex_nullspace_stiffness_target + (1.0 - filter_params_) * gravReflex_nullspace_stiffness;

}

Eigen::Matrix<double, 7, 1> CartesianImpedanceController::saturateTorqueRate(
    const Eigen::Matrix<double, 7, 1>& tau_d_calculated,
    const Eigen::Matrix<double, 7, 1>& tau_J_d) {  // NOLINT (readability-identifier-naming)
  Eigen::Matrix<double, 7, 1> tau_d_saturated{};
  for (size_t i = 0; i < 7; i++) {
    double difference = tau_d_calculated[i] - tau_J_d[i];
    tau_d_saturated[i] =
        tau_J_d[i] + std::max(std::min(difference, delta_tau_max_), -delta_tau_max_);
  }
  return tau_d_saturated;
}

void CartesianImpedanceController::complianceParamCallback(
    reflex_control::compliance_paramConfig& config,
    uint32_t /*level*/) {
  cartesian_stiffness_target_.setIdentity();
  cartesian_stiffness_target_.topLeftCorner(3, 3)
      << config.translational_stiffness * Eigen::Matrix3d::Identity();
  cartesian_stiffness_target_.bottomRightCorner(3, 3)
      << config.rotational_stiffness * Eigen::Matrix3d::Identity();
  cartesian_damping_target_.setIdentity();
  // Damping ratio = 1
  cartesian_damping_target_.topLeftCorner(3, 3)
      << 2.0 * sqrt(config.translational_stiffness) * Eigen::Matrix3d::Identity();
  cartesian_damping_target_.bottomRightCorner(3, 3)
      << 2.0 * sqrt(config.rotational_stiffness) * Eigen::Matrix3d::Identity();
  nullspace_stiffness_target_ = config.nullspace_stiffness;

  //impReflex
  impReflex_cartesian_stiffness_target.setIdentity();
  impReflex_cartesian_stiffness_target.topLeftCorner(3, 3)
      << config.impReflex_translational_stiffness * Eigen::Matrix3d::Identity();
  impReflex_cartesian_stiffness_target.bottomRightCorner(3, 3)
      << config.impReflex_rotational_stiffness * Eigen::Matrix3d::Identity();
  impReflex_cartesian_damping_target.setIdentity();
  // Damping ratio = 1
  impReflex_cartesian_damping_target.topLeftCorner(3, 3)
      << 2.0 * sqrt(config.impReflex_translational_stiffness) * Eigen::Matrix3d::Identity();
  impReflex_cartesian_damping_target.bottomRightCorner(3, 3)
      << 2.0 * sqrt(config.impReflex_rotational_stiffness) * Eigen::Matrix3d::Identity();
  impReflex_nullspace_stiffness_target = config.nullspace_stiffness;

    //gravReflex
  gravReflex_cartesian_stiffness_target.setIdentity();
  gravReflex_cartesian_stiffness_target.topLeftCorner(3, 3)
      << config.gravReflex_translational_stiffness * Eigen::Matrix3d::Identity();
  gravReflex_cartesian_stiffness_target.bottomRightCorner(3, 3)
      << config.gravReflex_rotational_stiffness * Eigen::Matrix3d::Identity();
  gravReflex_cartesian_damping_target.setIdentity();
  // Damping ratio = 1
  gravReflex_cartesian_damping_target.topLeftCorner(3, 3)
      << 2.0 * sqrt(config.gravReflex_translational_stiffness) * Eigen::Matrix3d::Identity();
  gravReflex_cartesian_damping_target.bottomRightCorner(3, 3)
      << 2.0 * sqrt(config.gravReflex_rotational_stiffness) * Eigen::Matrix3d::Identity();
  gravReflex_nullspace_stiffness_target = config.nullspace_stiffness;

    //impReflex
  cptc_cartesian_stiffness_target.setIdentity();
  cptc_cartesian_stiffness_target.topLeftCorner(3, 3)
      << config.cptc_translational_stiffness * Eigen::Matrix3d::Identity();
  cptc_cartesian_stiffness_target.bottomRightCorner(3, 3)
      << config.cptc_rotational_stiffness * Eigen::Matrix3d::Identity();
  cptc_cartesian_damping_target.setIdentity();
  // Damping ratio = 1
  cptc_cartesian_damping_target.topLeftCorner(3, 3)
      << 2.0 * sqrt(config.cptc_translational_stiffness) * Eigen::Matrix3d::Identity();
  cptc_cartesian_damping_target.bottomRightCorner(3, 3)
      << 2.0 * sqrt(config.cptc_rotational_stiffness) * Eigen::Matrix3d::Identity();
  cptc_nullspace_stiffness_target = config.nullspace_stiffness;
  cptc_vel = config.cptc_vel;
  cptc_vel_rotation = config.cptc_vel_rotation;
  cptc_tol_trans = config.cptc_tol_trans;
  cptc_tol_angle = config.cptc_tol_angle;
}

//~ void CartesianImpedanceController::equilibriumPoseCallback(
    //~ const geometry_msgs::PoseStampedConstPtr& msg) {
  //~ position_d_target_ << msg->pose.position.x, msg->pose.position.y, msg->pose.position.z;
  //~ Eigen::Quaterniond last_orientation_d_target(orientation_d_target_);
  //~ orientation_d_target_.coeffs() << msg->pose.orientation.x, msg->pose.orientation.y,
      //~ msg->pose.orientation.z, msg->pose.orientation.w;
  //~ if (last_orientation_d_target.coeffs().dot(orientation_d_target_.coeffs()) < 0.0) {
    //~ orientation_d_target_.coeffs() << -orientation_d_target_.coeffs();
  //~ }
//~ }

// serviceCB must return bool
bool CartesianImpedanceController::switchControllerModeCB(reflex_control::switch_control_mode::Request &req,
    reflex_control::switch_control_mode::Response &res)
{
  // @ToDo: will ich das überhaupt?
  if (req.mode == control_mode) {
    ROS_INFO("Controller already in mode %ld", req.mode);
    res.ok = false;
    return false;
  }
  switch(req.mode) {
    case 1:
      ROS_INFO("Initial Controller");
      impReflex_start();
      control_mode = req.mode;
      res.ok = true;
      break;

    case 2:
      ROS_INFO("Reflex 1");
      // @ToDo: fill initialisation of parameters
      testMove_start();
      control_mode = req.mode;
      res.ok = true;
      break;

    default:
      ROS_INFO("Not a declared Controller");
      res.ok = false;
      return false;
      break;
  }
  return true;
}

// Follow cartesian pose trajectory controller
void CartesianImpedanceController::cptc_init() {
  cptc_position_desired.setZero();
  cptc_orientation_desired.coeffs() << 0.0, 0.0, 0.0, 1.0;
  // cptc_position_waypoint.setZero();
  // cptc_orientation_waypoint.coeffs() << 0.0, 0.0, 0.0, 1.0;
  // cptc_position_next.setZero();
  // cptc_orientation_next.coeffs() << 0.0, 0.0, 0.0, 1.0;

  cptc_cartesian_stiffness.setZero();
  cptc_cartesian_damping.setZero();

  as_.reset(new ActionServer(nh_, "follow_waypoints",
    boost::bind(&CartesianImpedanceController::cptc_goalCB, this, _1),
    boost::bind(&CartesianImpedanceController::cptc_cancelCB, this, _1),
    false));
  as_->start();
  ROS_INFO("Cartesion pose trajectory controller: actionServer initiated");
}

void CartesianImpedanceController::cptc_start() {
  // to initial configuration
  franka::RobotState initial_state = state_handle_->getRobotState();
  Eigen::Map<Eigen::Matrix<double, 7, 1>> q_initial(initial_state.q.data());
  Eigen::Affine3d initial_transform(Eigen::Matrix4d::Map(initial_state.O_T_EE.data()));

  // set position desired to current state
  cptc_position_desired = initial_transform.translation();
  cptc_orientation_desired = Eigen::Quaterniond(initial_transform.linear());
  index = 0;
  cptc_getNextWaypoint();
  index++;
}

void CartesianImpedanceController::cptc_update(const ros::Time& time, const ros::Duration& period) {
  // get state variables
  franka::RobotState robot_state = state_handle_->getRobotState();
  std::array<double, 7> coriolis_array = model_handle_->getCoriolis();
  std::array<double, 42> jacobian_array =
      model_handle_->getZeroJacobian(franka::Frame::kEndEffector);

  // convert to Eigen
  Eigen::Map<Eigen::Matrix<double, 7, 1>> coriolis(coriolis_array.data());
  Eigen::Map<Eigen::Matrix<double, 6, 7>> jacobian(jacobian_array.data());
  Eigen::Map<Eigen::Matrix<double, 7, 1>> q(robot_state.q.data());
  Eigen::Map<Eigen::Matrix<double, 7, 1>> dq(robot_state.dq.data());
  Eigen::Map<Eigen::Matrix<double, 7, 1>> tau_J_d(  // NOLINT (readability-identifier-naming)
      robot_state.tau_J_d.data());
  Eigen::Affine3d transform(Eigen::Matrix4d::Map(robot_state.O_T_EE.data()));
  Eigen::Vector3d position(transform.translation());
  Eigen::Quaterniond orientation(transform.linear());

  // compute error to desired pose
  // position error
  Eigen::Matrix<double, 6, 1> error;
  Eigen::Vector3d err_trans;
  Eigen::Vector3d err_pd;
  err_trans << position - cptc_position_desired;
  // error.head(3) << position - cptc_position_desired;

  // max velocity
  double err_norm = err_trans.norm();
  if (err_norm > cptc_vel * period.toSec()) {
    err_pd = err_trans.normalized() * cptc_vel * period.toSec();
  }
  // todo max acceleration

  error.head(3) << err_pd;

  // orientation error
  if (cptc_orientation_desired.coeffs().dot(orientation.coeffs()) < 0.0) {
    orientation.coeffs() << -orientation.coeffs();
  }
  // "difference" quaternion
  Eigen::Quaterniond error_quaternion(orientation * cptc_orientation_desired.inverse());
  // convert to axis angle
  Eigen::AngleAxisd error_quaternion_angle_axis(error_quaternion);
  // max rotation speed
  double err_angle = error_quaternion_angle_axis.angle();
  if (error_quaternion_angle_axis.angle() > cptc_vel_rotation) {
    error_quaternion_angle_axis.angle() = cptc_vel_rotation;
  }

  // compute "orientation error"
  error.tail(3) << error_quaternion_angle_axis.axis() * error_quaternion_angle_axis.angle();

  // check if next waypoint reached
  if (err_norm < cptc_tol_trans && err_angle < cptc_tol_angle) {
    cptc_getNextWaypoint();
    index++;
  }

  // compute control
  // allocate variables
  Eigen::VectorXd tau_task(7), tau_nullspace(7), tau_d(7);

  // pseudoinverse for nullspace handling
  // kinematic pseuoinverse
  Eigen::MatrixXd jacobian_transpose_pinv;
  pseudoInverse(jacobian.transpose(), jacobian_transpose_pinv);

  // Cartesian PD control with damping ratio = 1
  tau_task << jacobian.transpose() *
                  (-cptc_cartesian_stiffness * error - cptc_cartesian_damping * (jacobian * dq));
  // nullspace PD control with damping ratio = 1
  tau_nullspace << (Eigen::MatrixXd::Identity(7, 7) -
                    jacobian.transpose() * jacobian_transpose_pinv) *
                       (cptc_nullspace_stiffness * (q_d_nullspace_ - q) -
                        (2.0 * sqrt(cptc_nullspace_stiffness)) * dq);
  // Desired torque
  tau_d << tau_task + tau_nullspace + coriolis;
  // Saturate torque rate to avoid discontinuities
  tau_d << saturateTorqueRate(tau_d, tau_J_d);
  for (size_t i = 0; i < 7; ++i) {
    joint_handles_[i].setCommand(tau_d(i));
  }
}

void CartesianImpedanceController::cptc_goalCB(GoalHandle gh) {
  if (!this->isRunning())
  {
   ROS_INFO("Controller not running. Can't accept new goal.");
   reflex_control::FollowWaypointsResult result;
   result.error_code = reflex_control::FollowWaypointsResult::INVALID_GOAL;
   gh.setRejected(result);
   return;
  }

  if (gh.getGoal()->waypoints.empty())
  {
    ROS_INFO("Empty goal.");
    reflex_control::FollowWaypointsResult result;
    result.error_code = reflex_control::FollowWaypointsResult::INVALID_GOAL;
    gh.setRejected(result);
    return;
  }

  RealtimeGoalHandlePtr rt_goal(new RealtimeGoalHandle(gh));

  // TODO check if waypoint out of reach
  cptc_preemptActiveGoal();

  // to initial configuration
  franka::RobotState initial_state = state_handle_->getRobotState();
  Eigen::Map<Eigen::Matrix<double, 7, 1>> q_initial(initial_state.q.data());
  Eigen::Affine3d initial_transform(Eigen::Matrix4d::Map(initial_state.O_T_EE.data()));
  // set position desired to current state
  cptc_position_desired = initial_transform.translation();
  cptc_orientation_desired = Eigen::Quaterniond(initial_transform.linear());

  active_goal_ = rt_goal;
  index = 0;
  cptc_getNextWaypoint();
  index++;
  ROS_INFO("New goal accepted.");

}

void CartesianImpedanceController::cptc_cancelCB(GoalHandle gh) {
  RealtimeGoalHandlePtr current_active_goal(active_goal_);
  ROS_INFO("Cancel goal requested.");

  if (current_active_goal && current_active_goal->gh_ == gh)
  {
    cptc_preemptActiveGoal();
    ROS_INFO("Goal canceled.");
  } else {
    ROS_INFO("Didn't cancel because of wrong goal handle.");
  }
}

void CartesianImpedanceController::cptc_preemptActiveGoal() {
  RealtimeGoalHandlePtr current_active_goal(active_goal_);
  if(current_active_goal)
  {
    active_goal_.reset();
    current_active_goal->gh_.setCanceled();
    ROS_INFO("Preempted active goal.");
  } else {
    ROS_INFO("No active goal to cancel.");      
  }
}

void CartesianImpedanceController::cptc_getNextWaypoint() {
  RealtimeGoalHandlePtr current_active_goal(active_goal_);
  if(current_active_goal) { 
    if (current_active_goal->gh_.getGoal()->waypoints.size() <= index) {
      ROS_INFO("Reached end of waypoints list.");
      cptc_preemptActiveGoal();
    }

    reflex_control::cartesian_waypoint wp_msg;
    wp_msg = current_active_goal->gh_.getGoal()->waypoints[index];
    cptc_position_desired << wp_msg.wp.position.x, wp_msg.wp.position.y, wp_msg.wp.position.z;
    cptc_orientation_desired.coeffs() << wp_msg.wp.orientation.x, wp_msg.wp.orientation.y, wp_msg.wp.orientation.z, wp_msg.wp.orientation.w;
    ROS_INFO("next waypoint = (%f, %f, %f)", cptc_position_desired[0], cptc_position_desired[1], cptc_position_desired[2]);
    cptc_vel = wp_msg.vel;

  } else {
    ROS_INFO("No active goal, stop trajectory controller");
  }
}

// Impedance reflex (stop at current position)
void CartesianImpedanceController::impReflex_init() {
  // @ToDo: dynamic reconf callback for parameters?

  impReflex_position_desired.setZero();
  impReflex_orientation_desired.coeffs() << 0.0, 0.0, 0.0, 1.0;

  impReflex_cartesian_stiffness.setZero();
  impReflex_cartesian_damping.setZero();
}

void CartesianImpedanceController::impReflex_start() {
  // to initial configuration
  franka::RobotState initial_state = state_handle_->getRobotState();
  Eigen::Map<Eigen::Matrix<double, 7, 1>> q_initial(initial_state.q.data());
  Eigen::Affine3d initial_transform(Eigen::Matrix4d::Map(initial_state.O_T_EE.data()));

  // set position desired to current state
  impReflex_position_desired = initial_transform.translation();
  impReflex_orientation_desired = Eigen::Quaterniond(initial_transform.linear());
}

void CartesianImpedanceController::impReflex_update(const ros::Time& time, 
                                                    const ros::Duration& period) {
  // get state variables
  franka::RobotState robot_state = state_handle_->getRobotState();
  std::array<double, 7> coriolis_array = model_handle_->getCoriolis();
  std::array<double, 42> jacobian_array =
      model_handle_->getZeroJacobian(franka::Frame::kEndEffector);

  // convert to Eigen
  Eigen::Map<Eigen::Matrix<double, 7, 1>> coriolis(coriolis_array.data());
  Eigen::Map<Eigen::Matrix<double, 6, 7>> jacobian(jacobian_array.data());
  Eigen::Map<Eigen::Matrix<double, 7, 1>> q(robot_state.q.data());
  Eigen::Map<Eigen::Matrix<double, 7, 1>> dq(robot_state.dq.data());
  Eigen::Map<Eigen::Matrix<double, 7, 1>> tau_J_d(  // NOLINT (readability-identifier-naming)
      robot_state.tau_J_d.data());
  Eigen::Affine3d transform(Eigen::Matrix4d::Map(robot_state.O_T_EE.data()));
  Eigen::Vector3d position(transform.translation());
  Eigen::Quaterniond orientation(transform.linear());

  // compute error to desired pose
  // position error
  Eigen::Matrix<double, 6, 1> error;
  error.head(3) << position - impReflex_position_desired;

  // orientation error
  if (impReflex_orientation_desired.coeffs().dot(orientation.coeffs()) < 0.0) {
    orientation.coeffs() << -orientation.coeffs();
  }
  // "difference" quaternion
  Eigen::Quaterniond error_quaternion(orientation * impReflex_orientation_desired.inverse());
  // convert to axis angle
  Eigen::AngleAxisd error_quaternion_angle_axis(error_quaternion);
  // compute "orientation error"
  error.tail(3) << error_quaternion_angle_axis.axis() * error_quaternion_angle_axis.angle();

  // compute control
  // allocate variables
  Eigen::VectorXd tau_task(7), tau_nullspace(7), tau_d(7);

  // pseudoinverse for nullspace handling
  // kinematic pseuoinverse
  Eigen::MatrixXd jacobian_transpose_pinv;
  pseudoInverse(jacobian.transpose(), jacobian_transpose_pinv);

  // Cartesian PD control with damping ratio = 1
  tau_task << jacobian.transpose() *
                  (-impReflex_cartesian_stiffness * error - impReflex_cartesian_damping * (jacobian * dq));
  // nullspace PD control with damping ratio = 1
  tau_nullspace << (Eigen::MatrixXd::Identity(7, 7) -
                    jacobian.transpose() * jacobian_transpose_pinv) *
                       (impReflex_nullspace_stiffness * (q_d_nullspace_ - q) -
                        (2.0 * sqrt(impReflex_nullspace_stiffness)) * dq);
  // Desired torque
  tau_d << tau_task + tau_nullspace + coriolis;
  // Saturate torque rate to avoid discontinuities
  tau_d << saturateTorqueRate(tau_d, tau_J_d);
  for (size_t i = 0; i < 7; ++i) {
    joint_handles_[i].setCommand(tau_d(i));
  }
}


// Test Movement (circle)
void CartesianImpedanceController::testMove_init() {
  testMove_position_initial.setZero();
  testMove_orientation_initial.coeffs() << 0.0, 0.0, 0.0, 1.0;
}

void CartesianImpedanceController::testMove_start() {
  // to initial configuration
  franka::RobotState initial_state = state_handle_->getRobotState();
  Eigen::Map<Eigen::Matrix<double, 7, 1>> q_initial(initial_state.q.data());
  Eigen::Affine3d initial_transform(Eigen::Matrix4d::Map(initial_state.O_T_EE.data()));

  // set position desired to current state
  testMove_position_initial = initial_transform.translation();
  testMove_orientation_initial = Eigen::Quaterniond(initial_transform.linear());
  testMove_angle = 0;
  ROS_DEBUG_NAMED(name_, "testMove_start: at pos: %4.2f | %4.2f | %4.2f", 
	testMove_position_initial[0], testMove_position_initial[1], testMove_position_initial[2]);
}

void CartesianImpedanceController::testMove_update(const ros::Time& time, const ros::Duration& period) {
  // compute next position on circle
  //~ ROS_DEBUG_THROTTLE_NAMED(1, name_, "testMove_update: period: %f", period.toSec());
  
  testMove_angle += period.toSec() * testMove_vel / std::fabs(testMove_radius);
  if (testMove_angle > 2 * M_PI) {
    testMove_angle -= 2 * M_PI;
  }
  //~ ROS_DEBUG_THROTTLE_NAMED(0.01, name_, "testMove_update: angle = %f", testMove_angle);

  Eigen::Vector3d testMove_position_desired = testMove_position_initial;
  //~ double delta_y = testMove_radius * (1 - std::cos(testMove_angle));
  double delta_z = testMove_radius * std::sin(testMove_angle);
  //~ testMove_position_desired[1] += delta_y;
  testMove_position_desired[2] += delta_z;
  //~ ROS_DEBUG_THROTTLE_NAMED(0.01, name_, "testMove_update: delta_y = %f; delta_z = %f", delta_y, delta_z);
  ROS_DEBUG_THROTTLE_NAMED(0.01, name_, "testMove_update: pos_d: %f; %f; %f", testMove_position_desired[0], testMove_position_desired[1], testMove_position_desired[2]);

  // get state variables
  franka::RobotState robot_state = state_handle_->getRobotState();
  std::array<double, 7> coriolis_array = model_handle_->getCoriolis();
  std::array<double, 42> jacobian_array =
      model_handle_->getZeroJacobian(franka::Frame::kEndEffector);

  // convert to Eigen
  Eigen::Map<Eigen::Matrix<double, 7, 1>> coriolis(coriolis_array.data());
  Eigen::Map<Eigen::Matrix<double, 6, 7>> jacobian(jacobian_array.data());
  Eigen::Map<Eigen::Matrix<double, 7, 1>> q(robot_state.q.data());
  Eigen::Map<Eigen::Matrix<double, 7, 1>> dq(robot_state.dq.data());
  Eigen::Map<Eigen::Matrix<double, 7, 1>> tau_J_d(  // NOLINT (readability-identifier-naming)
      robot_state.tau_J_d.data());
  Eigen::Affine3d transform(Eigen::Matrix4d::Map(robot_state.O_T_EE.data()));
  Eigen::Vector3d position(transform.translation());
  Eigen::Quaterniond orientation(transform.linear());

  // compute error to desired pose
  // position error
  Eigen::Matrix<double, 6, 1> error;
  error.head(3) << position - testMove_position_desired;

  // orientation error
  if (testMove_orientation_initial.coeffs().dot(orientation.coeffs()) < 0.0) {
    orientation.coeffs() << -orientation.coeffs();
  }
  // "difference" quaternion
  Eigen::Quaterniond error_quaternion(orientation * testMove_orientation_initial.inverse());
  // convert to axis angle
  Eigen::AngleAxisd error_quaternion_angle_axis(error_quaternion);
  // compute "orientation error"
  error.tail(3) << error_quaternion_angle_axis.axis() * error_quaternion_angle_axis.angle();

  // compute control
  // allocate variables
  Eigen::VectorXd tau_task(7), tau_nullspace(7), tau_d(7);

  // pseudoinverse for nullspace handling
  // kinematic pseuoinverse
  Eigen::MatrixXd jacobian_transpose_pinv;
  pseudoInverse(jacobian.transpose(), jacobian_transpose_pinv);

  // Cartesian PD control with damping ratio = 1
  tau_task << jacobian.transpose() *
                  (-impReflex_cartesian_stiffness * error - impReflex_cartesian_damping * (jacobian * dq));
  // nullspace PD control with damping ratio = 1
  tau_nullspace << (Eigen::MatrixXd::Identity(7, 7) -
                    jacobian.transpose() * jacobian_transpose_pinv) *
                       (impReflex_nullspace_stiffness * (q_d_nullspace_ - q) -
                        (2.0 * sqrt(impReflex_nullspace_stiffness)) * dq);
  // Desired torque
  tau_d << tau_task + tau_nullspace + coriolis;
  // Saturate torque rate to avoid discontinuities
  tau_d << saturateTorqueRate(tau_d, tau_J_d);
  for (size_t i = 0; i < 7; ++i) {
    joint_handles_[i].setCommand(tau_d(i));
  }
}

}  // namespace reflex_control

PLUGINLIB_EXPORT_CLASS(reflex_control::CartesianImpedanceController,
                       controller_interface::ControllerBase)

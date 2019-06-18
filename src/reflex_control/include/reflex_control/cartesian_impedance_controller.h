// Copyright (c) 2017 Franka Emika GmbH
// Use of this source code is governed by the Apache-2.0 license, see LICENSE
#pragma once

#include <memory>
#include <string>
#include <vector>

#include <std_msgs/Int32.h>

#include <controller_interface/multi_interface_controller.h>
#include <dynamic_reconfigure/server.h>
#include <geometry_msgs/PoseStamped.h>
#include <hardware_interface/joint_command_interface.h>
#include <hardware_interface/robot_hw.h>
#include <ros/node_handle.h>
#include <ros/time.h>
#include <Eigen/Dense>

#include <reflex_control/compliance_paramConfig.h>
#include <franka_hw/franka_model_interface.h>
#include <franka_hw/franka_state_interface.h>

#include <reflex_control/switch_control_mode.h>

namespace reflex_control {

class CartesianImpedanceController : public controller_interface::MultiInterfaceController<
                                                franka_hw::FrankaModelInterface,
                                                hardware_interface::EffortJointInterface,
                                                franka_hw::FrankaStateInterface> {
 public:
  bool init(hardware_interface::RobotHW* robot_hw, ros::NodeHandle& node_handle) override;
  void starting(const ros::Time&) override;
  void update(const ros::Time& time, const ros::Duration& period) override;

 private:
  std::string name_; // Debugger name
  	
  // Saturation
  Eigen::Matrix<double, 7, 1> saturateTorqueRate(
      const Eigen::Matrix<double, 7, 1>& tau_d_calculated,
      const Eigen::Matrix<double, 7, 1>& tau_J_d);  // NOLINT (readability-identifier-naming)

  std::unique_ptr<franka_hw::FrankaStateHandle> state_handle_;
  std::unique_ptr<franka_hw::FrankaModelHandle> model_handle_;
  std::vector<hardware_interface::JointHandle> joint_handles_;

  double filter_params_{0.005};
  double nullspace_stiffness_{20.0};
  double nullspace_stiffness_target_{20.0};
  const double delta_tau_max_{1.0};
  Eigen::Matrix<double, 6, 6> cartesian_stiffness_;
  Eigen::Matrix<double, 6, 6> cartesian_stiffness_target_;
  Eigen::Matrix<double, 6, 6> cartesian_damping_;
  Eigen::Matrix<double, 6, 6> cartesian_damping_target_;
  Eigen::Matrix<double, 7, 1> q_d_nullspace_;
  Eigen::Vector3d position_d_;
  Eigen::Quaterniond orientation_d_;
  Eigen::Vector3d position_d_target_;
  Eigen::Quaterniond orientation_d_target_;

  // Dynamic reconfigure
  std::unique_ptr<dynamic_reconfigure::Server<reflex_control::compliance_paramConfig>>
      dynamic_server_compliance_param_;
  ros::NodeHandle dynamic_reconfigure_compliance_param_node_;
  void complianceParamCallback(reflex_control::compliance_paramConfig& config,
                               uint32_t level);

  //~ // Equilibrium pose subscriber
  //~ ros::Subscriber sub_equilibrium_pose_;
  //~ void equilibriumPoseCallback(const geometry_msgs::PoseStampedConstPtr& msg);

  // Switch Controller Mode and set/update Parameters
  int control_mode;
  ros::ServiceServer controller_switch_service;
  bool switchControllerModeCB(reflex_control::switch_control_mode::Request &req,
    reflex_control::switch_control_mode::Response &res);

  // impedance reflex (stops at current position)
  double impReflex_nullspace_stiffness{20.0};
  Eigen::Matrix<double, 6, 6> impReflex_cartesian_stiffness;
  Eigen::Matrix<double, 6, 6> impReflex_cartesian_damping;
  // Eigen::Matrix<double, 7, 1> q_d_nullspace_;
  Eigen::Vector3d impReflex_position_desired;
  Eigen::Quaterniond impReflex_orientation_desired; 
  void impReflex_init();
  void impReflex_start();
  void impReflex_update(const ros::Time& time, const ros::Duration& period);


  // test movement going in a circle
  Eigen::Vector3d testMove_position_initial;
  Eigen::Quaterniond testMove_orientation_initial; 
  double testMove_radius{0.2};
  double testMove_vel{0.2};
  double testMove_angle{0.0};
  void testMove_init();
  void testMove_start();
  void testMove_update(const ros::Time& time, const ros::Duration& period);
};

}  // namespace reflex_control

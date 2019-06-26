#include <ros/ros.h>

#include <dynamic_reconfigure/server.h>
#include <reflex_handler/reflex_handler_paramsConfig.h>

#include <franka_hw/franka_model_interface.h>
#include <franka_hw/franka_state_interface.h>
#include <franka/robot.h>
#include <franka_hw/franka_hw.h>
#include <franka/robot_state.h>
#include <franka_msgs/FrankaState.h>
#include <franka_control/services.h>

void callback(reflex_handler::reflex_handler_paramsConfig &config, uint32_t level) {
  ROS_INFO("Reconfigure Request: %d %f %s %s %d",
            config.int_param, config.double_param,
            config.str_param.c_str(),
            config.bool_param?"True":"False");
}

void chatterCallback(const franka_msgs::FrankaState::ConstPtr& msg)
  {
    // ROS_INFO_THROTTLE(0.5, "[%f]", msg->cartesian_contact[0]);

  }

int main(int argc, char **argv) {
  ros::init(argc, argv, "reflex_handler");

  dynamic_reconfigure::Server<reflex_handler::reflex_handler_paramsConfig> server;
  dynamic_reconfigure::Server<reflex_handler::reflex_handler_paramsConfig>::CallbackType f;

  f = boost::bind(&callback, _1, _2);
  server.setCallback(f);
  ros::NodeHandle n;

  ros::ServiceClient client = n.serviceClient<franka_control::SetFullCollisionBehavior>("/franka_control/set_full_collision_behavior");
  franka_control::SetFullCollisionBehavior srv;
  srv.request.lower_torque_thresholds_acceleration = {1, 1, 1, 1, 1, 1, 1};
  srv.request.upper_torque_thresholds_acceleration = {20.0, 20.0, 18.0, 18.0, 16.0, 14.0, 12.0};
  srv.request.lower_torque_thresholds_nominal = {1, 1, 1, 1, 1, 1, 1};
  srv.request.upper_torque_thresholds_nominal = {20.0, 20.0, 18.0, 18.0, 16.0, 14.0, 12.0};
  srv.request.lower_force_thresholds_acceleration = {1, 1, 1, 1, 1, 1};
  srv.request.upper_force_thresholds_acceleration = {20.0, 20.0, 20.0, 25.0, 25.0, 25.0};
  srv.request.lower_force_thresholds_nominal = {1, 1, 1, 1, 1, 1};
  srv.request.upper_force_thresholds_nominal = {20.0, 20.0, 20.0, 25.0, 25.0, 25.0};
  if (client.call(srv)) {
    ROS_INFO("FullCollisionBehavior is set.");
  } else {
    ROS_INFO("Failed to call service.");
  }

  franka_msgs::FrankaState msg;

  // {{10.0, 10.0, 9.0, 9.0, 8.0, 7.0, 6.0}}, {{10.0, 10.0, 9.0, 9.0, 8.0, 7.0, 6.0}},
  // {{10.0, 10.0, 9.0, 9.0, 8.0, 7.0, 6.0}}, {{10.0, 10.0, 9.0, 9.0, 8.0, 7.0, 6.0}},
  // {{10.0, 10.0, 10.0, 12.5, 12.5, 12.5}}, {{10.0, 10.0, 10.0, 12.5, 12.5, 12.5}},
  // {{10.0, 10.0, 10.0, 12.5, 12.5, 12.5}}, {{10.0, 10.0, 10.0, 12.5, 12.5, 12.5}});

  ros::Subscriber sub = n.subscribe("/franka_state_controller/franka_states", 1000, chatterCallback);

  ROS_INFO("Spinning node");
  ros::spin();

  return 0;
}

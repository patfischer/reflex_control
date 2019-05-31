#include <ros/ros.h>

#include <dynamic_reconfigure/server.h>
#include <reflex_handler/reflex_handler_paramsConfig.h>

void callback(reflex_handler::reflex_handler_paramsConfig &config, uint32_t level) {
  ROS_INFO("Reconfigure Request: %d %f %s %s %d", 
            config.int_param, config.double_param, 
            config.str_param.c_str(), 
            config.bool_param?"True":"False");
}

int main(int argc, char **argv) {
  ros::init(argc, argv, "reflex_handler");

  dynamic_reconfigure::Server<reflex_handler::reflex_handler_paramsConfig> server;
  dynamic_reconfigure::Server<reflex_handler::reflex_handler_paramsConfig>::CallbackType f;

  f = boost::bind(&callback, _1, _2);
  server.setCallback(f);

  ROS_INFO("Spinning node");
  ros::spin();
  return 0;
}
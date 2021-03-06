cmake_minimum_required(VERSION 2.8.3)
project(reflex_control)

set(CMAKE_BUILD_TYPE Release)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(catkin REQUIRED COMPONENTS
  controller_interface
  dynamic_reconfigure
  franka_hw
  std_msgs
  actionlib
  actionlib_msgs
  geometry_msgs
  hardware_interface
  message_generation
  pluginlib
  realtime_tools
  roscpp
  rospy
  genmsg
)

find_package(Eigen3 REQUIRED)
find_package(Franka 0.5.0 REQUIRED)

add_message_files(FILES
  JointTorqueComparison.msg
  ControllerSwitch.msg
  cartesian_waypoint.msg
)

add_service_files(FILES
  change_param.srv
  switch_control_mode.srv
)

add_action_files(DIRECTORY action FILES
  FollowWaypoints.action
)

generate_messages(DEPENDENCIES actionlib actionlib_msgs geometry_msgs)

generate_dynamic_reconfigure_options(
  cfg/compliance_param.cfg
  cfg/desired_mass_param.cfg
)

catkin_package(
  LIBRARIES reflex_control
  CATKIN_DEPENDS
    controller_interface
    dynamic_reconfigure
    franka_hw
    std_msgs
    actionlib
    actionlib_msgs
    geometry_msgs
    hardware_interface
    message_runtime
    pluginlib
    realtime_tools
    roscpp
  DEPENDS Franka
)

#test_action_server
add_executable(test_action_node src/test_action_server.cpp)
target_link_libraries(test_action_node 
  ${Franka_LIBRARIES}
  ${catkin_LIBRARIES}
)
target_include_directories(test_action_node SYSTEM PUBLIC
  ${Franka_INCLUDE_DIRS}
  ${EIGEN3_INCLUDE_DIRS}
  ${catkin_INCLUDE_DIRS}
)
add_dependencies(test_action_node
  ${${PROJECT_NAME}_EXPORTED_TARGETS}
  ${catkin_EXPORTED_TARGETS}
)
#test_action_client
add_executable(test_action_client src/test_action_client.cpp)
target_link_libraries(test_action_client 
  ${Franka_LIBRARIES}
  ${catkin_LIBRARIES}
)
target_include_directories(test_action_client SYSTEM PUBLIC
  ${Franka_INCLUDE_DIRS}
  ${EIGEN3_INCLUDE_DIRS}
  ${catkin_INCLUDE_DIRS}
)
add_dependencies(test_action_client
  ${${PROJECT_NAME}_EXPORTED_TARGETS}
  ${catkin_EXPORTED_TARGETS}
)


add_library(reflex_control
  src/cartesian_impedance_controller.cpp
  src/cartesian_impedance_controller_cropped.cpp
  src/cartesian_pose_controller.cpp
  src/cartesian_velocity_controller.cpp
  src/joint_impedance_controller.cpp
  src/joint_position_controller.cpp
)

add_dependencies(reflex_control
  ${${PROJECT_NAME}_EXPORTED_TARGETS}
  ${catkin_EXPORTED_TARGETS}
  ${PROJECT_NAME}_generate_messages_cpp
  ${PROJECT_NAME}_gencpp
  ${PROJECT_NAME}_gencfg
)

target_link_libraries(reflex_control PUBLIC
  ${Franka_LIBRARIES}
  ${catkin_LIBRARIES}
  ${Boost_LIBRARIES}
)

target_include_directories(reflex_control SYSTEM PUBLIC
  ${Franka_INCLUDE_DIRS}
  ${EIGEN3_INCLUDE_DIRS}
  ${catkin_INCLUDE_DIRS}
)
target_include_directories(reflex_control PUBLIC
  include
)

## Installation
install(TARGETS reflex_control
  ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)
install(DIRECTORY launch
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)
install(DIRECTORY config
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)
install(FILES reflex_control_plugin.xml
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)
catkin_install_python(
  PROGRAMS scripts/interactive_marker.py scripts/move_to_start.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

## Tools
include(${CMAKE_CURRENT_LIST_DIR}/../cmake/ClangTools.cmake OPTIONAL
  RESULT_VARIABLE CLANG_TOOLS
)
if(CLANG_TOOLS)
  file(GLOB_RECURSE SOURCES ${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp)
  file(GLOB_RECURSE HEADERS
    ${CMAKE_CURRENT_SOURCE_DIR}/include/*.h
    ${CMAKE_CURRENT_SOURCE_DIR}/src/*.h
  )
  add_format_target(reflex_control FILES ${SOURCES} ${HEADERS})
  add_tidy_target(reflex_control
    FILES ${SOURCES}
    DEPENDS reflex_control
  )
endif()

# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "reflex_control: 9 messages, 2 services")

set(MSG_I_FLAGS "-Ireflex_control:/home/fischer/reflex_control/src/reflex_control/msg;-Ireflex_control:/home/fischer/reflex_control/devel/share/reflex_control/msg;-Iactionlib:/opt/ros/kinetic/share/actionlib/cmake/../msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(reflex_control_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsActionFeedback.msg" NAME_WE)
add_custom_target(_reflex_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "reflex_control" "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsActionFeedback.msg" "geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:reflex_control/FollowWaypointsFeedback:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsActionResult.msg" NAME_WE)
add_custom_target(_reflex_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "reflex_control" "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsActionResult.msg" "reflex_control/FollowWaypointsResult:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/fischer/reflex_control/src/reflex_control/msg/JointTorqueComparison.msg" NAME_WE)
add_custom_target(_reflex_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "reflex_control" "/home/fischer/reflex_control/src/reflex_control/msg/JointTorqueComparison.msg" ""
)

get_filename_component(_filename "/home/fischer/reflex_control/src/reflex_control/srv/switch_control_mode.srv" NAME_WE)
add_custom_target(_reflex_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "reflex_control" "/home/fischer/reflex_control/src/reflex_control/srv/switch_control_mode.srv" ""
)

get_filename_component(_filename "/home/fischer/reflex_control/src/reflex_control/srv/change_param.srv" NAME_WE)
add_custom_target(_reflex_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "reflex_control" "/home/fischer/reflex_control/src/reflex_control/srv/change_param.srv" ""
)

get_filename_component(_filename "/home/fischer/reflex_control/src/reflex_control/msg/ControllerSwitch.msg" NAME_WE)
add_custom_target(_reflex_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "reflex_control" "/home/fischer/reflex_control/src/reflex_control/msg/ControllerSwitch.msg" ""
)

get_filename_component(_filename "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsResult.msg" NAME_WE)
add_custom_target(_reflex_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "reflex_control" "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsResult.msg" ""
)

get_filename_component(_filename "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsAction.msg" NAME_WE)
add_custom_target(_reflex_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "reflex_control" "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsAction.msg" "reflex_control/FollowWaypointsResult:geometry_msgs/Pose:std_msgs/Header:reflex_control/FollowWaypointsActionFeedback:geometry_msgs/Quaternion:geometry_msgs/Point:reflex_control/FollowWaypointsFeedback:reflex_control/FollowWaypointsActionGoal:reflex_control/FollowWaypointsGoal:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:reflex_control/FollowWaypointsActionResult"
)

get_filename_component(_filename "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsGoal.msg" NAME_WE)
add_custom_target(_reflex_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "reflex_control" "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsGoal.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsActionGoal.msg" NAME_WE)
add_custom_target(_reflex_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "reflex_control" "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsActionGoal.msg" "geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:reflex_control/FollowWaypointsGoal:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsFeedback.msg" NAME_WE)
add_custom_target(_reflex_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "reflex_control" "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsFeedback.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(reflex_control
  "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/reflex_control
)
_generate_msg_cpp(reflex_control
  "/home/fischer/reflex_control/src/reflex_control/msg/JointTorqueComparison.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/reflex_control
)
_generate_msg_cpp(reflex_control
  "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/reflex_control
)
_generate_msg_cpp(reflex_control
  "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsAction.msg"
  "${MSG_I_FLAGS}"
  "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsFeedback.msg;/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsActionGoal.msg;/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/reflex_control
)
_generate_msg_cpp(reflex_control
  "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/reflex_control
)
_generate_msg_cpp(reflex_control
  "/home/fischer/reflex_control/src/reflex_control/msg/ControllerSwitch.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/reflex_control
)
_generate_msg_cpp(reflex_control
  "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/reflex_control
)
_generate_msg_cpp(reflex_control
  "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/reflex_control
)
_generate_msg_cpp(reflex_control
  "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/reflex_control
)

### Generating Services
_generate_srv_cpp(reflex_control
  "/home/fischer/reflex_control/src/reflex_control/srv/change_param.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/reflex_control
)
_generate_srv_cpp(reflex_control
  "/home/fischer/reflex_control/src/reflex_control/srv/switch_control_mode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/reflex_control
)

### Generating Module File
_generate_module_cpp(reflex_control
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/reflex_control
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(reflex_control_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(reflex_control_generate_messages reflex_control_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsActionFeedback.msg" NAME_WE)
add_dependencies(reflex_control_generate_messages_cpp _reflex_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsActionResult.msg" NAME_WE)
add_dependencies(reflex_control_generate_messages_cpp _reflex_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fischer/reflex_control/src/reflex_control/msg/JointTorqueComparison.msg" NAME_WE)
add_dependencies(reflex_control_generate_messages_cpp _reflex_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fischer/reflex_control/src/reflex_control/srv/switch_control_mode.srv" NAME_WE)
add_dependencies(reflex_control_generate_messages_cpp _reflex_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fischer/reflex_control/src/reflex_control/srv/change_param.srv" NAME_WE)
add_dependencies(reflex_control_generate_messages_cpp _reflex_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fischer/reflex_control/src/reflex_control/msg/ControllerSwitch.msg" NAME_WE)
add_dependencies(reflex_control_generate_messages_cpp _reflex_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsResult.msg" NAME_WE)
add_dependencies(reflex_control_generate_messages_cpp _reflex_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsAction.msg" NAME_WE)
add_dependencies(reflex_control_generate_messages_cpp _reflex_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsGoal.msg" NAME_WE)
add_dependencies(reflex_control_generate_messages_cpp _reflex_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsActionGoal.msg" NAME_WE)
add_dependencies(reflex_control_generate_messages_cpp _reflex_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsFeedback.msg" NAME_WE)
add_dependencies(reflex_control_generate_messages_cpp _reflex_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(reflex_control_gencpp)
add_dependencies(reflex_control_gencpp reflex_control_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS reflex_control_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(reflex_control
  "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/reflex_control
)
_generate_msg_eus(reflex_control
  "/home/fischer/reflex_control/src/reflex_control/msg/JointTorqueComparison.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/reflex_control
)
_generate_msg_eus(reflex_control
  "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/reflex_control
)
_generate_msg_eus(reflex_control
  "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsAction.msg"
  "${MSG_I_FLAGS}"
  "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsFeedback.msg;/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsActionGoal.msg;/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/reflex_control
)
_generate_msg_eus(reflex_control
  "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/reflex_control
)
_generate_msg_eus(reflex_control
  "/home/fischer/reflex_control/src/reflex_control/msg/ControllerSwitch.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/reflex_control
)
_generate_msg_eus(reflex_control
  "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/reflex_control
)
_generate_msg_eus(reflex_control
  "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/reflex_control
)
_generate_msg_eus(reflex_control
  "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/reflex_control
)

### Generating Services
_generate_srv_eus(reflex_control
  "/home/fischer/reflex_control/src/reflex_control/srv/change_param.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/reflex_control
)
_generate_srv_eus(reflex_control
  "/home/fischer/reflex_control/src/reflex_control/srv/switch_control_mode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/reflex_control
)

### Generating Module File
_generate_module_eus(reflex_control
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/reflex_control
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(reflex_control_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(reflex_control_generate_messages reflex_control_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsActionFeedback.msg" NAME_WE)
add_dependencies(reflex_control_generate_messages_eus _reflex_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsActionResult.msg" NAME_WE)
add_dependencies(reflex_control_generate_messages_eus _reflex_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fischer/reflex_control/src/reflex_control/msg/JointTorqueComparison.msg" NAME_WE)
add_dependencies(reflex_control_generate_messages_eus _reflex_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fischer/reflex_control/src/reflex_control/srv/switch_control_mode.srv" NAME_WE)
add_dependencies(reflex_control_generate_messages_eus _reflex_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fischer/reflex_control/src/reflex_control/srv/change_param.srv" NAME_WE)
add_dependencies(reflex_control_generate_messages_eus _reflex_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fischer/reflex_control/src/reflex_control/msg/ControllerSwitch.msg" NAME_WE)
add_dependencies(reflex_control_generate_messages_eus _reflex_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsResult.msg" NAME_WE)
add_dependencies(reflex_control_generate_messages_eus _reflex_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsAction.msg" NAME_WE)
add_dependencies(reflex_control_generate_messages_eus _reflex_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsGoal.msg" NAME_WE)
add_dependencies(reflex_control_generate_messages_eus _reflex_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsActionGoal.msg" NAME_WE)
add_dependencies(reflex_control_generate_messages_eus _reflex_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsFeedback.msg" NAME_WE)
add_dependencies(reflex_control_generate_messages_eus _reflex_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(reflex_control_geneus)
add_dependencies(reflex_control_geneus reflex_control_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS reflex_control_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(reflex_control
  "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/reflex_control
)
_generate_msg_lisp(reflex_control
  "/home/fischer/reflex_control/src/reflex_control/msg/JointTorqueComparison.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/reflex_control
)
_generate_msg_lisp(reflex_control
  "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/reflex_control
)
_generate_msg_lisp(reflex_control
  "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsAction.msg"
  "${MSG_I_FLAGS}"
  "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsFeedback.msg;/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsActionGoal.msg;/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/reflex_control
)
_generate_msg_lisp(reflex_control
  "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/reflex_control
)
_generate_msg_lisp(reflex_control
  "/home/fischer/reflex_control/src/reflex_control/msg/ControllerSwitch.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/reflex_control
)
_generate_msg_lisp(reflex_control
  "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/reflex_control
)
_generate_msg_lisp(reflex_control
  "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/reflex_control
)
_generate_msg_lisp(reflex_control
  "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/reflex_control
)

### Generating Services
_generate_srv_lisp(reflex_control
  "/home/fischer/reflex_control/src/reflex_control/srv/change_param.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/reflex_control
)
_generate_srv_lisp(reflex_control
  "/home/fischer/reflex_control/src/reflex_control/srv/switch_control_mode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/reflex_control
)

### Generating Module File
_generate_module_lisp(reflex_control
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/reflex_control
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(reflex_control_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(reflex_control_generate_messages reflex_control_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsActionFeedback.msg" NAME_WE)
add_dependencies(reflex_control_generate_messages_lisp _reflex_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsActionResult.msg" NAME_WE)
add_dependencies(reflex_control_generate_messages_lisp _reflex_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fischer/reflex_control/src/reflex_control/msg/JointTorqueComparison.msg" NAME_WE)
add_dependencies(reflex_control_generate_messages_lisp _reflex_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fischer/reflex_control/src/reflex_control/srv/switch_control_mode.srv" NAME_WE)
add_dependencies(reflex_control_generate_messages_lisp _reflex_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fischer/reflex_control/src/reflex_control/srv/change_param.srv" NAME_WE)
add_dependencies(reflex_control_generate_messages_lisp _reflex_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fischer/reflex_control/src/reflex_control/msg/ControllerSwitch.msg" NAME_WE)
add_dependencies(reflex_control_generate_messages_lisp _reflex_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsResult.msg" NAME_WE)
add_dependencies(reflex_control_generate_messages_lisp _reflex_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsAction.msg" NAME_WE)
add_dependencies(reflex_control_generate_messages_lisp _reflex_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsGoal.msg" NAME_WE)
add_dependencies(reflex_control_generate_messages_lisp _reflex_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsActionGoal.msg" NAME_WE)
add_dependencies(reflex_control_generate_messages_lisp _reflex_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsFeedback.msg" NAME_WE)
add_dependencies(reflex_control_generate_messages_lisp _reflex_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(reflex_control_genlisp)
add_dependencies(reflex_control_genlisp reflex_control_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS reflex_control_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(reflex_control
  "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/reflex_control
)
_generate_msg_nodejs(reflex_control
  "/home/fischer/reflex_control/src/reflex_control/msg/JointTorqueComparison.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/reflex_control
)
_generate_msg_nodejs(reflex_control
  "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/reflex_control
)
_generate_msg_nodejs(reflex_control
  "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsAction.msg"
  "${MSG_I_FLAGS}"
  "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsFeedback.msg;/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsActionGoal.msg;/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/reflex_control
)
_generate_msg_nodejs(reflex_control
  "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/reflex_control
)
_generate_msg_nodejs(reflex_control
  "/home/fischer/reflex_control/src/reflex_control/msg/ControllerSwitch.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/reflex_control
)
_generate_msg_nodejs(reflex_control
  "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/reflex_control
)
_generate_msg_nodejs(reflex_control
  "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/reflex_control
)
_generate_msg_nodejs(reflex_control
  "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/reflex_control
)

### Generating Services
_generate_srv_nodejs(reflex_control
  "/home/fischer/reflex_control/src/reflex_control/srv/change_param.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/reflex_control
)
_generate_srv_nodejs(reflex_control
  "/home/fischer/reflex_control/src/reflex_control/srv/switch_control_mode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/reflex_control
)

### Generating Module File
_generate_module_nodejs(reflex_control
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/reflex_control
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(reflex_control_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(reflex_control_generate_messages reflex_control_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsActionFeedback.msg" NAME_WE)
add_dependencies(reflex_control_generate_messages_nodejs _reflex_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsActionResult.msg" NAME_WE)
add_dependencies(reflex_control_generate_messages_nodejs _reflex_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fischer/reflex_control/src/reflex_control/msg/JointTorqueComparison.msg" NAME_WE)
add_dependencies(reflex_control_generate_messages_nodejs _reflex_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fischer/reflex_control/src/reflex_control/srv/switch_control_mode.srv" NAME_WE)
add_dependencies(reflex_control_generate_messages_nodejs _reflex_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fischer/reflex_control/src/reflex_control/srv/change_param.srv" NAME_WE)
add_dependencies(reflex_control_generate_messages_nodejs _reflex_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fischer/reflex_control/src/reflex_control/msg/ControllerSwitch.msg" NAME_WE)
add_dependencies(reflex_control_generate_messages_nodejs _reflex_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsResult.msg" NAME_WE)
add_dependencies(reflex_control_generate_messages_nodejs _reflex_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsAction.msg" NAME_WE)
add_dependencies(reflex_control_generate_messages_nodejs _reflex_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsGoal.msg" NAME_WE)
add_dependencies(reflex_control_generate_messages_nodejs _reflex_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsActionGoal.msg" NAME_WE)
add_dependencies(reflex_control_generate_messages_nodejs _reflex_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsFeedback.msg" NAME_WE)
add_dependencies(reflex_control_generate_messages_nodejs _reflex_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(reflex_control_gennodejs)
add_dependencies(reflex_control_gennodejs reflex_control_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS reflex_control_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(reflex_control
  "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/reflex_control
)
_generate_msg_py(reflex_control
  "/home/fischer/reflex_control/src/reflex_control/msg/JointTorqueComparison.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/reflex_control
)
_generate_msg_py(reflex_control
  "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/reflex_control
)
_generate_msg_py(reflex_control
  "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsAction.msg"
  "${MSG_I_FLAGS}"
  "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsFeedback.msg;/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsActionGoal.msg;/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/reflex_control
)
_generate_msg_py(reflex_control
  "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/reflex_control
)
_generate_msg_py(reflex_control
  "/home/fischer/reflex_control/src/reflex_control/msg/ControllerSwitch.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/reflex_control
)
_generate_msg_py(reflex_control
  "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/reflex_control
)
_generate_msg_py(reflex_control
  "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/reflex_control
)
_generate_msg_py(reflex_control
  "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/reflex_control
)

### Generating Services
_generate_srv_py(reflex_control
  "/home/fischer/reflex_control/src/reflex_control/srv/change_param.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/reflex_control
)
_generate_srv_py(reflex_control
  "/home/fischer/reflex_control/src/reflex_control/srv/switch_control_mode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/reflex_control
)

### Generating Module File
_generate_module_py(reflex_control
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/reflex_control
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(reflex_control_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(reflex_control_generate_messages reflex_control_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsActionFeedback.msg" NAME_WE)
add_dependencies(reflex_control_generate_messages_py _reflex_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsActionResult.msg" NAME_WE)
add_dependencies(reflex_control_generate_messages_py _reflex_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fischer/reflex_control/src/reflex_control/msg/JointTorqueComparison.msg" NAME_WE)
add_dependencies(reflex_control_generate_messages_py _reflex_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fischer/reflex_control/src/reflex_control/srv/switch_control_mode.srv" NAME_WE)
add_dependencies(reflex_control_generate_messages_py _reflex_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fischer/reflex_control/src/reflex_control/srv/change_param.srv" NAME_WE)
add_dependencies(reflex_control_generate_messages_py _reflex_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fischer/reflex_control/src/reflex_control/msg/ControllerSwitch.msg" NAME_WE)
add_dependencies(reflex_control_generate_messages_py _reflex_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsResult.msg" NAME_WE)
add_dependencies(reflex_control_generate_messages_py _reflex_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsAction.msg" NAME_WE)
add_dependencies(reflex_control_generate_messages_py _reflex_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsGoal.msg" NAME_WE)
add_dependencies(reflex_control_generate_messages_py _reflex_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsActionGoal.msg" NAME_WE)
add_dependencies(reflex_control_generate_messages_py _reflex_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fischer/reflex_control/devel/share/reflex_control/msg/FollowWaypointsFeedback.msg" NAME_WE)
add_dependencies(reflex_control_generate_messages_py _reflex_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(reflex_control_genpy)
add_dependencies(reflex_control_genpy reflex_control_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS reflex_control_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/reflex_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/reflex_control
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_generate_messages_cpp)
  add_dependencies(reflex_control_generate_messages_cpp actionlib_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(reflex_control_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(reflex_control_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/reflex_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/reflex_control
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_generate_messages_eus)
  add_dependencies(reflex_control_generate_messages_eus actionlib_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(reflex_control_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(reflex_control_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/reflex_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/reflex_control
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_generate_messages_lisp)
  add_dependencies(reflex_control_generate_messages_lisp actionlib_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(reflex_control_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(reflex_control_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/reflex_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/reflex_control
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_generate_messages_nodejs)
  add_dependencies(reflex_control_generate_messages_nodejs actionlib_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(reflex_control_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(reflex_control_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/reflex_control)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/reflex_control\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/reflex_control
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_generate_messages_py)
  add_dependencies(reflex_control_generate_messages_py actionlib_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(reflex_control_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(reflex_control_generate_messages_py geometry_msgs_generate_messages_py)
endif()

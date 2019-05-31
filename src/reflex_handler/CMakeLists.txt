cmake_minimum_required(VERSION 2.8.3)
project(reflex_handler)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(catkin REQUIRED COMPONENTS
  actionlib
  actionlib_msgs
  controller_interface
  controller_manager
  franka_hw
  franka_msgs
  dynamic_reconfigure
  geometry_msgs
  message_generation
  pluginlib
  realtime_tools
  roscpp
  sensor_msgs
  tf
  tf2_msgs
)

find_package(Franka 0.5.0 REQUIRED)

generate_dynamic_reconfigure_options(
  cfg/reflex_handler_params.cfg
)

catkin_package(
  INCLUDE_DIRS include
  LIBRARIES reflex_handler
  CATKIN_DEPENDS
    actionlib
    controller_interface
    franka_hw
    franka_msgs
    geometry_msgs
    message_runtime
    pluginlib
    realtime_tools
    roscpp
  DEPENDS Franka
)

## reflex_handler_node
add_executable(reflex_handler_node
 src/reflex_handler.cpp)

add_dependencies(reflex_handler_node
  ${${PROJECT_NAME}_EXPORTED_TARGETS}
  ${catkin_EXPORTED_TARGETS}
)

target_link_libraries(reflex_handler_node
  ${Franka_LIBRARIES}
  ${catkin_LIBRARIES}
)

target_include_directories(reflex_handler_node SYSTEM PUBLIC
  ${Franka_INCLUDE_DIRS}
  ${catkin_INCLUDE_DIRS}
)

## Installation
install(TARGETS reflex_handler_node
  ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)
install(DIRECTORY include/${PROJECT_NAME}/
  DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
)
install(DIRECTORY launch
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
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
  add_format_target(reflex_handler FILES ${SOURCES} ${HEADERS})
  add_tidy_target(reflex_handler
    FILES ${SOURCES}
    DEPENDS reflex_handler_node
  )
endif()
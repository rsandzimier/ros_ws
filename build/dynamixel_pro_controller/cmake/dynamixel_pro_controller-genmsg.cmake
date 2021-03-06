# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "dynamixel_pro_controller: 4 messages, 0 services")

set(MSG_I_FLAGS "-Idynamixel_pro_controller:/home/dlab/ros_ws/src/dynamixel_pro_controller/msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(dynamixel_pro_controller_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/ChainEnable.msg" NAME_WE)
add_custom_target(_dynamixel_pro_controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dynamixel_pro_controller" "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/ChainEnable.msg" "dynamixel_pro_controller/JointEnable"
)

get_filename_component(_filename "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/JointLimits.msg" NAME_WE)
add_custom_target(_dynamixel_pro_controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dynamixel_pro_controller" "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/JointLimits.msg" ""
)

get_filename_component(_filename "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/ChainLimits.msg" NAME_WE)
add_custom_target(_dynamixel_pro_controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dynamixel_pro_controller" "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/ChainLimits.msg" "dynamixel_pro_controller/JointLimits"
)

get_filename_component(_filename "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/JointEnable.msg" NAME_WE)
add_custom_target(_dynamixel_pro_controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dynamixel_pro_controller" "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/JointEnable.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(dynamixel_pro_controller
  "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/ChainEnable.msg"
  "${MSG_I_FLAGS}"
  "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/JointEnable.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dynamixel_pro_controller
)
_generate_msg_cpp(dynamixel_pro_controller
  "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/JointLimits.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dynamixel_pro_controller
)
_generate_msg_cpp(dynamixel_pro_controller
  "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/ChainLimits.msg"
  "${MSG_I_FLAGS}"
  "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/JointLimits.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dynamixel_pro_controller
)
_generate_msg_cpp(dynamixel_pro_controller
  "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/JointEnable.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dynamixel_pro_controller
)

### Generating Services

### Generating Module File
_generate_module_cpp(dynamixel_pro_controller
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dynamixel_pro_controller
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(dynamixel_pro_controller_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(dynamixel_pro_controller_generate_messages dynamixel_pro_controller_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/ChainEnable.msg" NAME_WE)
add_dependencies(dynamixel_pro_controller_generate_messages_cpp _dynamixel_pro_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/JointLimits.msg" NAME_WE)
add_dependencies(dynamixel_pro_controller_generate_messages_cpp _dynamixel_pro_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/ChainLimits.msg" NAME_WE)
add_dependencies(dynamixel_pro_controller_generate_messages_cpp _dynamixel_pro_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/JointEnable.msg" NAME_WE)
add_dependencies(dynamixel_pro_controller_generate_messages_cpp _dynamixel_pro_controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dynamixel_pro_controller_gencpp)
add_dependencies(dynamixel_pro_controller_gencpp dynamixel_pro_controller_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dynamixel_pro_controller_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(dynamixel_pro_controller
  "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/ChainEnable.msg"
  "${MSG_I_FLAGS}"
  "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/JointEnable.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dynamixel_pro_controller
)
_generate_msg_eus(dynamixel_pro_controller
  "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/JointLimits.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dynamixel_pro_controller
)
_generate_msg_eus(dynamixel_pro_controller
  "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/ChainLimits.msg"
  "${MSG_I_FLAGS}"
  "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/JointLimits.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dynamixel_pro_controller
)
_generate_msg_eus(dynamixel_pro_controller
  "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/JointEnable.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dynamixel_pro_controller
)

### Generating Services

### Generating Module File
_generate_module_eus(dynamixel_pro_controller
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dynamixel_pro_controller
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(dynamixel_pro_controller_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(dynamixel_pro_controller_generate_messages dynamixel_pro_controller_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/ChainEnable.msg" NAME_WE)
add_dependencies(dynamixel_pro_controller_generate_messages_eus _dynamixel_pro_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/JointLimits.msg" NAME_WE)
add_dependencies(dynamixel_pro_controller_generate_messages_eus _dynamixel_pro_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/ChainLimits.msg" NAME_WE)
add_dependencies(dynamixel_pro_controller_generate_messages_eus _dynamixel_pro_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/JointEnable.msg" NAME_WE)
add_dependencies(dynamixel_pro_controller_generate_messages_eus _dynamixel_pro_controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dynamixel_pro_controller_geneus)
add_dependencies(dynamixel_pro_controller_geneus dynamixel_pro_controller_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dynamixel_pro_controller_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(dynamixel_pro_controller
  "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/ChainEnable.msg"
  "${MSG_I_FLAGS}"
  "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/JointEnable.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dynamixel_pro_controller
)
_generate_msg_lisp(dynamixel_pro_controller
  "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/JointLimits.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dynamixel_pro_controller
)
_generate_msg_lisp(dynamixel_pro_controller
  "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/ChainLimits.msg"
  "${MSG_I_FLAGS}"
  "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/JointLimits.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dynamixel_pro_controller
)
_generate_msg_lisp(dynamixel_pro_controller
  "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/JointEnable.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dynamixel_pro_controller
)

### Generating Services

### Generating Module File
_generate_module_lisp(dynamixel_pro_controller
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dynamixel_pro_controller
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(dynamixel_pro_controller_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(dynamixel_pro_controller_generate_messages dynamixel_pro_controller_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/ChainEnable.msg" NAME_WE)
add_dependencies(dynamixel_pro_controller_generate_messages_lisp _dynamixel_pro_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/JointLimits.msg" NAME_WE)
add_dependencies(dynamixel_pro_controller_generate_messages_lisp _dynamixel_pro_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/ChainLimits.msg" NAME_WE)
add_dependencies(dynamixel_pro_controller_generate_messages_lisp _dynamixel_pro_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/JointEnable.msg" NAME_WE)
add_dependencies(dynamixel_pro_controller_generate_messages_lisp _dynamixel_pro_controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dynamixel_pro_controller_genlisp)
add_dependencies(dynamixel_pro_controller_genlisp dynamixel_pro_controller_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dynamixel_pro_controller_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(dynamixel_pro_controller
  "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/ChainEnable.msg"
  "${MSG_I_FLAGS}"
  "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/JointEnable.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dynamixel_pro_controller
)
_generate_msg_nodejs(dynamixel_pro_controller
  "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/JointLimits.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dynamixel_pro_controller
)
_generate_msg_nodejs(dynamixel_pro_controller
  "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/ChainLimits.msg"
  "${MSG_I_FLAGS}"
  "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/JointLimits.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dynamixel_pro_controller
)
_generate_msg_nodejs(dynamixel_pro_controller
  "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/JointEnable.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dynamixel_pro_controller
)

### Generating Services

### Generating Module File
_generate_module_nodejs(dynamixel_pro_controller
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dynamixel_pro_controller
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(dynamixel_pro_controller_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(dynamixel_pro_controller_generate_messages dynamixel_pro_controller_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/ChainEnable.msg" NAME_WE)
add_dependencies(dynamixel_pro_controller_generate_messages_nodejs _dynamixel_pro_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/JointLimits.msg" NAME_WE)
add_dependencies(dynamixel_pro_controller_generate_messages_nodejs _dynamixel_pro_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/ChainLimits.msg" NAME_WE)
add_dependencies(dynamixel_pro_controller_generate_messages_nodejs _dynamixel_pro_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/JointEnable.msg" NAME_WE)
add_dependencies(dynamixel_pro_controller_generate_messages_nodejs _dynamixel_pro_controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dynamixel_pro_controller_gennodejs)
add_dependencies(dynamixel_pro_controller_gennodejs dynamixel_pro_controller_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dynamixel_pro_controller_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(dynamixel_pro_controller
  "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/ChainEnable.msg"
  "${MSG_I_FLAGS}"
  "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/JointEnable.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dynamixel_pro_controller
)
_generate_msg_py(dynamixel_pro_controller
  "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/JointLimits.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dynamixel_pro_controller
)
_generate_msg_py(dynamixel_pro_controller
  "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/ChainLimits.msg"
  "${MSG_I_FLAGS}"
  "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/JointLimits.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dynamixel_pro_controller
)
_generate_msg_py(dynamixel_pro_controller
  "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/JointEnable.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dynamixel_pro_controller
)

### Generating Services

### Generating Module File
_generate_module_py(dynamixel_pro_controller
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dynamixel_pro_controller
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(dynamixel_pro_controller_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(dynamixel_pro_controller_generate_messages dynamixel_pro_controller_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/ChainEnable.msg" NAME_WE)
add_dependencies(dynamixel_pro_controller_generate_messages_py _dynamixel_pro_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/JointLimits.msg" NAME_WE)
add_dependencies(dynamixel_pro_controller_generate_messages_py _dynamixel_pro_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/ChainLimits.msg" NAME_WE)
add_dependencies(dynamixel_pro_controller_generate_messages_py _dynamixel_pro_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/JointEnable.msg" NAME_WE)
add_dependencies(dynamixel_pro_controller_generate_messages_py _dynamixel_pro_controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dynamixel_pro_controller_genpy)
add_dependencies(dynamixel_pro_controller_genpy dynamixel_pro_controller_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dynamixel_pro_controller_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dynamixel_pro_controller)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dynamixel_pro_controller
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(dynamixel_pro_controller_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(dynamixel_pro_controller_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(dynamixel_pro_controller_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dynamixel_pro_controller)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dynamixel_pro_controller
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(dynamixel_pro_controller_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(dynamixel_pro_controller_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(dynamixel_pro_controller_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dynamixel_pro_controller)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dynamixel_pro_controller
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(dynamixel_pro_controller_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(dynamixel_pro_controller_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(dynamixel_pro_controller_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dynamixel_pro_controller)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dynamixel_pro_controller
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(dynamixel_pro_controller_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(dynamixel_pro_controller_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(dynamixel_pro_controller_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dynamixel_pro_controller)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dynamixel_pro_controller\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dynamixel_pro_controller
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(dynamixel_pro_controller_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(dynamixel_pro_controller_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(dynamixel_pro_controller_generate_messages_py geometry_msgs_generate_messages_py)
endif()

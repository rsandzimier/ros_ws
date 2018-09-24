# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "um7: 0 messages, 1 services")

set(MSG_I_FLAGS "")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(um7_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/dlab/ros_ws/src/um7/srv/Reset.srv" NAME_WE)
add_custom_target(_um7_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "um7" "/home/dlab/ros_ws/src/um7/srv/Reset.srv" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(um7
  "/home/dlab/ros_ws/src/um7/srv/Reset.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/um7
)

### Generating Module File
_generate_module_cpp(um7
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/um7
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(um7_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(um7_generate_messages um7_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dlab/ros_ws/src/um7/srv/Reset.srv" NAME_WE)
add_dependencies(um7_generate_messages_cpp _um7_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(um7_gencpp)
add_dependencies(um7_gencpp um7_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS um7_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(um7
  "/home/dlab/ros_ws/src/um7/srv/Reset.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/um7
)

### Generating Module File
_generate_module_lisp(um7
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/um7
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(um7_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(um7_generate_messages um7_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dlab/ros_ws/src/um7/srv/Reset.srv" NAME_WE)
add_dependencies(um7_generate_messages_lisp _um7_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(um7_genlisp)
add_dependencies(um7_genlisp um7_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS um7_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(um7
  "/home/dlab/ros_ws/src/um7/srv/Reset.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/um7
)

### Generating Module File
_generate_module_py(um7
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/um7
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(um7_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(um7_generate_messages um7_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dlab/ros_ws/src/um7/srv/Reset.srv" NAME_WE)
add_dependencies(um7_generate_messages_py _um7_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(um7_genpy)
add_dependencies(um7_genpy um7_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS um7_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/um7)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/um7
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/um7)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/um7
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/um7)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/um7\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/um7
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()

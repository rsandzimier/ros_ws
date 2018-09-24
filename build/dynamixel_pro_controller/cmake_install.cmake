# Install script for directory: /home/dlab/ros_ws/src/dynamixel_pro_controller

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/dlab/ros_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dynamixel_pro_controller/msg" TYPE FILE FILES
    "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/JointEnable.msg"
    "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/ChainEnable.msg"
    "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/JointLimits.msg"
    "/home/dlab/ros_ws/src/dynamixel_pro_controller/msg/ChainLimits.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dynamixel_pro_controller/cmake" TYPE FILE FILES "/home/dlab/ros_ws/build/dynamixel_pro_controller/catkin_generated/installspace/dynamixel_pro_controller-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/dlab/ros_ws/devel/include/dynamixel_pro_controller")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/dlab/ros_ws/devel/share/common-lisp/ros/dynamixel_pro_controller")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/dlab/ros_ws/devel/lib/python2.7/dist-packages/dynamixel_pro_controller")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/dlab/ros_ws/devel/lib/python2.7/dist-packages/dynamixel_pro_controller")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/dlab/ros_ws/build/dynamixel_pro_controller/catkin_generated/installspace/dynamixel_pro_controller.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dynamixel_pro_controller/cmake" TYPE FILE FILES "/home/dlab/ros_ws/build/dynamixel_pro_controller/catkin_generated/installspace/dynamixel_pro_controller-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dynamixel_pro_controller/cmake" TYPE FILE FILES
    "/home/dlab/ros_ws/build/dynamixel_pro_controller/catkin_generated/installspace/dynamixel_pro_controllerConfig.cmake"
    "/home/dlab/ros_ws/build/dynamixel_pro_controller/catkin_generated/installspace/dynamixel_pro_controllerConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dynamixel_pro_controller" TYPE FILE FILES "/home/dlab/ros_ws/src/dynamixel_pro_controller/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/dynamixel_pro_controller/dynamixel_pro_controller_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/dynamixel_pro_controller/dynamixel_pro_controller_node")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/dynamixel_pro_controller/dynamixel_pro_controller_node"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/dynamixel_pro_controller" TYPE EXECUTABLE FILES "/home/dlab/ros_ws/devel/lib/dynamixel_pro_controller/dynamixel_pro_controller_node")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/dynamixel_pro_controller/dynamixel_pro_controller_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/dynamixel_pro_controller/dynamixel_pro_controller_node")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/dynamixel_pro_controller/dynamixel_pro_controller_node"
         OLD_RPATH "/home/dlab/ros_ws/devel/lib:/home/dlab/ros_catkin_ws/devel_isolated/roscpp/lib:/home/dlab/ros_catkin_ws/devel_isolated/rosconsole/lib:/home/dlab/ros_catkin_ws/devel_isolated/xmlrpcpp/lib:/home/dlab/ros_catkin_ws/devel_isolated/roslib/lib:/home/dlab/ros_catkin_ws/devel_isolated/rospack/lib:/home/dlab/ros_catkin_ws/devel_isolated/roscpp_serialization/lib:/home/dlab/ros_catkin_ws/devel_isolated/rostime/lib:/home/dlab/ros_catkin_ws/devel_isolated/cpp_common/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/dynamixel_pro_controller/dynamixel_pro_controller_node")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dynamixel_pro_controller" TYPE DIRECTORY FILES "/home/dlab/ros_ws/src/dynamixel_pro_controller/config")
endif()


# Install script for directory: /home/dlab/ros_ws/src/exp_excavator

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/exp_excavator/msg" TYPE FILE FILES
    "/home/dlab/ros_ws/src/exp_excavator/msg/PowerMachine.msg"
    "/home/dlab/ros_ws/src/exp_excavator/msg/PowerBucket.msg"
    "/home/dlab/ros_ws/src/exp_excavator/msg/JointValues.msg"
    "/home/dlab/ros_ws/src/exp_excavator/msg/JointCommandDynamixel.msg"
    "/home/dlab/ros_ws/src/exp_excavator/msg/JointCommandArduino.msg"
    "/home/dlab/ros_ws/src/exp_excavator/msg/JointCalibration.msg"
    "/home/dlab/ros_ws/src/exp_excavator/msg/JointStateMachineArduino.msg"
    "/home/dlab/ros_ws/src/exp_excavator/msg/Jacobian.msg"
    "/home/dlab/ros_ws/src/exp_excavator/msg/ForceWorld.msg"
    "/home/dlab/ros_ws/src/exp_excavator/msg/StatePing.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/exp_excavator/cmake" TYPE FILE FILES "/home/dlab/ros_ws/build/exp_excavator/catkin_generated/installspace/exp_excavator-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/dlab/ros_ws/devel/include/exp_excavator")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/dlab/ros_ws/devel/share/common-lisp/ros/exp_excavator")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/dlab/ros_ws/devel/lib/python2.7/dist-packages/exp_excavator")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/dlab/ros_ws/devel/lib/python2.7/dist-packages/exp_excavator")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/dlab/ros_ws/build/exp_excavator/catkin_generated/installspace/exp_excavator.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/exp_excavator/cmake" TYPE FILE FILES "/home/dlab/ros_ws/build/exp_excavator/catkin_generated/installspace/exp_excavator-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/exp_excavator/cmake" TYPE FILE FILES
    "/home/dlab/ros_ws/build/exp_excavator/catkin_generated/installspace/exp_excavatorConfig.cmake"
    "/home/dlab/ros_ws/build/exp_excavator/catkin_generated/installspace/exp_excavatorConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/exp_excavator" TYPE FILE FILES "/home/dlab/ros_ws/src/exp_excavator/package.xml")
endif()


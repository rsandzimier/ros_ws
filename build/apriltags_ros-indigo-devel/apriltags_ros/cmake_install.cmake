# Install script for directory: /home/dlab/ros_ws/src/apriltags_ros-indigo-devel/apriltags_ros

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/apriltags_ros/msg" TYPE FILE FILES
    "/home/dlab/ros_ws/src/apriltags_ros-indigo-devel/apriltags_ros/msg/AprilTagDetection.msg"
    "/home/dlab/ros_ws/src/apriltags_ros-indigo-devel/apriltags_ros/msg/AprilTagDetectionArray.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/apriltags_ros/cmake" TYPE FILE FILES "/home/dlab/ros_ws/build/apriltags_ros-indigo-devel/apriltags_ros/catkin_generated/installspace/apriltags_ros-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/dlab/ros_ws/devel/include/apriltags_ros")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/dlab/ros_ws/devel/share/common-lisp/ros/apriltags_ros")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/dlab/ros_ws/devel/lib/python2.7/dist-packages/apriltags_ros")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/dlab/ros_ws/devel/lib/python2.7/dist-packages/apriltags_ros")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/dlab/ros_ws/build/apriltags_ros-indigo-devel/apriltags_ros/catkin_generated/installspace/apriltags_ros.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/apriltags_ros/cmake" TYPE FILE FILES "/home/dlab/ros_ws/build/apriltags_ros-indigo-devel/apriltags_ros/catkin_generated/installspace/apriltags_ros-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/apriltags_ros/cmake" TYPE FILE FILES
    "/home/dlab/ros_ws/build/apriltags_ros-indigo-devel/apriltags_ros/catkin_generated/installspace/apriltags_rosConfig.cmake"
    "/home/dlab/ros_ws/build/apriltags_ros-indigo-devel/apriltags_ros/catkin_generated/installspace/apriltags_rosConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/apriltags_ros" TYPE FILE FILES "/home/dlab/ros_ws/src/apriltags_ros-indigo-devel/apriltags_ros/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libapriltag_detector.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libapriltag_detector.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libapriltag_detector.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/dlab/ros_ws/devel/lib/libapriltag_detector.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libapriltag_detector.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libapriltag_detector.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libapriltag_detector.so"
         OLD_RPATH "/home/dlab/ros_ws/devel/lib:/home/dlab/ros_catkin_ws/devel_isolated/image_transport/lib:/home/dlab/ros_catkin_ws/devel_isolated/tf/lib:/home/dlab/ros_catkin_ws/devel_isolated/tf2_ros/lib:/home/dlab/ros_catkin_ws/devel_isolated/actionlib/lib:/home/dlab/ros_catkin_ws/devel_isolated/message_filters/lib:/home/dlab/ros_catkin_ws/devel_isolated/tf2/lib:/home/dlab/ros_catkin_ws/devel_isolated/cv_bridge/lib:/home/dlab/ros_catkin_ws/devel_isolated/nodelet/lib:/home/dlab/ros_catkin_ws/devel_isolated/bondcpp/lib:/home/dlab/ros_catkin_ws/devel_isolated/class_loader/lib:/home/dlab/ros_catkin_ws/devel_isolated/roslib/lib:/home/dlab/ros_catkin_ws/devel_isolated/rospack/lib:/home/dlab/ros_catkin_ws/devel_isolated/roscpp/lib:/home/dlab/ros_catkin_ws/devel_isolated/rosconsole/lib:/home/dlab/ros_catkin_ws/devel_isolated/xmlrpcpp/lib:/home/dlab/ros_catkin_ws/devel_isolated/roscpp_serialization/lib:/home/dlab/ros_catkin_ws/devel_isolated/rostime/lib:/home/dlab/ros_catkin_ws/devel_isolated/cpp_common/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libapriltag_detector.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libapriltag_detector_nodelet.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libapriltag_detector_nodelet.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libapriltag_detector_nodelet.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/dlab/ros_ws/devel/lib/libapriltag_detector_nodelet.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libapriltag_detector_nodelet.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libapriltag_detector_nodelet.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libapriltag_detector_nodelet.so"
         OLD_RPATH "/home/dlab/ros_catkin_ws/devel_isolated/image_transport/lib:/home/dlab/ros_catkin_ws/devel_isolated/tf/lib:/home/dlab/ros_catkin_ws/devel_isolated/tf2_ros/lib:/home/dlab/ros_catkin_ws/devel_isolated/actionlib/lib:/home/dlab/ros_catkin_ws/devel_isolated/message_filters/lib:/home/dlab/ros_catkin_ws/devel_isolated/tf2/lib:/home/dlab/ros_catkin_ws/devel_isolated/cv_bridge/lib:/home/dlab/ros_catkin_ws/devel_isolated/nodelet/lib:/home/dlab/ros_catkin_ws/devel_isolated/bondcpp/lib:/home/dlab/ros_catkin_ws/devel_isolated/class_loader/lib:/home/dlab/ros_catkin_ws/devel_isolated/roslib/lib:/home/dlab/ros_catkin_ws/devel_isolated/rospack/lib:/home/dlab/ros_catkin_ws/devel_isolated/roscpp/lib:/home/dlab/ros_catkin_ws/devel_isolated/rosconsole/lib:/home/dlab/ros_catkin_ws/devel_isolated/xmlrpcpp/lib:/home/dlab/ros_catkin_ws/devel_isolated/roscpp_serialization/lib:/home/dlab/ros_catkin_ws/devel_isolated/rostime/lib:/home/dlab/ros_catkin_ws/devel_isolated/cpp_common/lib:/home/dlab/ros_ws/devel/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libapriltag_detector_nodelet.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/apriltags_ros/apriltag_detector_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/apriltags_ros/apriltag_detector_node")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/apriltags_ros/apriltag_detector_node"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/apriltags_ros" TYPE EXECUTABLE FILES "/home/dlab/ros_ws/devel/lib/apriltags_ros/apriltag_detector_node")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/apriltags_ros/apriltag_detector_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/apriltags_ros/apriltag_detector_node")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/apriltags_ros/apriltag_detector_node"
         OLD_RPATH "/home/dlab/ros_catkin_ws/devel_isolated/image_transport/lib:/home/dlab/ros_catkin_ws/devel_isolated/tf/lib:/home/dlab/ros_catkin_ws/devel_isolated/tf2_ros/lib:/home/dlab/ros_catkin_ws/devel_isolated/actionlib/lib:/home/dlab/ros_catkin_ws/devel_isolated/message_filters/lib:/home/dlab/ros_catkin_ws/devel_isolated/tf2/lib:/home/dlab/ros_catkin_ws/devel_isolated/cv_bridge/lib:/home/dlab/ros_catkin_ws/devel_isolated/nodelet/lib:/home/dlab/ros_catkin_ws/devel_isolated/bondcpp/lib:/home/dlab/ros_catkin_ws/devel_isolated/class_loader/lib:/home/dlab/ros_catkin_ws/devel_isolated/roslib/lib:/home/dlab/ros_catkin_ws/devel_isolated/rospack/lib:/home/dlab/ros_catkin_ws/devel_isolated/roscpp/lib:/home/dlab/ros_catkin_ws/devel_isolated/rosconsole/lib:/home/dlab/ros_catkin_ws/devel_isolated/xmlrpcpp/lib:/home/dlab/ros_catkin_ws/devel_isolated/roscpp_serialization/lib:/home/dlab/ros_catkin_ws/devel_isolated/rostime/lib:/home/dlab/ros_catkin_ws/devel_isolated/cpp_common/lib:/home/dlab/ros_ws/devel/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/apriltags_ros/apriltag_detector_node")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/apriltags_ros" TYPE DIRECTORY FILES "/home/dlab/ros_ws/src/apriltags_ros-indigo-devel/apriltags_ros/include/apriltags_ros")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/apriltags_ros" TYPE FILE FILES "/home/dlab/ros_ws/src/apriltags_ros-indigo-devel/apriltags_ros/nodelet_plugins.xml")
endif()


# Install script for directory: /home/dlab/ros_ws/src/video_stream_opencv

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/dlab/ros_ws/build/video_stream_opencv/catkin_generated/installspace/video_stream_opencv.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/video_stream_opencv/cmake" TYPE FILE FILES
    "/home/dlab/ros_ws/build/video_stream_opencv/catkin_generated/installspace/video_stream_opencvConfig.cmake"
    "/home/dlab/ros_ws/build/video_stream_opencv/catkin_generated/installspace/video_stream_opencvConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/video_stream_opencv" TYPE FILE FILES "/home/dlab/ros_ws/src/video_stream_opencv/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/video_stream_opencv/video_stream" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/video_stream_opencv/video_stream")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/video_stream_opencv/video_stream"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/video_stream_opencv" TYPE EXECUTABLE FILES "/home/dlab/ros_ws/devel/lib/video_stream_opencv/video_stream")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/video_stream_opencv/video_stream" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/video_stream_opencv/video_stream")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/video_stream_opencv/video_stream"
         OLD_RPATH "/home/dlab/ros_catkin_ws/devel_isolated/cv_bridge/lib:/home/dlab/ros_catkin_ws/devel_isolated/image_transport/lib:/home/dlab/ros_catkin_ws/devel_isolated/message_filters/lib:/home/dlab/ros_catkin_ws/devel_isolated/class_loader/lib:/home/dlab/ros_catkin_ws/devel_isolated/roslib/lib:/home/dlab/ros_catkin_ws/devel_isolated/rospack/lib:/home/dlab/ros_catkin_ws/devel_isolated/camera_info_manager/lib:/home/dlab/ros_catkin_ws/devel_isolated/camera_calibration_parsers/lib:/home/dlab/ros_catkin_ws/devel_isolated/roscpp/lib:/home/dlab/ros_catkin_ws/devel_isolated/rosconsole/lib:/home/dlab/ros_catkin_ws/devel_isolated/xmlrpcpp/lib:/home/dlab/ros_catkin_ws/devel_isolated/roscpp_serialization/lib:/home/dlab/ros_catkin_ws/devel_isolated/rostime/lib:/home/dlab/ros_catkin_ws/devel_isolated/cpp_common/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/video_stream_opencv/video_stream")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/video_stream_opencv" TYPE PROGRAM FILES "/home/dlab/ros_ws/src/video_stream_opencv/scripts/test_video_resource.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/video_stream_opencv" TYPE DIRECTORY FILES "/home/dlab/ros_ws/src/video_stream_opencv/launch")
endif()


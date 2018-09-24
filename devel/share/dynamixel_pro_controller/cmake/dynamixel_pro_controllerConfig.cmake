# generated from catkin/cmake/template/pkgConfig.cmake.in

# append elements to a list and remove existing duplicates from the list
# copied from catkin/cmake/list_append_deduplicate.cmake to keep pkgConfig
# self contained
macro(_list_append_deduplicate listname)
  if(NOT "${ARGN}" STREQUAL "")
    if(${listname})
      list(REMOVE_ITEM ${listname} ${ARGN})
    endif()
    list(APPEND ${listname} ${ARGN})
  endif()
endmacro()

# append elements to a list if they are not already in the list
# copied from catkin/cmake/list_append_unique.cmake to keep pkgConfig
# self contained
macro(_list_append_unique listname)
  foreach(_item ${ARGN})
    list(FIND ${listname} ${_item} _index)
    if(_index EQUAL -1)
      list(APPEND ${listname} ${_item})
    endif()
  endforeach()
endmacro()

# pack a list of libraries with optional build configuration keywords
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_pack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  set(_argn ${ARGN})
  list(LENGTH _argn _count)
  set(_index 0)
  while(${_index} LESS ${_count})
    list(GET _argn ${_index} lib)
    if("${lib}" MATCHES "^(debug|optimized|general)$")
      math(EXPR _index "${_index} + 1")
      if(${_index} EQUAL ${_count})
        message(FATAL_ERROR "_pack_libraries_with_build_configuration() the list of libraries '${ARGN}' ends with '${lib}' which is a build configuration keyword and must be followed by a library")
      endif()
      list(GET _argn ${_index} library)
      list(APPEND ${VAR} "${lib}${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}${library}")
    else()
      list(APPEND ${VAR} "${lib}")
    endif()
    math(EXPR _index "${_index} + 1")
  endwhile()
endmacro()

# unpack a list of libraries with optional build configuration keyword prefixes
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_unpack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  foreach(lib ${ARGN})
    string(REGEX REPLACE "^(debug|optimized|general)${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}(.+)$" "\\1;\\2" lib "${lib}")
    list(APPEND ${VAR} "${lib}")
  endforeach()
endmacro()


if(dynamixel_pro_controller_CONFIG_INCLUDED)
  return()
endif()
set(dynamixel_pro_controller_CONFIG_INCLUDED TRUE)

# set variables for source/devel/install prefixes
if("TRUE" STREQUAL "TRUE")
  set(dynamixel_pro_controller_SOURCE_PREFIX /home/dlab/ros_ws/src/dynamixel_pro_controller)
  set(dynamixel_pro_controller_DEVEL_PREFIX /home/dlab/ros_ws/devel)
  set(dynamixel_pro_controller_INSTALL_PREFIX "")
  set(dynamixel_pro_controller_PREFIX ${dynamixel_pro_controller_DEVEL_PREFIX})
else()
  set(dynamixel_pro_controller_SOURCE_PREFIX "")
  set(dynamixel_pro_controller_DEVEL_PREFIX "")
  set(dynamixel_pro_controller_INSTALL_PREFIX /home/dlab/ros_ws/install)
  set(dynamixel_pro_controller_PREFIX ${dynamixel_pro_controller_INSTALL_PREFIX})
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "WARNING: package 'dynamixel_pro_controller' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  message("${_msg}")
endif()

# flag project as catkin-based to distinguish if a find_package()-ed project is a catkin project
set(dynamixel_pro_controller_FOUND_CATKIN_PROJECT TRUE)

if(NOT "/home/dlab/ros_ws/devel/include;/home/dlab/ros_ws/src/dynamixel_pro_controller/include " STREQUAL " ")
  set(dynamixel_pro_controller_INCLUDE_DIRS "")
  set(_include_dirs "/home/dlab/ros_ws/devel/include;/home/dlab/ros_ws/src/dynamixel_pro_controller/include")
  foreach(idir ${_include_dirs})
    if(IS_ABSOLUTE ${idir} AND IS_DIRECTORY ${idir})
      set(include ${idir})
    elseif("${idir} " STREQUAL "include ")
      get_filename_component(include "${dynamixel_pro_controller_DIR}/../../../include" ABSOLUTE)
      if(NOT IS_DIRECTORY ${include})
        message(FATAL_ERROR "Project 'dynamixel_pro_controller' specifies '${idir}' as an include dir, which is not found.  It does not exist in '${include}'.  Ask the maintainer 'Brian Axelrod <baxelrod.rosmaint@mit.edu>' to fix it.")
      endif()
    else()
      message(FATAL_ERROR "Project 'dynamixel_pro_controller' specifies '${idir}' as an include dir, which is not found.  It does neither exist as an absolute directory nor in '/home/dlab/ros_ws/src/dynamixel_pro_controller/${idir}'.  Ask the maintainer 'Brian Axelrod <baxelrod.rosmaint@mit.edu>' to fix it.")
    endif()
    _list_append_unique(dynamixel_pro_controller_INCLUDE_DIRS ${include})
  endforeach()
endif()

set(libraries "")
foreach(library ${libraries})
  # keep build configuration keywords, target names and absolute libraries as-is
  if("${library}" MATCHES "^(debug|optimized|general)$")
    list(APPEND dynamixel_pro_controller_LIBRARIES ${library})
  elseif(TARGET ${library})
    list(APPEND dynamixel_pro_controller_LIBRARIES ${library})
  elseif(IS_ABSOLUTE ${library})
    list(APPEND dynamixel_pro_controller_LIBRARIES ${library})
  else()
    set(lib_path "")
    set(lib "${library}-NOTFOUND")
    # since the path where the library is found is returned we have to iterate over the paths manually
    foreach(path /home/dlab/ros_ws/devel/lib;/home/dlab/ros_catkin_ws/devel_isolated/rosserial_windows/lib;/home/dlab/ros_catkin_ws/devel_isolated/rosserial_embeddedlinux/lib;/home/dlab/ros_catkin_ws/devel_isolated/rosserial_server/lib;/home/dlab/ros_catkin_ws/devel_isolated/rosserial_xbee/lib;/home/dlab/ros_catkin_ws/devel_isolated/rosserial_python/lib;/home/dlab/ros_catkin_ws/devel_isolated/rosserial_msgs/lib;/home/dlab/ros_catkin_ws/devel_isolated/rosserial_client/lib;/home/dlab/ros_catkin_ws/devel_isolated/rosserial_arduino/lib;/home/dlab/ros_ws/devel/lib;/home/dlab/ros_catkin_ws/devel_isolated/xacro/lib;/home/dlab/ros_catkin_ws/devel_isolated/visualization_marker_tutorials/lib;/home/dlab/ros_catkin_ws/devel_isolated/urdf_tutorial/lib;/home/dlab/ros_catkin_ws/devel_isolated/rviz_python_tutorial/lib;/home/dlab/ros_catkin_ws/devel_isolated/rviz_plugin_tutorials/lib;/home/dlab/ros_catkin_ws/devel_isolated/rqt_rviz/lib;/home/dlab/ros_catkin_ws/devel_isolated/librviz_tutorial/lib;/home/dlab/ros_catkin_ws/devel_isolated/rviz/lib;/home/dlab/ros_catkin_ws/devel_isolated/robot_state_publisher/lib;/home/dlab/ros_catkin_ws/devel_isolated/kdl_parser/lib;/home/dlab/ros_catkin_ws/devel_isolated/joint_limits_interface/lib;/home/dlab/ros_catkin_ws/devel_isolated/gazebo_plugins/lib;/home/dlab/ros_catkin_ws/devel_isolated/collada_urdf/lib;/home/dlab/ros_catkin_ws/devel_isolated/collada_parser/lib;/home/dlab/ros_catkin_ws/devel_isolated/urdf/lib;/home/dlab/ros_catkin_ws/devel_isolated/turtle_tf2/lib;/home/dlab/ros_catkin_ws/devel_isolated/turtle_tf/lib;/home/dlab/ros_catkin_ws/devel_isolated/turtle_actionlib/lib;/home/dlab/ros_catkin_ws/devel_isolated/turtlesim/lib;/home/dlab/ros_catkin_ws/devel_isolated/transmission_interface/lib;/home/dlab/ros_catkin_ws/devel_isolated/theora_image_transport/lib;/home/dlab/ros_catkin_ws/devel_isolated/tf_conversions/lib;/home/dlab/ros_catkin_ws/devel_isolated/pointcloud_to_laserscan/lib;/home/dlab/ros_catkin_ws/devel_isolated/tf2_sensor_msgs/lib;/home/dlab/ros_catkin_ws/devel_isolated/tf2_kdl/lib;/home/dlab/ros_catkin_ws/devel_isolated/image_rotate/lib;/home/dlab/ros_catkin_ws/devel_isolated/tf2_geometry_msgs/lib;/home/dlab/ros_catkin_ws/devel_isolated/stage_ros/lib;/home/dlab/ros_catkin_ws/devel_isolated/pcl_ros/lib;/home/dlab/ros_catkin_ws/devel_isolated/laser_filters/lib;/home/dlab/ros_catkin_ws/devel_isolated/laser_assembler/lib;/home/dlab/ros_catkin_ws/devel_isolated/laser_geometry/lib;/home/dlab/ros_catkin_ws/devel_isolated/interactive_marker_tutorials/lib;/home/dlab/ros_catkin_ws/devel_isolated/interactive_markers/lib;/home/dlab/ros_catkin_ws/devel_isolated/gazebo_ros/lib;/home/dlab/ros_catkin_ws/devel_isolated/tf/lib;/home/dlab/ros_catkin_ws/devel_isolated/depth_image_proc/lib;/home/dlab/ros_catkin_ws/devel_isolated/tf2_ros/lib;/home/dlab/ros_catkin_ws/devel_isolated/stereo_image_proc/lib;/home/dlab/ros_catkin_ws/devel_isolated/rqt_launch/lib;/home/dlab/ros_catkin_ws/devel_isolated/image_proc/lib;/home/dlab/ros_catkin_ws/devel_isolated/nodelet_topic_tools/lib;/home/dlab/ros_catkin_ws/devel_isolated/joy/lib;/home/dlab/ros_catkin_ws/devel_isolated/image_view/lib;/home/dlab/ros_catkin_ws/devel_isolated/image_publisher/lib;/home/dlab/ros_catkin_ws/devel_isolated/driver_base/lib;/home/dlab/ros_catkin_ws/devel_isolated/diagnostic_analysis/lib;/home/dlab/ros_catkin_ws/devel_isolated/controller_manager_tests/lib;/home/dlab/ros_catkin_ws/devel_isolated/control_toolbox/lib;/home/dlab/ros_catkin_ws/devel_isolated/compressed_image_transport/lib;/home/dlab/ros_catkin_ws/devel_isolated/compressed_depth_image_transport/lib;/home/dlab/ros_catkin_ws/devel_isolated/actionlib_tutorials/lib;/home/dlab/ros_catkin_ws/devel_isolated/actionlib/lib;/home/dlab/ros_catkin_ws/devel_isolated/rosbag/lib;/home/dlab/ros_catkin_ws/devel_isolated/topic_tools/lib;/home/dlab/ros_catkin_ws/devel_isolated/tf2_py/lib;/home/dlab/ros_catkin_ws/devel_isolated/smach_ros/lib;/home/dlab/ros_catkin_ws/devel_isolated/self_test/lib;/home/dlab/ros_catkin_ws/devel_isolated/rqt_image_view/lib;/home/dlab/ros_catkin_ws/devel_isolated/rqt_gui_py/lib;/home/dlab/ros_catkin_ws/devel_isolated/rqt_gui_cpp/lib;/home/dlab/ros_catkin_ws/devel_isolated/rqt_controller_manager/lib;/home/dlab/ros_catkin_ws/devel_isolated/roswtf/lib;/home/dlab/ros_catkin_ws/devel_isolated/rostopic/lib;/home/dlab/ros_catkin_ws/devel_isolated/rospy_tutorials/lib;/home/dlab/ros_catkin_ws/devel_isolated/rosnode/lib;/home/dlab/ros_catkin_ws/devel_isolated/polled_camera/lib;/home/dlab/ros_catkin_ws/devel_isolated/camera_info_manager/lib;/home/dlab/ros_catkin_ws/devel_isolated/image_transport/lib;/home/dlab/ros_catkin_ws/devel_isolated/message_filters/lib;/home/dlab/ros_catkin_ws/devel_isolated/filters/lib;/home/dlab/ros_catkin_ws/devel_isolated/dynamic_reconfigure/lib;/home/dlab/ros_catkin_ws/devel_isolated/diagnostic_common_diagnostics/lib;/home/dlab/ros_catkin_ws/devel_isolated/diagnostic_updater/lib;/home/dlab/ros_catkin_ws/devel_isolated/diagnostic_aggregator/lib;/home/dlab/ros_catkin_ws/devel_isolated/cv_bridge/lib;/home/dlab/ros_catkin_ws/devel_isolated/controller_manager/lib;/home/dlab/ros_catkin_ws/devel_isolated/camera_calibration/lib;/home/dlab/ros_catkin_ws/devel_isolated/rosout/lib;/home/dlab/ros_catkin_ws/devel_isolated/roscpp_tutorials/lib;/home/dlab/ros_catkin_ws/devel_isolated/realtime_tools/lib;/home/dlab/ros_catkin_ws/devel_isolated/pluginlib_tutorials/lib;/home/dlab/ros_catkin_ws/devel_isolated/pcl_conversions/lib;/home/dlab/ros_catkin_ws/devel_isolated/nodelet_tutorial_math/lib;/home/dlab/ros_catkin_ws/devel_isolated/nodelet/lib;/home/dlab/ros_catkin_ws/devel_isolated/joint_state_publisher/lib;/home/dlab/ros_catkin_ws/devel_isolated/controller_interface/lib;/home/dlab/ros_catkin_ws/devel_isolated/hardware_interface/lib;/home/dlab/ros_catkin_ws/devel_isolated/camera_calibration_parsers/lib;/home/dlab/ros_catkin_ws/devel_isolated/bondpy/lib;/home/dlab/ros_catkin_ws/devel_isolated/bondcpp/lib;/home/dlab/ros_catkin_ws/devel_isolated/roscpp/lib;/home/dlab/ros_catkin_ws/devel_isolated/xmlrpcpp/lib;/home/dlab/ros_catkin_ws/devel_isolated/webkit_dependency/lib;/home/dlab/ros_catkin_ws/devel_isolated/viz/lib;/home/dlab/ros_catkin_ws/devel_isolated/visualization_tutorials/lib;/home/dlab/ros_catkin_ws/devel_isolated/geometric_shapes/lib;/home/dlab/ros_catkin_ws/devel_isolated/visualization_msgs/lib;/home/dlab/ros_catkin_ws/devel_isolated/vision_opencv/lib;/home/dlab/ros_catkin_ws/devel_isolated/urdf_parser_plugin/lib;/home/dlab/ros_catkin_ws/devel_isolated/gazebo_msgs/lib;/home/dlab/ros_catkin_ws/devel_isolated/control_msgs/lib;/home/dlab/ros_catkin_ws/devel_isolated/trajectory_msgs/lib;/home/dlab/ros_catkin_ws/devel_isolated/tf2/lib;/home/dlab/ros_catkin_ws/devel_isolated/tf2_msgs/lib;/home/dlab/ros_catkin_ws/devel_isolated/stereo_msgs/lib;/home/dlab/ros_catkin_ws/devel_isolated/std_srvs/lib;/home/dlab/ros_catkin_ws/devel_isolated/smach_msgs/lib;/home/dlab/ros_catkin_ws/devel_isolated/shape_msgs/lib;/home/dlab/ros_catkin_ws/devel_isolated/pcl_msgs/lib;/home/dlab/ros_catkin_ws/devel_isolated/map_msgs/lib;/home/dlab/ros_catkin_ws/devel_isolated/image_geometry/lib;/home/dlab/ros_catkin_ws/devel_isolated/sensor_msgs/lib;/home/dlab/ros_catkin_ws/devel_isolated/rqt_py_common/lib;/home/dlab/ros_catkin_ws/devel_isolated/rosgraph_msgs/lib;/home/dlab/ros_catkin_ws/devel_isolated/nav_msgs/lib;/home/dlab/ros_catkin_ws/devel_isolated/kdl_conversions/lib;/home/dlab/ros_catkin_ws/devel_isolated/eigen_conversions/lib;/home/dlab/ros_catkin_ws/devel_isolated/geometry_msgs/lib;/home/dlab/ros_catkin_ws/devel_isolated/diagnostic_msgs/lib;/home/dlab/ros_catkin_ws/devel_isolated/controller_manager_msgs/lib;/home/dlab/ros_catkin_ws/devel_isolated/bond/lib;/home/dlab/ros_catkin_ws/devel_isolated/actionlib_msgs/lib;/home/dlab/ros_catkin_ws/devel_isolated/std_msgs/lib;/home/dlab/ros_catkin_ws/devel_isolated/smclib/lib;/home/dlab/ros_catkin_ws/devel_isolated/smach/lib;/home/dlab/ros_catkin_ws/devel_isolated/simulators/lib;/home/dlab/ros_catkin_ws/devel_isolated/rqt_web/lib;/home/dlab/ros_catkin_ws/devel_isolated/rqt_topic/lib;/home/dlab/ros_catkin_ws/devel_isolated/rqt_top/lib;/home/dlab/ros_catkin_ws/devel_isolated/rqt_tf_tree/lib;/home/dlab/ros_catkin_ws/devel_isolated/rqt_srv/lib;/home/dlab/ros_catkin_ws/devel_isolated/rqt_shell/lib;/home/dlab/ros_catkin_ws/devel_isolated/rqt_service_caller/lib;/home/dlab/ros_catkin_ws/devel_isolated/rqt_runtime_monitor/lib;/home/dlab/ros_catkin_ws/devel_isolated/rqt_robot_steering/lib;/home/dlab/ros_catkin_ws/devel_isolated/rqt_robot_plugins/lib;/home/dlab/ros_catkin_ws/devel_isolated/rqt_robot_monitor/lib;/home/dlab/ros_catkin_ws/devel_isolated/rqt_robot_dashboard/lib;/home/dlab/ros_catkin_ws/devel_isolated/rqt_reconfigure/lib;/home/dlab/ros_catkin_ws/devel_isolated/rqt_py_console/lib;/home/dlab/ros_catkin_ws/devel_isolated/rqt_publisher/lib;/home/dlab/ros_catkin_ws/devel_isolated/rqt_pose_view/lib;/home/dlab/ros_catkin_ws/devel_isolated/rqt_plot/lib;/home/dlab/ros_catkin_ws/devel_isolated/rqt_nav_view/lib;/home/dlab/ros_catkin_ws/devel_isolated/rqt_msg/lib;/home/dlab/ros_catkin_ws/devel_isolated/rqt_moveit/lib;/home/dlab/ros_catkin_ws/devel_isolated/rqt_logger_level/lib;/home/dlab/ros_catkin_ws/devel_isolated/rqt_gui/lib;/home/dlab/ros_catkin_ws/devel_isolated/rqt_graph/lib;/home/dlab/ros_catkin_ws/devel_isolated/rqt_dep/lib;/home/dlab/ros_catkin_ws/devel_isolated/rqt_console/lib;/home/dlab/ros_catkin_ws/devel_isolated/rqt_common_plugins/lib;/home/dlab/ros_catkin_ws/devel_isolated/rqt_bag_plugins/lib;/home/dlab/ros_catkin_ws/devel_isolated/rqt_bag/lib;/home/dlab/ros_catkin_ws/devel_isolated/rqt_action/lib;/home/dlab/ros_catkin_ws/devel_isolated/rostest/lib;/home/dlab/ros_catkin_ws/devel_isolated/rosbag_storage/lib;/home/dlab/ros_catkin_ws/devel_isolated/roslz4/lib;/home/dlab/ros_catkin_ws/devel_isolated/rosconsole_bridge/lib;/home/dlab/ros_catkin_ws/devel_isolated/resource_retriever/lib;/home/dlab/ros_catkin_ws/devel_isolated/qt_gui_cpp/lib;/home/dlab/ros_catkin_ws/devel_isolated/pluginlib/lib;/home/dlab/ros_catkin_ws/devel_isolated/rosconsole/lib;/home/dlab/ros_catkin_ws/devel_isolated/angles/lib;/home/dlab/ros_catkin_ws/devel_isolated/rosunit/lib;/home/dlab/ros_catkin_ws/devel_isolated/roslaunch/lib;/home/dlab/ros_catkin_ws/devel_isolated/python_qt_binding/lib;/home/dlab/ros_catkin_ws/devel_isolated/roscpp_serialization/lib;/home/dlab/ros_catkin_ws/devel_isolated/rostime/lib;/home/dlab/ros_catkin_ws/devel_isolated/rosservice/lib;/home/dlab/ros_catkin_ws/devel_isolated/rospy/lib;/home/dlab/ros_catkin_ws/devel_isolated/rosparam/lib;/home/dlab/ros_catkin_ws/devel_isolated/roslib/lib;/home/dlab/ros_catkin_ws/devel_isolated/rospack/lib;/home/dlab/ros_catkin_ws/devel_isolated/rosmsg/lib;/home/dlab/ros_catkin_ws/devel_isolated/rosmaster/lib;/home/dlab/ros_catkin_ws/devel_isolated/rosmake/lib;/home/dlab/ros_catkin_ws/devel_isolated/roslisp/lib;/home/dlab/ros_catkin_ws/devel_isolated/roslint/lib;/home/dlab/ros_catkin_ws/devel_isolated/roslang/lib;/home/dlab/ros_catkin_ws/devel_isolated/rosgraph/lib;/home/dlab/ros_catkin_ws/devel_isolated/roscreate/lib;/home/dlab/ros_catkin_ws/devel_isolated/roscpp_traits/lib;/home/dlab/ros_catkin_ws/devel_isolated/roscpp_core/lib;/home/dlab/ros_catkin_ws/devel_isolated/rosclean/lib;/home/dlab/ros_catkin_ws/devel_isolated/rosbuild/lib;/home/dlab/ros_catkin_ws/devel_isolated/rosboost_cfg/lib;/home/dlab/ros_catkin_ws/devel_isolated/rosbash/lib;/home/dlab/ros_catkin_ws/devel_isolated/rosbag_migration_rule/lib;/home/dlab/ros_catkin_ws/devel_isolated/ros_tutorials/lib;/home/dlab/ros_catkin_ws/devel_isolated/ros_core/lib;/home/dlab/ros_catkin_ws/devel_isolated/ros_control/lib;/home/dlab/ros_catkin_ws/devel_isolated/ros_comm/lib;/home/dlab/ros_catkin_ws/devel_isolated/ros_base/lib;/home/dlab/ros_catkin_ws/devel_isolated/ros/lib;/home/dlab/ros_catkin_ws/devel_isolated/robot_model/lib;/home/dlab/ros_catkin_ws/devel_isolated/robot/lib;/home/dlab/ros_catkin_ws/devel_isolated/random_numbers/lib;/home/dlab/ros_catkin_ws/devel_isolated/qwt_dependency/lib;/home/dlab/ros_catkin_ws/devel_isolated/qt_gui_py_common/lib;/home/dlab/ros_catkin_ws/devel_isolated/qt_gui/lib;/home/dlab/ros_catkin_ws/devel_isolated/qt_dotgraph/lib;/home/dlab/ros_catkin_ws/devel_isolated/perception_pcl/lib;/home/dlab/ros_catkin_ws/devel_isolated/perception/lib;/home/dlab/ros_catkin_ws/devel_isolated/nodelet_core/lib;/home/dlab/ros_catkin_ws/devel_isolated/mk/lib;/home/dlab/ros_catkin_ws/devel_isolated/message_runtime/lib;/home/dlab/ros_catkin_ws/devel_isolated/message_generation/lib;/home/dlab/ros_catkin_ws/devel_isolated/media_export/lib;/home/dlab/ros_catkin_ws/devel_isolated/laser_pipeline/lib;/home/dlab/ros_catkin_ws/devel_isolated/image_transport_plugins/lib;/home/dlab/ros_catkin_ws/devel_isolated/image_pipeline/lib;/home/dlab/ros_catkin_ws/devel_isolated/image_common/lib;/home/dlab/ros_catkin_ws/devel_isolated/gl_dependency/lib;/home/dlab/ros_catkin_ws/devel_isolated/geometry_tutorials/lib;/home/dlab/ros_catkin_ws/devel_isolated/geometry/lib;/home/dlab/ros_catkin_ws/devel_isolated/gazebo_ros_pkgs/lib;/home/dlab/ros_catkin_ws/devel_isolated/executive_smach/lib;/home/dlab/ros_catkin_ws/devel_isolated/eigen_stl_containers/lib;/home/dlab/ros_catkin_ws/devel_isolated/diagnostics/lib;/home/dlab/ros_catkin_ws/devel_isolated/desktop_full/lib;/home/dlab/ros_catkin_ws/devel_isolated/desktop/lib;/home/dlab/ros_catkin_ws/devel_isolated/cpp_common/lib;/home/dlab/ros_catkin_ws/devel_isolated/common_tutorials/lib;/home/dlab/ros_catkin_ws/devel_isolated/common_msgs/lib;/home/dlab/ros_catkin_ws/devel_isolated/class_loader/lib;/home/dlab/ros_catkin_ws/devel_isolated/cmake_modules/lib;/home/dlab/ros_catkin_ws/devel_isolated/bond_core/lib;/home/dlab/ros_catkin_ws/devel_isolated/genpy/lib;/home/dlab/ros_catkin_ws/devel_isolated/genlisp/lib;/home/dlab/ros_catkin_ws/devel_isolated/gencpp/lib;/home/dlab/ros_catkin_ws/devel_isolated/genmsg/lib;/home/dlab/ros_catkin_ws/devel_isolated/catkin/lib;/home/dlab/ros_catkin_ws/install_isolated/lib)
      find_library(lib ${library}
        PATHS ${path}
        NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH)
      if(lib)
        set(lib_path ${path})
        break()
      endif()
    endforeach()
    if(lib)
      _list_append_unique(dynamixel_pro_controller_LIBRARY_DIRS ${lib_path})
      list(APPEND dynamixel_pro_controller_LIBRARIES ${lib})
    else()
      # as a fall back for non-catkin libraries try to search globally
      find_library(lib ${library})
      if(NOT lib)
        message(FATAL_ERROR "Project '${PROJECT_NAME}' tried to find library '${library}'.  The library is neither a target nor built/installed properly.  Did you compile project 'dynamixel_pro_controller'?  Did you find_package() it before the subdirectory containing its code is included?")
      endif()
      list(APPEND dynamixel_pro_controller_LIBRARIES ${lib})
    endif()
  endif()
endforeach()

set(dynamixel_pro_controller_EXPORTED_TARGETS "dynamixel_pro_controller_generate_messages_cpp;dynamixel_pro_controller_generate_messages_lisp;dynamixel_pro_controller_generate_messages_py")
# create dummy targets for exported code generation targets to make life of users easier
foreach(t ${dynamixel_pro_controller_EXPORTED_TARGETS})
  if(NOT TARGET ${t})
    add_custom_target(${t})
  endif()
endforeach()

set(depends "")
foreach(depend ${depends})
  string(REPLACE " " ";" depend_list ${depend})
  # the package name of the dependency must be kept in a unique variable so that it is not overwritten in recursive calls
  list(GET depend_list 0 dynamixel_pro_controller_dep)
  list(LENGTH depend_list count)
  if(${count} EQUAL 1)
    # simple dependencies must only be find_package()-ed once
    if(NOT ${dynamixel_pro_controller_dep}_FOUND)
      find_package(${dynamixel_pro_controller_dep} REQUIRED)
    endif()
  else()
    # dependencies with components must be find_package()-ed again
    list(REMOVE_AT depend_list 0)
    find_package(${dynamixel_pro_controller_dep} REQUIRED ${depend_list})
  endif()
  _list_append_unique(dynamixel_pro_controller_INCLUDE_DIRS ${${dynamixel_pro_controller_dep}_INCLUDE_DIRS})

  # merge build configuration keywords with library names to correctly deduplicate
  _pack_libraries_with_build_configuration(dynamixel_pro_controller_LIBRARIES ${dynamixel_pro_controller_LIBRARIES})
  _pack_libraries_with_build_configuration(_libraries ${${dynamixel_pro_controller_dep}_LIBRARIES})
  _list_append_deduplicate(dynamixel_pro_controller_LIBRARIES ${_libraries})
  # undo build configuration keyword merging after deduplication
  _unpack_libraries_with_build_configuration(dynamixel_pro_controller_LIBRARIES ${dynamixel_pro_controller_LIBRARIES})

  _list_append_unique(dynamixel_pro_controller_LIBRARY_DIRS ${${dynamixel_pro_controller_dep}_LIBRARY_DIRS})
  list(APPEND dynamixel_pro_controller_EXPORTED_TARGETS ${${dynamixel_pro_controller_dep}_EXPORTED_TARGETS})
endforeach()

set(pkg_cfg_extras "dynamixel_pro_controller-msg-extras.cmake")
foreach(extra ${pkg_cfg_extras})
  if(NOT IS_ABSOLUTE ${extra})
    set(extra ${dynamixel_pro_controller_DIR}/${extra})
  endif()
  include(${extra})
endforeach()

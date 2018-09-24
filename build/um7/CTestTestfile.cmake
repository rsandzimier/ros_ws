# CMake generated Testfile for 
# Source directory: /home/dlab/ros_ws/src/um7
# Build directory: /home/dlab/ros_ws/build/um7
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_um7_gtest_um7_test_registers "/home/dlab/ros_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python" "/home/dlab/ros_catkin_ws/src/catkin/cmake/test/run_tests.py" "/home/dlab/ros_ws/build/test_results/um7/gtest-um7_test_registers.xml" "--return-code" "/home/dlab/ros_ws/devel/lib/um7/um7_test_registers --gtest_output=xml:/home/dlab/ros_ws/build/test_results/um7/gtest-um7_test_registers.xml")
add_test(_ctest_um7_gtest_um7_test_comms "/home/dlab/ros_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python" "/home/dlab/ros_catkin_ws/src/catkin/cmake/test/run_tests.py" "/home/dlab/ros_ws/build/test_results/um7/gtest-um7_test_comms.xml" "--return-code" "/home/dlab/ros_ws/devel/lib/um7/um7_test_comms --gtest_output=xml:/home/dlab/ros_ws/build/test_results/um7/gtest-um7_test_comms.xml")
add_test(_ctest_um7_roslint_package "/home/dlab/ros_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python" "/home/dlab/ros_catkin_ws/src/catkin/cmake/test/run_tests.py" "/home/dlab/ros_ws/build/test_results/um7/roslint-um7.xml" "--working-dir" "/home/dlab/ros_ws/build/um7" "--return-code" "/home/dlab/ros_catkin_ws/src/roslint/scripts/test_wrapper /home/dlab/ros_ws/build/test_results/um7/roslint-um7.xml make roslint_um7")

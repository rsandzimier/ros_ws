## *********************************************************
##
## File autogenerated for the hough_circles package
## by the dynamic_reconfigure package.
## Please do not edit.
##
## ********************************************************/

from dynamic_reconfigure.encoding import extract_params

inf = float('inf')

config_description = {'upper': 'DEFAULT', 'lower': 'groups', 'srcline': 245, 'name': 'Default', 'parent': 0, 'srcfile': '/home/dlab/ros_catkin_ws/src/dynamic_reconfigure/src/dynamic_reconfigure/parameter_generator_catkin.py', 'cstate': 'true', 'parentname': 'Default', 'class': 'DEFAULT', 'field': 'default', 'state': True, 'parentclass': '', 'groups': [], 'parameters': [{'srcline': 292, 'description': 'Indicates that the camera_info topic should be subscribed to to get the default input_frame_id. Otherwise the frame from the image message will be used.', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/home/dlab/ros_catkin_ws/src/dynamic_reconfigure/src/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'use_camera_info', 'edit_method': '', 'default': False, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 292, 'description': 'Canny threshold', 'max': 255.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/home/dlab/ros_catkin_ws/src/dynamic_reconfigure/src/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'canny_threshold', 'edit_method': '', 'default': 200.0, 'level': 0, 'min': 1.0, 'type': 'double'}, {'srcline': 292, 'description': 'Accumulator threshold', 'max': 200.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/home/dlab/ros_catkin_ws/src/dynamic_reconfigure/src/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'accumulator_threshold', 'edit_method': '', 'default': 50.0, 'level': 0, 'min': 1.0, 'type': 'double'}, {'srcline': 292, 'description': 'the size of gaussian blur (should be odd number)', 'max': 30, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/home/dlab/ros_catkin_ws/src/dynamic_reconfigure/src/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'gaussian_blur_size', 'edit_method': '', 'default': 9, 'level': 0, 'min': 1, 'type': 'int'}, {'srcline': 292, 'description': 'sigma x of gaussian kernel', 'max': 10.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/home/dlab/ros_catkin_ws/src/dynamic_reconfigure/src/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'gaussian_sigma_x', 'edit_method': '', 'default': 2.0, 'level': 0, 'min': 1.0, 'type': 'double'}, {'srcline': 292, 'description': 'sigma y of gaussian kernel', 'max': 10.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/home/dlab/ros_catkin_ws/src/dynamic_reconfigure/src/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'gaussian_sigma_y', 'edit_method': '', 'default': 2.0, 'level': 0, 'min': 1.0, 'type': 'double'}, {'srcline': 292, 'description': 'mnimum distance between the centers of the detected circles', 'max': 1024.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/home/dlab/ros_catkin_ws/src/dynamic_reconfigure/src/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'min_distance_between_circles', 'edit_method': '', 'default': 0.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 292, 'description': 'dp', 'max': 100.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/home/dlab/ros_catkin_ws/src/dynamic_reconfigure/src/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'dp', 'edit_method': '', 'default': 2.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 292, 'description': 'the minimum size of the circle', 'max': 500, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/home/dlab/ros_catkin_ws/src/dynamic_reconfigure/src/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'min_circle_radius', 'edit_method': '', 'default': 0, 'level': 0, 'min': 0, 'type': 'int'}, {'srcline': 292, 'description': 'the maximum size of the circle', 'max': 2000, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/home/dlab/ros_catkin_ws/src/dynamic_reconfigure/src/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'max_circle_radius', 'edit_method': '', 'default': 0, 'level': 0, 'min': 0, 'type': 'int'}, {'srcline': 292, 'description': 'Select image type for debug output', 'max': 2, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/home/dlab/ros_catkin_ws/src/dynamic_reconfigure/src/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'debug_image_type', 'edit_method': "{'enum_description': 'An enum for debug view', 'enum': [{'srcline': 53, 'description': 'Input image', 'srcfile': '/home/dlab/ros_ws/src/opencv_apps/cfg/HoughCircles.cfg', 'cconsttype': 'const int', 'value': 0, 'ctype': 'int', 'type': 'int', 'name': 'Input'}, {'srcline': 54, 'description': 'GaussianBlur image', 'srcfile': '/home/dlab/ros_ws/src/opencv_apps/cfg/HoughCircles.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': 'Blur'}, {'srcline': 55, 'description': 'Canny edge image', 'srcfile': '/home/dlab/ros_ws/src/opencv_apps/cfg/HoughCircles.cfg', 'cconsttype': 'const int', 'value': 2, 'ctype': 'int', 'type': 'int', 'name': 'Canny'}]}", 'default': 0, 'level': 0, 'min': 0, 'type': 'int'}], 'type': '', 'id': 0}

min = {}
max = {}
defaults = {}
level = {}
type = {}
all_level = 0

#def extract_params(config):
#    params = []
#    params.extend(config['parameters'])
#    for group in config['groups']:
#        params.extend(extract_params(group))
#    return params

for param in extract_params(config_description):
    min[param['name']] = param['min']
    max[param['name']] = param['max']
    defaults[param['name']] = param['default']
    level[param['name']] = param['level']
    type[param['name']] = param['type']
    all_level = all_level | param['level']

HoughCircles_Input = 0
HoughCircles_Blur = 1
HoughCircles_Canny = 2

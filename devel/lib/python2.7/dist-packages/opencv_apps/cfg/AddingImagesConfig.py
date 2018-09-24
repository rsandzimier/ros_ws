## *********************************************************
##
## File autogenerated for the adding_images package
## by the dynamic_reconfigure package.
## Please do not edit.
##
## ********************************************************/

from dynamic_reconfigure.encoding import extract_params

inf = float('inf')

config_description = {'upper': 'DEFAULT', 'lower': 'groups', 'srcline': 245, 'name': 'Default', 'parent': 0, 'srcfile': '/home/dlab/ros_catkin_ws/src/dynamic_reconfigure/src/dynamic_reconfigure/parameter_generator_catkin.py', 'cstate': 'true', 'parentname': 'Default', 'class': 'DEFAULT', 'field': 'default', 'state': True, 'parentclass': '', 'groups': [], 'parameters': [{'srcline': 292, 'description': 'Indicates that the camera_info topic should be subscribed to to get the default input_frame_id. Otherwise the frame from the image message will be used.', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/home/dlab/ros_catkin_ws/src/dynamic_reconfigure/src/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'use_camera_info', 'edit_method': '', 'default': False, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 292, 'description': 'weight of the first array elements.', 'max': 1.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/home/dlab/ros_catkin_ws/src/dynamic_reconfigure/src/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'alpha', 'edit_method': '', 'default': 0.5, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 292, 'description': 'True: Automatically set beta weight as 1 - alpha, False: Use user defined beta weight', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/home/dlab/ros_catkin_ws/src/dynamic_reconfigure/src/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'auto_beta', 'edit_method': '', 'default': True, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 292, 'description': 'weight of the second array elements.', 'max': 1.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/home/dlab/ros_catkin_ws/src/dynamic_reconfigure/src/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'beta', 'edit_method': '', 'default': 0.5, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 292, 'description': 'scalar added to each sum.', 'max': 255.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/home/dlab/ros_catkin_ws/src/dynamic_reconfigure/src/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'gamma', 'edit_method': '', 'default': 0.0, 'level': 0, 'min': 0.0, 'type': 'double'}], 'type': '', 'id': 0}

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

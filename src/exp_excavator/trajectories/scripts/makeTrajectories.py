# Author: Ryan Sandzimier

import trajectory_helper_functions as hf

fps = 100.0

# PENETRATE/DRAG PARAMETERS
file_name_drag = 'drag_trajectory.csv'
initial_pen = [750.0, 200.0,0.6] # Initial pos before penetrate [X pos (mm), Y pos (mm), bucket pos (rad)]
initial_drag = [750.0, 45.0,0.6] # Initial pos before drag (same as final pos after penetrate) [X pos (mm), Y pos (mm), bucket pos (rad)]
final_drag = [650.0, 45.0,0.6] # Final pos after drag [X pos (mm), Y pos (mm), bucket pos (rad)]
speed_drag = [50.0,50.0] # Speeds [X speed (mm/s), Y speed (mm/s)]
hold_time_drag = [0.5,0.5] # Time to hold pose after finished with segment of trajectory [Hold time after penetrate (sec), hold time after drag (sec)]

# SCOOP PARAMETERS
file_name_scoop = 'scoop_trajectory*.csv' # Replace * with parameter suffix
initial_scoop = final_drag # Initial pos before scoop (same as final position of drag trajectory) [X pos (mm), Y pos (mm), bucket pos (rad)]
final_scoop = [10.0*100, 5.0*100, 1.9] # Max pos after scoop. Bucket pos is the final position. Boom and arm pos are relative displacement limits (displacement cannot exceed this, but does not necessarily have to meet this) [Boom pos (rad, before 50:1 gear box), arm pos (rad, before 50:1 gear box), bucket pos (rad)]

# Speeds [Boom speed (rad/s, before 50:1 gear box), arm speed (rad/s, before 50:1 gear box), Bucket speed (rad/s)]
speed_scoop_list = []
for boom_s in [0.0,1.0,2.0]:
	for arm_s in [0.0,1.0,2.0]:
		for bucket_s in [0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0]:
			speed_scoop_list.append([boom_s, arm_s, bucket_s])
hold_time_scoop = 0.5 # Time to hold pose after finished with trajectory. [Hold time after scoop (sec)]

# LIFT PARAMETERS
file_name_lift = 'lift_bucket_trajectory*.csv' # Replace * with parameter suffix
# Initial lift position is same as final scoop position
final_lift = [515.0, 140.0, 2.1] # Final pos after lift [X pos (mm), Y pos (mm), bucket pos (rad)]
speed_lift = [50.0,50.0,1.0] # Speeds [X speed (mm/s), Y speed (mm/s), Bucket speed (rad/s)]
hold_time_lift = 0.5 # Time to hold pose after finished with trajectory. [Hold time after lift (sec)]

# DUMP PARAMETERS
file_name_dump = 'dump_bucket_trajectory.csv'
initial_dump = final_lift # Initial pos before dump (same as final position of lift trajectory) [X pos (mm), Y pos (mm), bucket pos (rad)]
final_dump = [initial_dump[0], initial_dump[1], -0.8] # Final pos after dump [X pos (mm), Y pos (mm), bucket pos (rad)]
speed_dump = [0.0, 0.0, 1.0] # Speeds [X speed (mm/s), Y speed (mm/s), Bucket speed (rad/s)]
hold_time_dump = 0.5 # Time to hold pose after finished with trajectory. [Hold time after dump (sec)]

# RETRACT PARAMETERS
file_name_retract = 'retract_bucket_trajectory.csv'
initial_retract = final_dump # Initial pos before retract (same as final position of dump trajectory) [X pos (mm), Y pos (mm), bucket pos (rad)]
final_retract = [initial_retract[0], initial_retract[1], 2.1] # Final pos after retract [X pos (mm), Y pos (mm), bucket pos (rad)]
speed_retract = [0.0, 0.0, 1.0] # Speeds [X speed (mm/s), Y speed (mm/s), Bucket speed (rad/s)]
hold_time_retract = 0.5 # Time to hold pose after finished with trajectory. [Hold time after retract (sec)]

# RESET PARAMETERS
file_name_reset = 'reset_position_trajectory.csv'
initial_reset = hf.xyPos2jointAngles(final_retract) # Convert final retract position from xy pos to joint angles. Initial pos before reset = final pos after retract. Initial pos before reset [Boom pos (rad, before 50:1 gear box), arm pos (rad, before 50:1 gear box), bucket pos (rad)]
intermediate_reset = [-75.0, initial_reset[1], 2.1] # Intermediate pos during reset (arm position holds position during this segment) [Boom pos (rad, before 50:1 gear box), arm pos (rad, before 50:1 gear box), bucket pos (rad)]
final_reset = [-75.0, 110.0, 2.1] # Final pos after reset [Boom pos (rad, before 50:1 gear box), arm pos (rad, before 50:1 gear box), bucket pos (rad)]
speed_reset = [15.0, 15.0, 1.0] # Speeds [Boom speed (rad/s, before 50:1 gear box), arm speed (rad/s, before 50:1 gear box), Bucket speed (rad/s)]
hold_time_reset = 0.5 # Time to hold pose after finished with trajectory. [Hold time after reset (sec)]

# START PARAMETERS
file_name_start = 'starting_position_trajectory.csv'
initial_start = final_reset # Initial pos before start (Same as final pos of reset) [Boom pos (rad, before 50:1 gear box), arm pos (rad, before 50:1 gear box), bucket pos (rad)]
intermediate_start = [initial_start[0], 75.0, 0.8] # Intermediate pos during start (boom position holds position during this segment) [Boom pos (rad, before 50:1 gear box), arm pos (rad, before 50:1 gear box), bucket pos (rad)]
final_start = [-35.0, 50.0, 0.8] # Final pos after start [Boom pos (rad, before 50:1 gear box), arm pos (rad, before 50:1 gear box), bucket pos (rad)]
speed_start = [15.0, 15.0, 1.0] # Speeds [Boom speed (rad/s, before 50:1 gear box), arm speed (rad/s, before 50:1 gear box), Bucket speed (rad/s)]
hold_time_start = 0.5 # Time to hold pose after finished with trajectory. [Hold time after start (sec)]




# Create constant trajectory files
hf.makeDrag(file_name_drag, initial_pen, initial_drag, final_drag, speed_drag, hold_time_drag,fps)
hf.makeDump(file_name_dump, initial_dump, final_dump, speed_dump, hold_time_dump, fps)
hf.makeRetract(file_name_retract, initial_retract, final_retract, speed_retract, hold_time_retract, fps)
hf.makeReset(file_name_reset, initial_reset, intermediate_reset, final_reset, speed_reset, hold_time_reset, fps)
hf.makeStart(file_name_start, initial_start, intermediate_start, final_start, speed_start, hold_time_start, fps)

# Create varying trajectory files
index_suffix_insert_scoop = file_name_scoop.find('*')
index_suffix_insert_lift = file_name_lift.find('*')
file_name_scoop_splice = [file_name_scoop[:index_suffix_insert_scoop],file_name_scoop[index_suffix_insert_scoop+1:]]
file_name_lift_splice = [file_name_lift[:index_suffix_insert_lift],file_name_lift[index_suffix_insert_lift+1:]]
for speed_scoop in speed_scoop_list:
	file_name_scoop_i = file_name_scoop_splice[0]+'_' + str(speed_scoop[0])+'_' + str(speed_scoop[1])+'_' + str(speed_scoop[2]) + file_name_scoop_splice[1]
	file_name_lift_i = file_name_lift_splice[0]+'_' + str(speed_scoop[0])+'_' + str(speed_scoop[1])+'_' + str(speed_scoop[2]) + file_name_lift_splice[1]
	scoop_final = hf.makeScoop(file_name_scoop_i, initial_scoop, final_scoop, speed_scoop, hold_time_scoop, fps) # Use return result (final scoop pos) for initial lift pos
	hf.makeLift(file_name_lift_i, scoop_final, final_lift, speed_lift, hold_time_lift, fps)	


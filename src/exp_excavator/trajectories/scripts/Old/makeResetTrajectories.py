# Author: Ryan Sandzimier

file_name1 = '/home/dlab/ros_ws/src/exp_excavator/trajectories/lift_bucket_trajectory.csv'
file_name2 = '/home/dlab/ros_ws/src/exp_excavator/trajectories/dump_bucket_trajectory.csv'
file_name3 = '/home/dlab/ros_ws/src/exp_excavator/trajectories/retract_bucket_trajectory.csv'
file_name4 = '/home/dlab/ros_ws/src/exp_excavator/trajectories/reset_position_trajectory.csv'
file_name5 = '/home/dlab/ros_ws/src/exp_excavator/trajectories/starting_position_trajectory.csv'


import numpy as np
import math

fps = 100.0


L1 = 500 #mm
L2 = 383 #mm
def xyPos2jointAngles(x, y):
	theta1 = -math.acos((y*y+x*x+L1*L1-L2*L2)/(2*L1*math.sqrt(x*x+y*y))) + math.atan2(-y,x)
	theta2 = math.acos((x-L1*math.cos(theta1))/L2)
	if y > -L1*math.sin(theta1): theta2 *= -1
	return [50.0*theta1, 50.0*(theta2-theta1)] # [theta_boom, theta_arm]




# ADD LIFT TRAJECTORY
speed = [50.0, 50.0, 0.5] # x mm/s, y mm/s, bucket rad/s

initial = [550.0, 50.0, 1.9] # Same as final position after scoop
final = [525.0, 250.0, 2.1]

hold_time = 1.0

diff = [float(final[0]-initial[0]),float(final[1]-initial[1]),float(final[2]-initial[2])]

trajectory = []
i = 0
while (True):
	trajectory_i = [initial[0]+i*speed[0]*np.sign(diff[0])/fps,initial[1]+i*speed[1]*np.sign(diff[1])/fps,initial[2]+i*speed[2]*np.sign(diff[2])/fps]
	for j in range(0,3): 
		if trajectory_i[j]*np.sign(diff[j]) > final[j]*np.sign(diff[j]): trajectory_i[j] = final[j]
	trajectory.append(trajectory_i)
	if trajectory_i == final: break
	i += 1
for k in range(0,int(hold_time*fps)):
	trajectory.append(final)	

# WRITE TO FILE
f = open(file_name1, 'w')
for i in range(0,len(trajectory)):
	f.write(str(trajectory[i][0])+','+str(trajectory[i][1])+','+str(trajectory[i][2])+'\n')
f.close()




# ADD DUMP BUCKET TRAJECTORY
speed = [0.0, 0.0, 1.0] # x mm/s, y mm/s, bucket rad/s

initial = [525.0, 250.0, 2.1] # Same as final position after lift
final = [525.0, 250.0, -0.8]

hold_time = 1.0

diff = [float(final[0]-initial[0]),float(final[1]-initial[1]),float(final[2]-initial[2])]

trajectory = []
i = 0
while (True):
	trajectory_i = [initial[0]+i*speed[0]*np.sign(diff[0])/fps,initial[1]+i*speed[1]*np.sign(diff[1])/fps,initial[2]+i*speed[2]*np.sign(diff[2])/fps]
	for j in range(0,3): 
		if trajectory_i[j]*np.sign(diff[j]) > final[j]*np.sign(diff[j]): trajectory_i[j] = final[j]
	trajectory.append(trajectory_i)
	if trajectory_i == final: break
	i += 1
for k in range(0,int(hold_time*fps)):
	trajectory.append(final)	

# WRITE TO FILE
f = open(file_name2, 'w')
for i in range(0,len(trajectory)):
	f.write(str(trajectory[i][0])+','+str(trajectory[i][1])+','+str(trajectory[i][2])+'\n')
f.close()




# ADD RETRACT BUCKET TRAJECTORY
speed = [0.0, 0.0, 1.0] # x mm/s, y mm/s, bucket rad/s

initial = [525.0, 250.0, -0.8] # Same as final position after lift
final = [525.0, 250.0, 2.1]

hold_time = 1.0

diff = [float(final[0]-initial[0]),float(final[1]-initial[1]),float(final[2]-initial[2])]

trajectory = []
i = 0
while (True):
	trajectory_i = [initial[0]+i*speed[0]*np.sign(diff[0])/fps,initial[1]+i*speed[1]*np.sign(diff[1])/fps,initial[2]+i*speed[2]*np.sign(diff[2])/fps]
	for j in range(0,3): 
		if trajectory_i[j]*np.sign(diff[j]) > final[j]*np.sign(diff[j]): trajectory_i[j] = final[j]
	trajectory.append(trajectory_i)
	if trajectory_i == final: break
	i += 1
for k in range(0,int(hold_time*fps)):
	trajectory.append(final)	

# WRITE TO FILE
f = open(file_name3, 'w')
for i in range(0,len(trajectory)):
	f.write(str(trajectory[i][0])+','+str(trajectory[i][1])+','+str(trajectory[i][2])+'\n')
f.close()




# ADD RESET TRAJECTORY
speed = [15.0, 15.0, 1.0] # x mm/s, y mm/s, bucket rad/s

initial = [525.0, 250.0, 2.1] # Same as final position after lift
initial_joint = xyPos2jointAngles(initial[0], initial[1])
initial = [initial_joint[0], initial_joint[1], initial[2]]

final = [-75.0, initial[1], 2.1]

hold_time = 1.0

diff = [float(final[0]-initial[0]),float(final[1]-initial[1]),float(final[2]-initial[2])]

trajectory = []
i = 0
while (True):
	trajectory_i = [initial[0]+i*speed[0]*np.sign(diff[0])/fps,initial[1]+i*speed[1]*np.sign(diff[1])/fps,initial[2]+i*speed[2]*np.sign(diff[2])/fps]
	for j in range(0,3): 
		if trajectory_i[j]*np.sign(diff[j]) > final[j]*np.sign(diff[j]): trajectory_i[j] = final[j]
	trajectory.append(trajectory_i)
	if trajectory_i == final: break
	i += 1

initial = final

final = [-75.0, 110.0, 2.1]

diff = [float(final[0]-initial[0]),float(final[1]-initial[1]),float(final[2]-initial[2])]

i = 0
while (True):
	trajectory_i = [initial[0]+i*speed[0]*np.sign(diff[0])/fps,initial[1]+i*speed[1]*np.sign(diff[1])/fps,initial[2]+i*speed[2]*np.sign(diff[2])/fps]
	for j in range(0,3): 
		if trajectory_i[j]*np.sign(diff[j]) > final[j]*np.sign(diff[j]): trajectory_i[j] = final[j]
	trajectory.append(trajectory_i)
	if trajectory_i == final: break
	i += 1
for k in range(0,int(hold_time*fps)):
	trajectory.append(final)

# WRITE TO FILE
f = open(file_name4, 'w')
for i in range(0,len(trajectory)):
	f.write(str(trajectory[i][0])+','+str(trajectory[i][1])+','+str(trajectory[i][2])+'\n')
f.close()







# ADD STARTING TRAJECTORY
speed = [15.0, 15.0, 1.0] # x mm/s, y mm/s, bucket rad/s

initial = [-75.0, 110.0, 2.1] # Same as final position after lift
final = [-75.0, 75.0, 0.8]

hold_time = 1.0

diff = [float(final[0]-initial[0]),float(final[1]-initial[1]),float(final[2]-initial[2])]

trajectory = []
i = 0
while (True):
	trajectory_i = [initial[0]+i*speed[0]*np.sign(diff[0])/fps,initial[1]+i*speed[1]*np.sign(diff[1])/fps,initial[2]+i*speed[2]*np.sign(diff[2])/fps]
	for j in range(0,3): 
		if trajectory_i[j]*np.sign(diff[j]) > final[j]*np.sign(diff[j]): trajectory_i[j] = final[j]
	trajectory.append(trajectory_i)
	if trajectory_i == final: break
	i += 1

initial = final

final = [-30.0, 45.0, 0.8]

diff = [float(final[0]-initial[0]),float(final[1]-initial[1]),float(final[2]-initial[2])]

i = 0
while (True):
	trajectory_i = [initial[0]+i*speed[0]*np.sign(diff[0])/fps,initial[1]+i*speed[1]*np.sign(diff[1])/fps,initial[2]+i*speed[2]*np.sign(diff[2])/fps]
	for j in range(0,3): 
		if trajectory_i[j]*np.sign(diff[j]) > final[j]*np.sign(diff[j]): trajectory_i[j] = final[j]
	trajectory.append(trajectory_i)
	if trajectory_i == final: break
	i += 1
for k in range(0,int(hold_time*fps)):
	trajectory.append(final)

# WRITE TO FILE
f = open(file_name5, 'w')
for i in range(0,len(trajectory)):
	f.write(str(trajectory[i][0])+','+str(trajectory[i][1])+','+str(trajectory[i][2])+'\n')
f.close()




                











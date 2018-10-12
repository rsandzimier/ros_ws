# Author: Ryan Sandzimier

file_name = 'scoop_trajectory.csv'

import numpy as np
import math



file_dir = '/home/dlab/ros_ws/src/exp_excavator/trajectories/'
L1 = 500 #mm
L2 = 383 #mm
def xyPos2jointAngles(xy_pos):
	theta1 = -math.acos((xy_pos[1]*xy_pos[1]+xy_pos[0]*xy_pos[0]+L1*L1-L2*L2)/(2*L1*math.sqrt(xy_pos[0]*xy_pos[0]+xy_pos[1]*xy_pos[1]))) + math.atan2(-xy_pos[1],xy_pos[0])
	theta2 = math.acos((xy_pos[0]-L1*math.cos(theta1))/L2)
	if xy_pos[1] > -L1*math.sin(theta1): theta2 *= -1
	return [50.0*theta1, 50.0*(theta2-theta1), xy_pos[2]] # [theta_boom, theta_arm, theta_bucket]
def jointAngles2xyPos(joint_pos):
	x = L1*math.cos(joint_pos[0]/50.0)+L2*math.cos(joint_pos[1]/50.0 + joint_pos[0]/50.0)
	y = -L1*math.sin(joint_pos[0]/50.0)-L2*math.sin(joint_pos[1]/50.0 + joint_pos[0]/50.0)
	return [x,y,joint_pos[2]]

def makeDrag(file_name, initial_pen, initial_drag, final_drag, speed = [50.0,50.0], hold_time=[1.0,1.0],fps=100.0):
	# ADD PENETRATE TRAJECTORY
	diffX = float(initial_drag[0]-initial_pen[0])
	diffY = float(initial_drag[1]-initial_pen[1])
	nFrames = int(fps*math.sqrt(diffX*diffX+diffY*diffY)/speed[0])

	trajectory = []
	for i in range(0,nFrames+1):
		trajectory.append([initial_pen[0]+i*diffX/nFrames,initial_pen[1]+i*diffY/nFrames,initial_drag[2]])
	for i in range(0,int(hold_time[0]*fps)):
		trajectory.append(trajectory[-1])

	# ADD DRAG TRAJECTORY
	diffX = float(final_drag[0]-initial_drag[0])
	diffY = float(final_drag[1]-initial_drag[1])
	nFrames = int(fps*math.sqrt(diffX*diffX+diffY*diffY)/speed[1])

	for i in range(0,nFrames+1):
		trajectory.append([initial_drag[0]+i*diffX/nFrames,initial_drag[1]+i*diffY/nFrames,initial_drag[2]])
	for i in range(0,int(hold_time[1]*fps)):
		trajectory.append(trajectory[-1])

	# WRITE TO FILE
	file_name = file_dir + file_name
	f = open(file_name, 'w')
	for i in range(0,len(trajectory)):
		f.write(str(trajectory[i][0])+','+str(trajectory[i][1])+','+str(trajectory[i][2])+'\n')
	f.close()


def makeScoop(file_name, initial, final, speed, hold_time=1.0, fps=100.0):
	# ADD SCOOP TRAJECTORY
	initial = xyPos2jointAngles(initial)
	final = [initial[0]-final[0],initial[1]+final[1],final[2]]
	diff = [float(final[0]-initial[0]),float(final[1]-initial[1]),float(final[2]-initial[2])]
	nFrames = int(math.fabs(fps*diff[2]/speed[2]))

	trajectory = [initial]
	while (True):
		trajectory.append([trajectory[-1][0]-speed[0]/fps,trajectory[-1][1]+speed[1]/fps,trajectory[-1][2]+speed[2]/fps])
		if trajectory[-1][0] < final[0]: trajectory[-1][0] = final[0]
		if trajectory[-1][1] > final[1]: trajectory[-1][1] = final[1]
		if trajectory[-1][2] > final[2]: trajectory[-1][2] = final[2]
		if trajectory[-1][2] == final[2]: break
	for i in range(0,len(trajectory)):
		trajectory[i] = jointAngles2xyPos(trajectory[i])
	for i in range(0,int(hold_time*fps)):
		trajectory.append(trajectory[-1])

	# WRITE TO FILE
	file_name = file_dir + file_name
	f = open(file_name, 'w')
	for i in range(0,len(trajectory)):
		f.write(str(trajectory[i][0])+','+str(trajectory[i][1])+','+str(trajectory[i][2])+'\n')
	f.close()
	return trajectory[-1]

def makeLift(file_name, initial, final, speed = [50.0,50.0,0.5], hold_time = 1.0, fps = 100.0):
	# ADD LIFT TRAJECTORY
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
	file_name = file_dir + file_name
	f = open(file_name, 'w')
	for i in range(0,len(trajectory)):
		f.write(str(trajectory[i][0])+','+str(trajectory[i][1])+','+str(trajectory[i][2])+'\n')
	f.close()


def makeDump(file_name, initial, final, speed = [0.0, 0.0, 1.0], hold_time = 1.0, fps = 100.0):
	# ADD DUMP BUCKET TRAJECTORY
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
	file_name = file_dir + file_name
	f = open(file_name, 'w')
	for i in range(0,len(trajectory)):
		f.write(str(trajectory[i][0])+','+str(trajectory[i][1])+','+str(trajectory[i][2])+'\n')
	f.close()


def makeRetract(file_name, initial, final, speed = [0.0, 0.0, 1.0], hold_time = 1.0, fps = 100.0):
	# ADD RETRACT BUCKET TRAJECTORY

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
	file_name = file_dir + file_name
	f = open(file_name, 'w')
	for i in range(0,len(trajectory)):
		f.write(str(trajectory[i][0])+','+str(trajectory[i][1])+','+str(trajectory[i][2])+'\n')
	f.close()


def makeReset(file_name, initial, intermediate, final, speed = [15.0, 15.0, 1.0], hold_time = 1.0, fps = 100.0):
	# ADD RESET TRAJECTORY

	diff = [float(intermediate[0]-initial[0]),float(intermediate[1]-initial[1]),float(intermediate[2]-initial[2])]

	trajectory = []
	i = 0
	while (True):
		trajectory_i = [initial[0]+i*speed[0]*np.sign(diff[0])/fps,initial[1]+i*speed[1]*np.sign(diff[1])/fps,initial[2]+i*speed[2]*np.sign(diff[2])/fps]
		for j in range(0,3): 
			if trajectory_i[j]*np.sign(diff[j]) > intermediate[j]*np.sign(diff[j]): trajectory_i[j] = intermediate[j]
		trajectory.append(trajectory_i)
		if trajectory_i == intermediate: break
		i += 1

	diff = [float(final[0]-intermediate[0]),float(final[1]-intermediate[1]),float(final[2]-intermediate[2])]

	i = 0
	while (True):
		trajectory_i = [intermediate[0]+i*speed[0]*np.sign(diff[0])/fps,intermediate[1]+i*speed[1]*np.sign(diff[1])/fps,intermediate[2]+i*speed[2]*np.sign(diff[2])/fps]
		for j in range(0,3): 
			if trajectory_i[j]*np.sign(diff[j]) > final[j]*np.sign(diff[j]): trajectory_i[j] = final[j]
		trajectory.append(trajectory_i)
		if trajectory_i == final: break
		i += 1
	for k in range(0,int(hold_time*fps)):
		trajectory.append(final)

	# WRITE TO FILE
	file_name = file_dir + file_name
	f = open(file_name, 'w')
	for i in range(0,len(trajectory)):
		f.write(str(trajectory[i][0])+','+str(trajectory[i][1])+','+str(trajectory[i][2])+'\n')
	f.close()

def makeStart(file_name, initial, intermediate, final, speed = [15.0, 15.0, 1.0], hold_time = 1.0, fps = 100.0):

	# ADD STARTING TRAJECTORY

	diff = [float(intermediate[0]-initial[0]),float(intermediate[1]-initial[1]),float(intermediate[2]-initial[2])]

	trajectory = []
	i = 0
	while (True):
		trajectory_i = [initial[0]+i*speed[0]*np.sign(diff[0])/fps,initial[1]+i*speed[1]*np.sign(diff[1])/fps,initial[2]+i*speed[2]*np.sign(diff[2])/fps]
		for j in range(0,3): 
			if trajectory_i[j]*np.sign(diff[j]) > intermediate[j]*np.sign(diff[j]): trajectory_i[j] = intermediate[j]
		trajectory.append(trajectory_i)
		if trajectory_i == intermediate: break
		i += 1

	

	diff = [float(final[0]-intermediate[0]),float(final[1]-intermediate[1]),float(final[2]-intermediate[2])]

	i = 0
	while (True):
		trajectory_i = [intermediate[0]+i*speed[0]*np.sign(diff[0])/fps,intermediate[1]+i*speed[1]*np.sign(diff[1])/fps,intermediate[2]+i*speed[2]*np.sign(diff[2])/fps]
		for j in range(0,3): 
			if trajectory_i[j]*np.sign(diff[j]) > final[j]*np.sign(diff[j]): trajectory_i[j] = final[j]
		trajectory.append(trajectory_i)
		if trajectory_i == final: break
		i += 1
	for k in range(0,int(hold_time*fps)):
		trajectory.append(final)

	# WRITE TO FILE
	file_name = file_dir + file_name
	f = open(file_name, 'w')
	for i in range(0,len(trajectory)):
		f.write(str(trajectory[i][0])+','+str(trajectory[i][1])+','+str(trajectory[i][2])+'\n')
	f.close()




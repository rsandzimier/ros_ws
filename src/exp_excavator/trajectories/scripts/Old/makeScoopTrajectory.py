# Author: Ryan Sandzimier

file_name = 'scoop_trajectory.csv'

import numpy as np
import math



boom_speed = 0 # rad/s
arm_speed = 0 # rad/s
bucket_speed = 0.3 # rad/s

scoop_initial = [550.0, 50.0, 0.6] # x,y,theta_bucket
scoop_final = [550.0, 50.0, 1.9]






def makeScoop(file_name, scoop_initial_xy, scoop_final, speeds, hold_time=1.0, fps=100.0):
	# ADD SCOOP TRAJECTORY

	diff = [float(scoop_final[0]-scoop_initial[0]),float(scoop_final[1]-scoop_initial[1]),float(scoop_final[2]-scoop_initial[2])]
	nFrames = int(math.fabs(fps*diff[2]/speeds[2])) # MAKE THIS GENERAL FOR ARM AND BOOM MOTION

	trajectory = []
	for i in range(0,nFrames+1):
		trajectory.append([scoop_initial[0]+i*diff[0]/nFrames,scoop_initial[1]+i*diff[1]/nFrames,scoop_initial[2]+i*diff[2]/nFrames])
	for i in range(0,int(hold_time*fps)):
		trajectory.append(trajectory[-1])

	# WRITE TO FILE
	file_name = '/home/dlab/ros_ws/src/exp_excavator/trajectories/' + file_name
	f = open(file_name, 'w')
	for i in range(0,len(trajectory)):
		f.write(str(trajectory[i][0])+','+str(trajectory[i][1])+','+str(trajectory[i][2])+'\n')
	f.close()


                











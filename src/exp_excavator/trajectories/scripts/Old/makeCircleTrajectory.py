# Author: Ryan Sandzimier

file_name = '/home/dlab/ros_ws/src/exp_excavator/trajectories/circle_trajectory.csv'

import numpy as np
import math

cx = 500
cy = 350
r = 100
n_rev = 5
period = 4 # seconds per revolution
fps = 100.0
theta_step = 2*np.pi/(fps*period)
n_frames = fps*period*n_rev
bucket_pos = 0.6
hold_time = 1

trajectory = []
for i in range(0,int(n_frames)):
	trajectory.append([cx + r*math.cos(i*theta_step),cy + r*math.sin(i*theta_step),bucket_pos])
for i in range(0,int(hold_time*fps)):
	trajectory.append(trajectory[len(trajectory)-1])


f = open(file_name, 'w')
for i in range(0,len(trajectory)):
	  f.write(str(trajectory[i][0])+','+str(trajectory[i][1])+','+str(trajectory[i][2])+'\n')
f.close()


                











# Author: Ryan Sandzimier

file_name = '/home/dlab/ros_ws/src/exp_excavator/trajectories/drag_trajectory.csv'

import numpy as np
import math

fps = 100.0

penetrate_speed = 50.0 # mm/s
drag_speed = 50.0 # mm/s

penetrate_initial_xy =[750.0, 200.0] # x,y
penetrate_final_xy = [750.0, 50.0] # x,y
drag_initial_xy = penetrate_final_xy
drag_final_xy = [550.0, 50.0] # x,y

penetrate_hold_time = 1.0
drag_hold_time = 1.0

bucket_pos = 0.6

# ADD PENETRATE TRAJECTORY
diffX = float(penetrate_final_xy[0]-penetrate_initial_xy[0])
diffY = float(penetrate_final_xy[1]-penetrate_initial_xy[1])
nFrames = int(fps*math.sqrt(diffX*diffX+diffY*diffY)/penetrate_speed)

trajectory = []
for i in range(0,nFrames+1):
	trajectory.append([penetrate_initial_xy[0]+i*diffX/nFrames,penetrate_initial_xy[1]+i*diffY/nFrames,bucket_pos])
for i in range(0,int(penetrate_hold_time*fps)):
	trajectory.append(trajectory[-1])

# ADD DRAG TRAJECTORY
diffX = float(drag_final_xy[0]-drag_initial_xy[0])
diffY = float(drag_final_xy[1]-drag_initial_xy[1])
nFrames = int(fps*math.sqrt(diffX*diffX+diffY*diffY)/drag_speed)

for i in range(0,nFrames+1):
	trajectory.append([drag_initial_xy[0]+i*diffX/nFrames,drag_initial_xy[1]+i*diffY/nFrames,bucket_pos])
for i in range(0,int(drag_hold_time*fps)):
	trajectory.append(trajectory[-1])

# WRITE TO FILE
f = open(file_name, 'w')
for i in range(0,len(trajectory)):
	f.write(str(trajectory[i][0])+','+str(trajectory[i][1])+','+str(trajectory[i][2])+'\n')
f.close()










                











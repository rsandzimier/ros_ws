#!/usr/bin/python
'''
Created on September 27, 2018

@author: Ryan
'''

import math
import csv

L1 = 500 #mm
L2 = 383 #mm

boom_motor_pos_max = -5 # Max position of boom motor. To prevent collision between boom motor crank and container
arm_motor_pos_min = 25 # Min position of arm motor. To prevent collision between linkages
arm_motor_pos_max = 115 # Max position of arm motor. To prevent collision between linkages
arm_boom_motors_pos_relative_sum_max = -30 # Max sum between boom/arm motor positions. To prevent collision between arm motor crank and base frame
bucket_motor_pos_min = -1.4
bucket_motor_pos_max = 2.1

# MAX AND MIN JOINT SPEEDS FOR CREATING INTERMEDIATE TRAJECTORY. 
speedMax = [20.0,20.0,1.0] # RAD/S [boom,arm,bucket] Note: Boom and arm speed are BEFORE 50:1 gearbox. 
speedMin = [2.0,2.0,0.1] # RAD/S [boom,arm,bucket] Note: Boom and arm speed are BEFORE 50:1 gearbox. 

transition_hold_time = 1 # Seconds. Time to hold between intermediate trajectory and trajectory (append this many seconds of first frame to intermediate trajectory)

def jointAngles2xyPos(theta_boom, theta_arm):
	x = L1*math.cos(theta_boom)+L2*math.cos(theta_arm + theta_boom)
	y = -L1*math.sin(theta_boom)-L2*math.sin(theta_arm + theta_boom)
	return [x,y]

def xyPos2jointAngles(x, y):
	theta1 = -math.acos((y*y+x*x+L1*L1-L2*L2)/(2*L1*math.sqrt(x*x+y*y))) + math.atan2(-y,x)
	theta2 = math.acos((x-L1*math.cos(theta1))/L2)
	if y > -L1*math.sin(theta1): theta2 *= -1
	return [theta1, theta2-theta1] # [theta_boom, theta_arm]

def checkPositionLimits(theta_boom, theta_arm, theta_bucket):
	if theta_boom > boom_motor_pos_max: theta_boom = boom_motor_pos_max 
	if theta_arm < arm_motor_pos_min: theta_arm = arm_motor_pos_min
	if theta_arm > arm_motor_pos_max: theta_arm = arm_motor_pos_max
	if theta_boom + theta_arm < arm_boom_motors_pos_relative_sum_max:
		if   theta_arm + theta_boom >= arm_boom_motors_pos_relative_sum_max:
			theta_arm = arm_boom_motors_pos_relative_sum_max - theta_boom
		else:
			theta_arm = arm_motor_pos_max
			theta_boom = arm_boom_motors_pos_relative_sum_max - theta_arm
	if theta_bucket > bucket_motor_pos_max: theta_bucket = bucket_motor_pos_max
	if theta_bucket < bucket_motor_pos_min: theta_bucket = bucket_motor_pos_min
	return [theta_boom, theta_arm, theta_bucket]

def createIntermediateTrajectory(desiredPos, currentPos, fps, speed_factor=1.0):
	intermediate_trajectory = []
	direction = [1,1,1]
	stepSize = [0,0,0]
	for i in range(0,3): 
		if desiredPos[i] < currentPos[i]: direction[i] = -1
		stepSize[i] = direction[i]*(speed_factor*(speedMax[i] - speedMin[i]) + speedMin[i])/fps
	i = 0
	while(True):
		joint_i = [0,0,0]
		for j in range(0,3): 
			joint_i[j] = currentPos[j] + i*stepSize[j]
			if joint_i[j]*stepSize[j] > desiredPos[j]*stepSize[j]: joint_i[j] = desiredPos[j]
		intermediate_trajectory.append(joint_i)
		if joint_i == desiredPos: break
		i += 1
	for k in range(0,int(transition_hold_time*fps)):
		intermediate_trajectory.append(desiredPos)	

	return intermediate_trajectory

def readTrajectoryFromFile(file_name, isCartesian=False):
	trajectory = []
	with open(file_name) as csv_file:
    		csv_reader = csv.reader(csv_file)
   		for row in csv_reader:
			positions = []
			for col in row:	positions.append(float(col))
			if len(positions) != 3: 
				print 'INVALID FORMAT. EACH ROW OF TRAJECTORY CSV MUST HAVE EXACTLY 3 COLUMNS. DID NOT LOAD TRAJECTORY'
				return []
    			trajectory.append(positions)

	if isCartesian: 
		for i in range(0,len(trajectory)):
			theta_boom_theta_arm = xyPos2jointAngles(trajectory[i][0],trajectory[i][1])
			trajectory[i][0] = 50.0*theta_boom_theta_arm[0]
			trajectory[i][1] = 50.0*theta_boom_theta_arm[1]	
	
	for positions in trajectory:
		if positions != checkPositionLimits(positions[0],positions[1],positions[2]):
			print 'POSITION IN TRAJECTORY OUT OF RANGE. DID NOT LOAD TRAJECTORY'
			return []

	return trajectory
	
	

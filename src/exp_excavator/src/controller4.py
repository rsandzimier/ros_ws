#!/usr/bin/python
'''
Created on Feb 24, 2017

@author: fes
'''

import rospy
import exp_excavator.msg as cmsg
import sensor_msgs.msg as smsg
import math
import numpy as np
from std_msgs.msg import Float32
from sensor_msgs.msg import JointState
import helper_functions as hf
from os import listdir

import csv

class SpeedCommanderTeleop:
    def __init__(self):
        rospy.init_node('controller', anonymous=True)
          		
        self.rate = 100 #[Hz]

        self.joy_val = cmsg.JointValues()
        
        #initialise variables
        self.enabled = False
       
        self.joy_dial = 1.0 

	traj_dir = '/home/dlab/ros_ws/src/exp_excavator/trajectories/'
	
   	filenames = listdir(traj_dir)
   	scoop_trajectory_filenames = [ filename for filename in filenames if filename.startswith( 'scoop_trajectory_' ) and filename.endswith( '.csv' ) ]
	lift_trajectory_filenames = [ filename for filename in filenames if filename.startswith( 'lift_bucket_trajectory_' ) and filename.endswith( '.csv' ) ]
	
	self.trajectory_list = []
	self.trajectory_list.append([])
	self.trajectory_list.append(hf.readTrajectoryFromFile(traj_dir+'drag_trajectory.csv',True))
	self.trajectory_list.append(hf.readTrajectoryFromFile(traj_dir+'dump_bucket_trajectory.csv',True))
	self.trajectory_list.append(hf.readTrajectoryFromFile(traj_dir+'retract_bucket_trajectory.csv',True))
	self.trajectory_list.append(hf.readTrajectoryFromFile(traj_dir+'reset_position_trajectory.csv',False))
	self.trajectory_list.append(hf.readTrajectoryFromFile(traj_dir+'starting_position_trajectory.csv',False))

	self.scoop_speed_parameters = []
	for scoop_file in scoop_trajectory_filenames:
		i = scoop_file[len('scoop_trajectory_'):scoop_file.find('.csv')]
		for lift_file in lift_trajectory_filenames:
			j = lift_file[len('lift_bucket_trajectory_'):lift_file.find('.csv')]
			if i != j: continue
			a = i[:i.find('_')]
			i = i[i.find('_')+1:]
			b = i[:i.find('_')]
			c = i[i.find('_')+1:]
			k = len(self.scoop_speed_parameters)
			for p in range(0,len(self.scoop_speed_parameters)):
				if a < self.scoop_speed_parameters[p][0]: 
					k = p
					break
				elif a == self.scoop_speed_parameters[p][0]:
					if b < self.scoop_speed_parameters[p][1]: 
						k = p
						break
					elif b == self.scoop_speed_parameters[p][1]:
						if c <= self.scoop_speed_parameters[p][2]: 
							k = p
							break
			self.scoop_speed_parameters.insert(k,[a,b,c])
			self.trajectory_list.insert(2*k+6,hf.readTrajectoryFromFile(traj_dir+lift_file,True))
			self.trajectory_list.insert(2*k+6,hf.readTrajectoryFromFile(traj_dir+scoop_file,True))
			
	self.scoop_speed_selection = 0
	#for i in range(1,7):
	#	trajectories_match = True
	#	prev = self.trajectory_list[i]
	#	next = self.trajectory_list[i+1]
	#	for j in range(0,3):
	#		if prev == [] or next == [] or math.fabs(float(next[0][j]) - float(prev[-1][j])) > 0.0001: trajectories_match = False
	#	if trajectories_match == False:
	#		for j in range(0,8): self.trajectory_list[j] = []
	#		print 'STARTING LOCATION OF TRAJECTORY ' + str(i) + ' DOES NOT MATCH END LOCATION OF TRAJECTORY ' + str(i+1)
	#		break

	self.trajectory = []
	self.trajectoryStep = 0
	self.trajectoryStart = False
	self.trajectoryComplete = True
	self.intermediateTrajectory = []

        self.boom_motor_position_ref = 0.0
        self.arm_motor_position_ref = 0.0
	self.bucket_motor_position_ref = 0.0 

        self.boom_motor_velocity_ref = 0.0
        self.arm_motor_velocity_ref = 0.0

	self.end_effector_pos_x = 0
	self.end_effector_pos_y = 0

	self.robot_mode = 0 
	self.data_collection_state = 0
	self.mode_names = ['DISABLED','SERVO','MANUAL','MANUAL CARTESIAN','FOLLOW TRAJECTORY']

        self.boom_mode = 3 
        self.arm_mode  = 3
	       
        self.boom_calibration    = 0 
        self.arm_calibration     = 0
        self.bucket_calibration  = 0
	self.calibrated = False # Boolean tracking whether the joints are calibrated (if not calibrated, should not do anything that depends on absolute position. ie Following trajectory or motion in cartesian space. 

        self.boom_motor_position = 0
        self.arm_motor_position = 0

        self.time_switch_last = rospy.get_rostime()
        self.time_switch_last_trajectory = rospy.get_rostime()

        self.sub_joy = rospy.Subscriber('joy_values', cmsg.JointValues,
                                        self.cb_joy)

        self.sub_joy_right = rospy.Subscriber('joy_right', smsg.Joy,
                                              self.cb_joy_right)

        self.sub_state_arduino = rospy.Subscriber('machine_state_arduino',
                                cmsg.JointStateMachineArduino, self.cb_state_arduino)

        self.sub_pos_dynamixel   = rospy.Subscriber('joint_states_dynamixel', JointState, self.cb_pos_dynamixel);

        self.sub_joint_calibration = rospy.Subscriber('JointCalibration',
                                cmsg.JointCalibration, self.cb_joint_calibration)

        self.pub_arduino   = rospy.Publisher('arduino_commands', cmsg.JointCommandArduino,
                                           queue_size=10)

        self.pub_dynamixel = rospy.Publisher('dynamixel_commands', cmsg.JointCommandDynamixel,
                                           queue_size=10) # Note bucketV is limited to 1.0 rad/s in dynamixel_manager2.py. 

	self.pub_state_ping = rospy.Publisher('state_ping', cmsg.StatePing,
                                           queue_size=10)


    def cb_joy(self, msg):
        self.joy_val = msg
        
    def cb_state_arduino(self, msg):

        self.arm_motor_current  = msg.armI 
        self.arm_motor_velocity = msg.armV 
        self.arm_motor_position = msg.armP 

        self.boom_motor_position = msg.boomP
        self.boom_motor_velocity = msg.boomV

    def cb_pos_dynamixel(self, msg):
        try:
            self.bucket_motor_position = msg.position[0]
        except :
            print("ERRORcbDYNA")  

    def cb_joint_calibration(self, msg):
        self.boom_calibration    = msg.boom
        self.arm_calibration     = msg.arm
        self.bucket_calibration  = msg.bucket
	self.calibrated = msg.success
                  
    def cb_joy_right(self, joy):
        joy_switch_stop       = joy.buttons[0]
        joy_switch_manual      = joy.buttons[1]
	joy_switch_manual_cartesian = joy.buttons[2]
	joy_switch_follow_trajectory = joy.buttons[3]
	joy_switch_scoop_speed_selection = joy.buttons[6] # MAKE THIS CLEANER
	
	self.joy_dial = (joy.axes[2]+1.0)/2.0
    	# ROBOT MODES
	# 0 - DISABLED
	# 1 - SERVO (HOLD POSITION BUT DON'T ALLOW INPUT FROM JOYSTICKS)
	# 2 - MANUAL (JOYSTICK CONTROL)
	# 3 - MANUAL CARTESIAN (JOYSTICK)
	# 4 - FOLLOW TRAJECTORY (AFTER TRAJECTORY COMPLETE, AUTOMATICALLY ENTER MODE 1 (SERVO)

        if joy_switch_stop == 1:
            self.enterDisabledMode(0)

        if joy_switch_manual == 1 and rospy.get_rostime()-self.time_switch_last>rospy.Duration(0,100000000):
	    self.enterEnabledMode(2)

	if joy_switch_manual_cartesian == 1 and rospy.get_rostime()-self.time_switch_last>rospy.Duration(0,100000000):
	    if not self.calibrated:
		print 'cannot enter MANUAL CARTESIAN. Machine did not calibrate successfully'
		return 0
            self.enterEnabledMode(3)

	if joy_switch_follow_trajectory == 1 and self.trajectoryComplete and rospy.get_rostime()-self.time_switch_last>rospy.Duration(0,100000000):
	    if not self.calibrated:
		print 'cannot enter FOLLOW TRAJECTORY. Machine did not calibrate successfully'
		return 0
            state_ping_msg   = cmsg.StatePing()
	    self.data_collection_state += 1
	    if self.data_collection_state > 7: self.data_collection_state = 1
	    print self.data_collection_state
	    state_ping_msg.state = self.data_collection_state
	    self.pub_state_ping.publish(state_ping_msg)

	    if   self.data_collection_state == 1: self.trajectory = self.trajectory_list[1] 
	    elif self.data_collection_state == 2: self.trajectory = self.trajectory_list[2*self.scoop_speed_selection+6] 
   	    elif self.data_collection_state == 3: self.trajectory = self.trajectory_list[2*self.scoop_speed_selection+7] 
	    elif self.data_collection_state == 4: self.trajectory = self.trajectory_list[2] 
	    elif self.data_collection_state == 5: self.trajectory = self.trajectory_list[3] 
	    elif self.data_collection_state == 6: self.trajectory = self.trajectory_list[4] 
	    elif self.data_collection_state == 7: self.trajectory = self.trajectory_list[5] 
		

	    if self.trajectory != []: 
	    	self.enterEnabledMode(4)
	    else:
		print 'NO TRAJECTORY TO FOLLOW'
		self.enterEnabledMode(1)
	if joy_switch_scoop_speed_selection == 1 and self.trajectoryComplete and rospy.get_rostime()-self.time_switch_last>rospy.Duration(0,100000000):
		self.scoop_speed_selection += 1
		if self.scoop_speed_selection >= len(self.scoop_speed_parameters): self.scoop_speed_selection = 0
		print self.scoop_speed_parameters[self.scoop_speed_selection]
		

    def convertTrajectoryFromCartesianToJoint(self, trajectory):
	for i in range(0, len(trajectory)):
		theta_boom_theta_arm = hf.xyPos2jointAngles(trajectory[i][0], trajectory[i][1])
		trajectory[i] = [theta_boom_theta_arm[0]*50.0,theta_boom_theta_arm[1]*50.0,trajectory[i][2]]

    def setCartesianFromJoint(self):
	xy = hf.jointAngles2xyPos((self.boom_motor_position_ref + self.boom_calibration)/50.0, (self.arm_motor_position_ref + self.arm_calibration)/50.0)
	self.end_effector_pos_x = xy[0]
	self.end_effector_pos_y = xy[1]
	
    def setJointFromCartesian(self):
	theta_boom_theta_arm = hf.xyPos2jointAngles(self.end_effector_pos_x, self.end_effector_pos_y)
	self.boom_motor_position_ref = theta_boom_theta_arm[0]*50.0 - self.boom_calibration
	self.arm_motor_position_ref = theta_boom_theta_arm[1]*50.0 - self.arm_calibration

    def resetTrajectoryParameters(self):
	self.trajectory = []
	self.trajectoryStep = 0
	self.trajectoryStart = False
	self.trajectoryComplete = True
	self.intermediateTrajectory = []

    def enterDisabledMode(self, robot_mode=0):
	self.robot_mode = robot_mode            
        self.boom_mode = 3 
        self.arm_mode  = 3
        self.enabled = False
	self.resetTrajectoryParameters()
	self.data_collection_state = 0
	print 'switch to ' + self.mode_names[self.robot_mode]

    def enterEnabledMode(self, robot_mode=1):
	self.robot_mode = robot_mode
        self.arm_motor_position_ref = self.arm_motor_position
        self.boom_motor_position_ref = self.boom_motor_position
	self.bucket_motor_position_ref = self.bucket_motor_position

	self.setCartesianFromJoint()
	
	if self.robot_mode != 4: self.resetTrajectoryParameters()
	if self.robot_mode != 1 and self.robot_mode != 4: self.data_collection_state = 0

        self.boom_mode = 0
        self.arm_mode  = 0

        self.enabled = True
        self.time_switch_last = rospy.get_rostime()
	print 'switch to ' + self.mode_names[self.robot_mode]

    def checkPositionLimits(self):
	jointAngles = hf.checkPositionLimits(self.boom_motor_position_ref+self.boom_calibration,self.arm_motor_position_ref+self.arm_calibration,self.bucket_motor_position_ref + self.bucket_calibration)
	self.boom_motor_position_ref = jointAngles[0] - self.boom_calibration
	self.arm_motor_position_ref = jointAngles[1] - self.arm_calibration
	self.bucket_motor_position_ref = jointAngles[2] - self.bucket_calibration
	self.setCartesianFromJoint()
				 

    def update(self):
        r = rospy.Rate(self.rate)
        
        while not rospy.is_shutdown():
            arduino_controller_msg   = cmsg.JointCommandArduino()
            dynamixel_controller_msg = cmsg.JointCommandDynamixel()

            arduino_controller_msg.BoomMode = self.boom_mode
            arduino_controller_msg.ArmMode =  self.arm_mode           

	    if self.robot_mode == 1:
		# Do nothing. Joint references stay constant. Can't move until switched to a different mode. This mode is used as a transition between certain modes. 

		#Check limits. Clip if necessary
		self.checkPositionLimits()
				
                #set joint positions for messages
		arduino_controller_msg.boomP = self.boom_motor_position_ref 
		arduino_controller_msg.armP = self.arm_motor_position_ref 
		dynamixel_controller_msg.bucketP  = self.bucket_motor_position_ref

            if self.robot_mode == 2:
                #set joint references
                self.boom_motor_position_ref = self.boom_motor_position_ref + 0.2*self.joy_val.boom
		self.arm_motor_position_ref = self.arm_motor_position_ref + 0.2*self.joy_val.arm
		self.bucket_motor_position_ref = self.bucket_motor_position_ref + self.joy_val.bucket*0.01
		
		#Check limits. Clip if necessary
		self.checkPositionLimits()
				
                #set joint positions for messages
		arduino_controller_msg.boomP = self.boom_motor_position_ref
		arduino_controller_msg.armP = self.arm_motor_position_ref
		dynamixel_controller_msg.bucketP  = self.bucket_motor_position_ref
		
            elif self.robot_mode == 3:
		#set cartesian
		self.end_effector_pos_x = self.end_effector_pos_x + 0.8*self.joy_val.boom
		self.end_effector_pos_y = self.end_effector_pos_y + 0.8*self.joy_val.arm
		self.bucket_motor_position_ref = self.bucket_motor_position_ref + self.joy_val.bucket*0.01
		
		#Check limits. Clip if necessary
		self.setJointFromCartesian()
		self.checkPositionLimits()

	        #joint positions for messages
                arduino_controller_msg.boomP = self.boom_motor_position_ref
                arduino_controller_msg.armP = self.arm_motor_position_ref
                dynamixel_controller_msg.bucketP  = self.bucket_motor_position_ref
	    
	    elif self.robot_mode == 4:
		#set cartesian
		if not self.trajectoryStart and self.intermediateTrajectory == []:
			currentPos = [self.boom_motor_position_ref + self.boom_calibration,self.arm_motor_position_ref + self.arm_calibration,self.bucket_motor_position_ref + self.bucket_calibration]
			self.intermediateTrajectory = hf.createIntermediateTrajectory(self.trajectory[0], currentPos, self.rate, self.joy_dial)
			self.trajectoryStep = 0
		elif not self.trajectoryStart:
			self.trajectoryComplete = False
			self.boom_motor_position_ref = self.intermediateTrajectory[self.trajectoryStep][0] - self.boom_calibration
			self.arm_motor_position_ref = self.intermediateTrajectory[self.trajectoryStep][1] - self.arm_calibration
			self.bucket_motor_position_ref = self.intermediateTrajectory[self.trajectoryStep][2] - self.bucket_calibration
			self.trajectoryStep += 1
			if self.trajectoryStep >= len(self.intermediateTrajectory):
				self.trajectoryStart = True
				self.trajectoryStep = 0
		else:
			self.boom_motor_position_ref = self.trajectory[self.trajectoryStep][0] - self.boom_calibration
			self.arm_motor_position_ref = self.trajectory[self.trajectoryStep][1] - self.arm_calibration
			self.bucket_motor_position_ref = self.trajectory[self.trajectoryStep][2] - self.bucket_calibration
			self.trajectoryStep += 1
			if self.trajectoryStep >= len(self.trajectory):
				self.enterEnabledMode(1)
				
		
		self.checkPositionLimits()
		
		#joint positions for messages
                arduino_controller_msg.boomP = self.boom_motor_position_ref
                arduino_controller_msg.armP = self.arm_motor_position_ref
                dynamixel_controller_msg.bucketP  = self.bucket_motor_position_ref

		
            self.pub_arduino.publish(arduino_controller_msg)
            self.pub_dynamixel.publish(dynamixel_controller_msg)
            r.sleep()
            
if __name__ == '__main__':
    sc = SpeedCommanderTeleop()
    rospy.sleep(0.2)
    try:
        sc.update()

    except rospy.ROSInterruptException:
        pass

;; Auto-generated. Do not edit!


(when (boundp 'dynamixel_pro_controller::ChainLimits)
  (if (not (find-package "DYNAMIXEL_PRO_CONTROLLER"))
    (make-package "DYNAMIXEL_PRO_CONTROLLER"))
  (shadow 'ChainLimits (find-package "DYNAMIXEL_PRO_CONTROLLER")))
(unless (find-package "DYNAMIXEL_PRO_CONTROLLER::CHAINLIMITS")
  (make-package "DYNAMIXEL_PRO_CONTROLLER::CHAINLIMITS"))

(in-package "ROS")
;;//! \htmlinclude ChainLimits.msg.html


(defclass dynamixel_pro_controller::ChainLimits
  :super ros::object
  :slots (_list ))

(defmethod dynamixel_pro_controller::ChainLimits
  (:init
   (&key
    ((:list __list) (let (r) (dotimes (i 0) (push (instance dynamixel_pro_controller::JointLimits :init) r)) r))
    )
   (send-super :init)
   (setq _list __list)
   self)
  (:list
   (&rest __list)
   (if (keywordp (car __list))
       (send* _list __list)
     (progn
       (if __list (setq _list (car __list)))
       _list)))
  (:serialization-length
   ()
   (+
    ;; dynamixel_pro_controller/JointLimits[] _list
    (apply #'+ (send-all _list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dynamixel_pro_controller/JointLimits[] _list
     (write-long (length _list) s)
     (dolist (elem _list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dynamixel_pro_controller/JointLimits[] _list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _list (let (r) (dotimes (i n) (push (instance dynamixel_pro_controller::JointLimits :init) r)) r))
     (dolist (elem- _list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get dynamixel_pro_controller::ChainLimits :md5sum-) "b47be590d3fb3136f9c73af0da18f610")
(setf (get dynamixel_pro_controller::ChainLimits :datatype-) "dynamixel_pro_controller/ChainLimits")
(setf (get dynamixel_pro_controller::ChainLimits :definition-)
      "JointLimits[] list
================================================================================
MSG: dynamixel_pro_controller/JointLimits
string name
float64 min_angle
float64 max_angle
")



(provide :dynamixel_pro_controller/ChainLimits "b47be590d3fb3136f9c73af0da18f610")



;; Auto-generated. Do not edit!


(when (boundp 'dynamixel_pro_controller::JointLimits)
  (if (not (find-package "DYNAMIXEL_PRO_CONTROLLER"))
    (make-package "DYNAMIXEL_PRO_CONTROLLER"))
  (shadow 'JointLimits (find-package "DYNAMIXEL_PRO_CONTROLLER")))
(unless (find-package "DYNAMIXEL_PRO_CONTROLLER::JOINTLIMITS")
  (make-package "DYNAMIXEL_PRO_CONTROLLER::JOINTLIMITS"))

(in-package "ROS")
;;//! \htmlinclude JointLimits.msg.html


(defclass dynamixel_pro_controller::JointLimits
  :super ros::object
  :slots (_name _min_angle _max_angle ))

(defmethod dynamixel_pro_controller::JointLimits
  (:init
   (&key
    ((:name __name) "")
    ((:min_angle __min_angle) 0.0)
    ((:max_angle __max_angle) 0.0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _min_angle (float __min_angle))
   (setq _max_angle (float __max_angle))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:min_angle
   (&optional __min_angle)
   (if __min_angle (setq _min_angle __min_angle)) _min_angle)
  (:max_angle
   (&optional __max_angle)
   (if __max_angle (setq _max_angle __max_angle)) _max_angle)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; float64 _min_angle
    8
    ;; float64 _max_angle
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float64 _min_angle
       (sys::poke _min_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_angle
       (sys::poke _max_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _min_angle
     (setq _min_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_angle
     (setq _max_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get dynamixel_pro_controller::JointLimits :md5sum-) "412154068b5c07c08fd1b683d6e1b4a6")
(setf (get dynamixel_pro_controller::JointLimits :datatype-) "dynamixel_pro_controller/JointLimits")
(setf (get dynamixel_pro_controller::JointLimits :definition-)
      "string name
float64 min_angle
float64 max_angle
")



(provide :dynamixel_pro_controller/JointLimits "412154068b5c07c08fd1b683d6e1b4a6")



;; Auto-generated. Do not edit!


(when (boundp 'dynamixel_pro_controller::JointEnable)
  (if (not (find-package "DYNAMIXEL_PRO_CONTROLLER"))
    (make-package "DYNAMIXEL_PRO_CONTROLLER"))
  (shadow 'JointEnable (find-package "DYNAMIXEL_PRO_CONTROLLER")))
(unless (find-package "DYNAMIXEL_PRO_CONTROLLER::JOINTENABLE")
  (make-package "DYNAMIXEL_PRO_CONTROLLER::JOINTENABLE"))

(in-package "ROS")
;;//! \htmlinclude JointEnable.msg.html


(defclass dynamixel_pro_controller::JointEnable
  :super ros::object
  :slots (_name _enable ))

(defmethod dynamixel_pro_controller::JointEnable
  (:init
   (&key
    ((:name __name) "")
    ((:enable __enable) nil)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _enable __enable)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:enable
   (&optional __enable)
   (if __enable (setq _enable __enable)) _enable)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; bool _enable
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; bool _enable
       (if _enable (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _enable
     (setq _enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get dynamixel_pro_controller::JointEnable :md5sum-) "8a37ef20262e91550d3fdac3a6dd9d01")
(setf (get dynamixel_pro_controller::JointEnable :datatype-) "dynamixel_pro_controller/JointEnable")
(setf (get dynamixel_pro_controller::JointEnable :definition-)
      "string name
bool enable
")



(provide :dynamixel_pro_controller/JointEnable "8a37ef20262e91550d3fdac3a6dd9d01")



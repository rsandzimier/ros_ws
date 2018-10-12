;; Auto-generated. Do not edit!


(when (boundp 'dynamixel_pro_controller::ChainEnable)
  (if (not (find-package "DYNAMIXEL_PRO_CONTROLLER"))
    (make-package "DYNAMIXEL_PRO_CONTROLLER"))
  (shadow 'ChainEnable (find-package "DYNAMIXEL_PRO_CONTROLLER")))
(unless (find-package "DYNAMIXEL_PRO_CONTROLLER::CHAINENABLE")
  (make-package "DYNAMIXEL_PRO_CONTROLLER::CHAINENABLE"))

(in-package "ROS")
;;//! \htmlinclude ChainEnable.msg.html


(defclass dynamixel_pro_controller::ChainEnable
  :super ros::object
  :slots (_list ))

(defmethod dynamixel_pro_controller::ChainEnable
  (:init
   (&key
    ((:list __list) (let (r) (dotimes (i 0) (push (instance dynamixel_pro_controller::JointEnable :init) r)) r))
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
    ;; dynamixel_pro_controller/JointEnable[] _list
    (apply #'+ (send-all _list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dynamixel_pro_controller/JointEnable[] _list
     (write-long (length _list) s)
     (dolist (elem _list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dynamixel_pro_controller/JointEnable[] _list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _list (let (r) (dotimes (i n) (push (instance dynamixel_pro_controller::JointEnable :init) r)) r))
     (dolist (elem- _list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get dynamixel_pro_controller::ChainEnable :md5sum-) "11398f4d863b015da8e3b093b8350d42")
(setf (get dynamixel_pro_controller::ChainEnable :datatype-) "dynamixel_pro_controller/ChainEnable")
(setf (get dynamixel_pro_controller::ChainEnable :definition-)
      "JointEnable[] list
================================================================================
MSG: dynamixel_pro_controller/JointEnable
string name
bool enable
")



(provide :dynamixel_pro_controller/ChainEnable "11398f4d863b015da8e3b093b8350d42")



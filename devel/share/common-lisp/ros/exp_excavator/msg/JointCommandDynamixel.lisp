; Auto-generated. Do not edit!


(cl:in-package exp_excavator-msg)


;//! \htmlinclude JointCommandDynamixel.msg.html

(cl:defclass <JointCommandDynamixel> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (bucketV
    :reader bucketV
    :initarg :bucketV
    :type cl:float
    :initform 0.0)
   (bucketP
    :reader bucketP
    :initarg :bucketP
    :type cl:float
    :initform 0.0))
)

(cl:defclass JointCommandDynamixel (<JointCommandDynamixel>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointCommandDynamixel>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointCommandDynamixel)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name exp_excavator-msg:<JointCommandDynamixel> is deprecated: use exp_excavator-msg:JointCommandDynamixel instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <JointCommandDynamixel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exp_excavator-msg:header-val is deprecated.  Use exp_excavator-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'bucketV-val :lambda-list '(m))
(cl:defmethod bucketV-val ((m <JointCommandDynamixel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exp_excavator-msg:bucketV-val is deprecated.  Use exp_excavator-msg:bucketV instead.")
  (bucketV m))

(cl:ensure-generic-function 'bucketP-val :lambda-list '(m))
(cl:defmethod bucketP-val ((m <JointCommandDynamixel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exp_excavator-msg:bucketP-val is deprecated.  Use exp_excavator-msg:bucketP instead.")
  (bucketP m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointCommandDynamixel>) ostream)
  "Serializes a message object of type '<JointCommandDynamixel>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'bucketV))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'bucketP))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointCommandDynamixel>) istream)
  "Deserializes a message object of type '<JointCommandDynamixel>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bucketV) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bucketP) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointCommandDynamixel>)))
  "Returns string type for a message object of type '<JointCommandDynamixel>"
  "exp_excavator/JointCommandDynamixel")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointCommandDynamixel)))
  "Returns string type for a message object of type 'JointCommandDynamixel"
  "exp_excavator/JointCommandDynamixel")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointCommandDynamixel>)))
  "Returns md5sum for a message object of type '<JointCommandDynamixel>"
  "8cbe3711ac227927c7f2153f8850e46e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointCommandDynamixel)))
  "Returns md5sum for a message object of type 'JointCommandDynamixel"
  "8cbe3711ac227927c7f2153f8850e46e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointCommandDynamixel>)))
  "Returns full string definition for message of type '<JointCommandDynamixel>"
  (cl:format cl:nil "Header header~%~%float64 bucketV~%float64 bucketP~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointCommandDynamixel)))
  "Returns full string definition for message of type 'JointCommandDynamixel"
  (cl:format cl:nil "Header header~%~%float64 bucketV~%float64 bucketP~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointCommandDynamixel>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointCommandDynamixel>))
  "Converts a ROS message object to a list"
  (cl:list 'JointCommandDynamixel
    (cl:cons ':header (header msg))
    (cl:cons ':bucketV (bucketV msg))
    (cl:cons ':bucketP (bucketP msg))
))

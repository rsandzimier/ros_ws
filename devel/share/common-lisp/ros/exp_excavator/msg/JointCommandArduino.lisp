; Auto-generated. Do not edit!


(cl:in-package exp_excavator-msg)


;//! \htmlinclude JointCommandArduino.msg.html

(cl:defclass <JointCommandArduino> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (boomV
    :reader boomV
    :initarg :boomV
    :type cl:float
    :initform 0.0)
   (armV
    :reader armV
    :initarg :armV
    :type cl:float
    :initform 0.0)
   (boomP
    :reader boomP
    :initarg :boomP
    :type cl:float
    :initform 0.0)
   (armP
    :reader armP
    :initarg :armP
    :type cl:float
    :initform 0.0)
   (BoomMode
    :reader BoomMode
    :initarg :BoomMode
    :type cl:fixnum
    :initform 0)
   (ArmMode
    :reader ArmMode
    :initarg :ArmMode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass JointCommandArduino (<JointCommandArduino>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointCommandArduino>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointCommandArduino)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name exp_excavator-msg:<JointCommandArduino> is deprecated: use exp_excavator-msg:JointCommandArduino instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <JointCommandArduino>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exp_excavator-msg:header-val is deprecated.  Use exp_excavator-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'boomV-val :lambda-list '(m))
(cl:defmethod boomV-val ((m <JointCommandArduino>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exp_excavator-msg:boomV-val is deprecated.  Use exp_excavator-msg:boomV instead.")
  (boomV m))

(cl:ensure-generic-function 'armV-val :lambda-list '(m))
(cl:defmethod armV-val ((m <JointCommandArduino>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exp_excavator-msg:armV-val is deprecated.  Use exp_excavator-msg:armV instead.")
  (armV m))

(cl:ensure-generic-function 'boomP-val :lambda-list '(m))
(cl:defmethod boomP-val ((m <JointCommandArduino>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exp_excavator-msg:boomP-val is deprecated.  Use exp_excavator-msg:boomP instead.")
  (boomP m))

(cl:ensure-generic-function 'armP-val :lambda-list '(m))
(cl:defmethod armP-val ((m <JointCommandArduino>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exp_excavator-msg:armP-val is deprecated.  Use exp_excavator-msg:armP instead.")
  (armP m))

(cl:ensure-generic-function 'BoomMode-val :lambda-list '(m))
(cl:defmethod BoomMode-val ((m <JointCommandArduino>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exp_excavator-msg:BoomMode-val is deprecated.  Use exp_excavator-msg:BoomMode instead.")
  (BoomMode m))

(cl:ensure-generic-function 'ArmMode-val :lambda-list '(m))
(cl:defmethod ArmMode-val ((m <JointCommandArduino>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exp_excavator-msg:ArmMode-val is deprecated.  Use exp_excavator-msg:ArmMode instead.")
  (ArmMode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointCommandArduino>) ostream)
  "Serializes a message object of type '<JointCommandArduino>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'boomV))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'armV))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'boomP))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'armP))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'BoomMode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ArmMode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointCommandArduino>) istream)
  "Deserializes a message object of type '<JointCommandArduino>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'boomV) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'armV) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'boomP) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'armP) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'BoomMode) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ArmMode) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointCommandArduino>)))
  "Returns string type for a message object of type '<JointCommandArduino>"
  "exp_excavator/JointCommandArduino")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointCommandArduino)))
  "Returns string type for a message object of type 'JointCommandArduino"
  "exp_excavator/JointCommandArduino")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointCommandArduino>)))
  "Returns md5sum for a message object of type '<JointCommandArduino>"
  "a8c41177e77782c84174d490536bcb81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointCommandArduino)))
  "Returns md5sum for a message object of type 'JointCommandArduino"
  "a8c41177e77782c84174d490536bcb81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointCommandArduino>)))
  "Returns full string definition for message of type '<JointCommandArduino>"
  (cl:format cl:nil "Header header~%~%float32 boomV~%float32 armV~%float32 boomP~%float32 armP~%int8 BoomMode~%int8 ArmMode~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointCommandArduino)))
  "Returns full string definition for message of type 'JointCommandArduino"
  (cl:format cl:nil "Header header~%~%float32 boomV~%float32 armV~%float32 boomP~%float32 armP~%int8 BoomMode~%int8 ArmMode~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointCommandArduino>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointCommandArduino>))
  "Converts a ROS message object to a list"
  (cl:list 'JointCommandArduino
    (cl:cons ':header (header msg))
    (cl:cons ':boomV (boomV msg))
    (cl:cons ':armV (armV msg))
    (cl:cons ':boomP (boomP msg))
    (cl:cons ':armP (armP msg))
    (cl:cons ':BoomMode (BoomMode msg))
    (cl:cons ':ArmMode (ArmMode msg))
))

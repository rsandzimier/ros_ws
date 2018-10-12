; Auto-generated. Do not edit!


(cl:in-package exp_excavator-msg)


;//! \htmlinclude StatePing.msg.html

(cl:defclass <StatePing> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass StatePing (<StatePing>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StatePing>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StatePing)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name exp_excavator-msg:<StatePing> is deprecated: use exp_excavator-msg:StatePing instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <StatePing>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exp_excavator-msg:header-val is deprecated.  Use exp_excavator-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <StatePing>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exp_excavator-msg:state-val is deprecated.  Use exp_excavator-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StatePing>) ostream)
  "Serializes a message object of type '<StatePing>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StatePing>) istream)
  "Deserializes a message object of type '<StatePing>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StatePing>)))
  "Returns string type for a message object of type '<StatePing>"
  "exp_excavator/StatePing")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StatePing)))
  "Returns string type for a message object of type 'StatePing"
  "exp_excavator/StatePing")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StatePing>)))
  "Returns md5sum for a message object of type '<StatePing>"
  "6b8ba4e04f882f0e14fe3dd848d01f25")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StatePing)))
  "Returns md5sum for a message object of type 'StatePing"
  "6b8ba4e04f882f0e14fe3dd848d01f25")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StatePing>)))
  "Returns full string definition for message of type '<StatePing>"
  (cl:format cl:nil "Header header~%~%int8 state~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StatePing)))
  "Returns full string definition for message of type 'StatePing"
  (cl:format cl:nil "Header header~%~%int8 state~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StatePing>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StatePing>))
  "Converts a ROS message object to a list"
  (cl:list 'StatePing
    (cl:cons ':header (header msg))
    (cl:cons ':state (state msg))
))

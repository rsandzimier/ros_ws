; Auto-generated. Do not edit!


(cl:in-package exp_excavator-msg)


;//! \htmlinclude JointStateMachineArduino.msg.html

(cl:defclass <JointStateMachineArduino> (roslisp-msg-protocol:ros-message)
  ((boomP
    :reader boomP
    :initarg :boomP
    :type cl:float
    :initform 0.0)
   (armP
    :reader armP
    :initarg :armP
    :type cl:float
    :initform 0.0)
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
   (boomI
    :reader boomI
    :initarg :boomI
    :type cl:float
    :initform 0.0)
   (armI
    :reader armI
    :initarg :armI
    :type cl:float
    :initform 0.0)
   (boomMode
    :reader boomMode
    :initarg :boomMode
    :type cl:fixnum
    :initform 0)
   (armMode
    :reader armMode
    :initarg :armMode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass JointStateMachineArduino (<JointStateMachineArduino>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointStateMachineArduino>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointStateMachineArduino)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name exp_excavator-msg:<JointStateMachineArduino> is deprecated: use exp_excavator-msg:JointStateMachineArduino instead.")))

(cl:ensure-generic-function 'boomP-val :lambda-list '(m))
(cl:defmethod boomP-val ((m <JointStateMachineArduino>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exp_excavator-msg:boomP-val is deprecated.  Use exp_excavator-msg:boomP instead.")
  (boomP m))

(cl:ensure-generic-function 'armP-val :lambda-list '(m))
(cl:defmethod armP-val ((m <JointStateMachineArduino>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exp_excavator-msg:armP-val is deprecated.  Use exp_excavator-msg:armP instead.")
  (armP m))

(cl:ensure-generic-function 'boomV-val :lambda-list '(m))
(cl:defmethod boomV-val ((m <JointStateMachineArduino>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exp_excavator-msg:boomV-val is deprecated.  Use exp_excavator-msg:boomV instead.")
  (boomV m))

(cl:ensure-generic-function 'armV-val :lambda-list '(m))
(cl:defmethod armV-val ((m <JointStateMachineArduino>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exp_excavator-msg:armV-val is deprecated.  Use exp_excavator-msg:armV instead.")
  (armV m))

(cl:ensure-generic-function 'boomI-val :lambda-list '(m))
(cl:defmethod boomI-val ((m <JointStateMachineArduino>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exp_excavator-msg:boomI-val is deprecated.  Use exp_excavator-msg:boomI instead.")
  (boomI m))

(cl:ensure-generic-function 'armI-val :lambda-list '(m))
(cl:defmethod armI-val ((m <JointStateMachineArduino>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exp_excavator-msg:armI-val is deprecated.  Use exp_excavator-msg:armI instead.")
  (armI m))

(cl:ensure-generic-function 'boomMode-val :lambda-list '(m))
(cl:defmethod boomMode-val ((m <JointStateMachineArduino>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exp_excavator-msg:boomMode-val is deprecated.  Use exp_excavator-msg:boomMode instead.")
  (boomMode m))

(cl:ensure-generic-function 'armMode-val :lambda-list '(m))
(cl:defmethod armMode-val ((m <JointStateMachineArduino>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exp_excavator-msg:armMode-val is deprecated.  Use exp_excavator-msg:armMode instead.")
  (armMode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointStateMachineArduino>) ostream)
  "Serializes a message object of type '<JointStateMachineArduino>"
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'boomI))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'armI))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'boomMode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'armMode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointStateMachineArduino>) istream)
  "Deserializes a message object of type '<JointStateMachineArduino>"
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
    (cl:setf (cl:slot-value msg 'boomI) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'armI) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'boomMode) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'armMode) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointStateMachineArduino>)))
  "Returns string type for a message object of type '<JointStateMachineArduino>"
  "exp_excavator/JointStateMachineArduino")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointStateMachineArduino)))
  "Returns string type for a message object of type 'JointStateMachineArduino"
  "exp_excavator/JointStateMachineArduino")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointStateMachineArduino>)))
  "Returns md5sum for a message object of type '<JointStateMachineArduino>"
  "e2c69b24e60d81685d15c8dc83d8091c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointStateMachineArduino)))
  "Returns md5sum for a message object of type 'JointStateMachineArduino"
  "e2c69b24e60d81685d15c8dc83d8091c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointStateMachineArduino>)))
  "Returns full string definition for message of type '<JointStateMachineArduino>"
  (cl:format cl:nil "float32 boomP~%float32 armP~%~%float32 boomV~%float32 armV~%~%float32 boomI~%float32 armI~%~%int8 boomMode~%int8 armMode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointStateMachineArduino)))
  "Returns full string definition for message of type 'JointStateMachineArduino"
  (cl:format cl:nil "float32 boomP~%float32 armP~%~%float32 boomV~%float32 armV~%~%float32 boomI~%float32 armI~%~%int8 boomMode~%int8 armMode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointStateMachineArduino>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointStateMachineArduino>))
  "Converts a ROS message object to a list"
  (cl:list 'JointStateMachineArduino
    (cl:cons ':boomP (boomP msg))
    (cl:cons ':armP (armP msg))
    (cl:cons ':boomV (boomV msg))
    (cl:cons ':armV (armV msg))
    (cl:cons ':boomI (boomI msg))
    (cl:cons ':armI (armI msg))
    (cl:cons ':boomMode (boomMode msg))
    (cl:cons ':armMode (armMode msg))
))

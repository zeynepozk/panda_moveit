; Auto-generated. Do not edit!


(cl:in-package panda_control-msg)


;//! \htmlinclude pandaTelemetry.msg.html

(cl:defclass <pandaTelemetry> (roslisp-msg-protocol:ros-message)
  ((angle
    :reader angle
    :initarg :angle
    :type (cl:vector cl:float)
   :initform (cl:make-array 7 :element-type 'cl:float :initial-element 0.0))
   (vel
    :reader vel
    :initarg :vel
    :type (cl:vector cl:float)
   :initform (cl:make-array 7 :element-type 'cl:float :initial-element 0.0))
   (current
    :reader current
    :initarg :current
    :type (cl:vector cl:float)
   :initform (cl:make-array 7 :element-type 'cl:float :initial-element 0.0))
   (startSyncTime
    :reader startSyncTime
    :initarg :startSyncTime
    :type cl:real
    :initform 0)
   (isrTicks
    :reader isrTicks
    :initarg :isrTicks
    :type cl:integer
    :initform 0)
   (bufferHealth
    :reader bufferHealth
    :initarg :bufferHealth
    :type cl:fixnum
    :initform 0))
)

(cl:defclass pandaTelemetry (<pandaTelemetry>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pandaTelemetry>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pandaTelemetry)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name panda_control-msg:<pandaTelemetry> is deprecated: use panda_control-msg:pandaTelemetry instead.")))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <pandaTelemetry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panda_control-msg:angle-val is deprecated.  Use panda_control-msg:angle instead.")
  (angle m))

(cl:ensure-generic-function 'vel-val :lambda-list '(m))
(cl:defmethod vel-val ((m <pandaTelemetry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panda_control-msg:vel-val is deprecated.  Use panda_control-msg:vel instead.")
  (vel m))

(cl:ensure-generic-function 'current-val :lambda-list '(m))
(cl:defmethod current-val ((m <pandaTelemetry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panda_control-msg:current-val is deprecated.  Use panda_control-msg:current instead.")
  (current m))

(cl:ensure-generic-function 'startSyncTime-val :lambda-list '(m))
(cl:defmethod startSyncTime-val ((m <pandaTelemetry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panda_control-msg:startSyncTime-val is deprecated.  Use panda_control-msg:startSyncTime instead.")
  (startSyncTime m))

(cl:ensure-generic-function 'isrTicks-val :lambda-list '(m))
(cl:defmethod isrTicks-val ((m <pandaTelemetry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panda_control-msg:isrTicks-val is deprecated.  Use panda_control-msg:isrTicks instead.")
  (isrTicks m))

(cl:ensure-generic-function 'bufferHealth-val :lambda-list '(m))
(cl:defmethod bufferHealth-val ((m <pandaTelemetry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panda_control-msg:bufferHealth-val is deprecated.  Use panda_control-msg:bufferHealth instead.")
  (bufferHealth m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pandaTelemetry>) ostream)
  "Serializes a message object of type '<pandaTelemetry>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'angle))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'vel))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'current))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'startSyncTime)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'startSyncTime) (cl:floor (cl:slot-value msg 'startSyncTime)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'isrTicks)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'isrTicks)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'isrTicks)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'isrTicks)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bufferHealth)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pandaTelemetry>) istream)
  "Deserializes a message object of type '<pandaTelemetry>"
  (cl:setf (cl:slot-value msg 'angle) (cl:make-array 7))
  (cl:let ((vals (cl:slot-value msg 'angle)))
    (cl:dotimes (i 7)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'vel) (cl:make-array 7))
  (cl:let ((vals (cl:slot-value msg 'vel)))
    (cl:dotimes (i 7)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'current) (cl:make-array 7))
  (cl:let ((vals (cl:slot-value msg 'current)))
    (cl:dotimes (i 7)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'startSyncTime) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'isrTicks)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'isrTicks)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'isrTicks)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'isrTicks)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bufferHealth)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pandaTelemetry>)))
  "Returns string type for a message object of type '<pandaTelemetry>"
  "panda_control/pandaTelemetry")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pandaTelemetry)))
  "Returns string type for a message object of type 'pandaTelemetry"
  "panda_control/pandaTelemetry")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pandaTelemetry>)))
  "Returns md5sum for a message object of type '<pandaTelemetry>"
  "8dd19a824eebf0c213861bf1c66e6f1e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pandaTelemetry)))
  "Returns md5sum for a message object of type 'pandaTelemetry"
  "8dd19a824eebf0c213861bf1c66e6f1e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pandaTelemetry>)))
  "Returns full string definition for message of type '<pandaTelemetry>"
  (cl:format cl:nil "float32[7] angle # degrees~%float32[7] vel # deg/s~%float32[7] current # amps ~%time startSyncTime ~%uint32 isrTicks # this would overflow if the robot is left on for 497 days straight at 100 hz ~%uint8 bufferHealth~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pandaTelemetry)))
  "Returns full string definition for message of type 'pandaTelemetry"
  (cl:format cl:nil "float32[7] angle # degrees~%float32[7] vel # deg/s~%float32[7] current # amps ~%time startSyncTime ~%uint32 isrTicks # this would overflow if the robot is left on for 497 days straight at 100 hz ~%uint8 bufferHealth~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pandaTelemetry>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'angle) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'vel) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'current) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     8
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pandaTelemetry>))
  "Converts a ROS message object to a list"
  (cl:list 'pandaTelemetry
    (cl:cons ':angle (angle msg))
    (cl:cons ':vel (vel msg))
    (cl:cons ':current (current msg))
    (cl:cons ':startSyncTime (startSyncTime msg))
    (cl:cons ':isrTicks (isrTicks msg))
    (cl:cons ':bufferHealth (bufferHealth msg))
))

; Auto-generated. Do not edit!


(cl:in-package panda_control-msg)


;//! \htmlinclude armCmd.msg.html

(cl:defclass <armCmd> (roslisp-msg-protocol:ros-message)
  ((current
    :reader current
    :initarg :current
    :type (cl:vector cl:float)
   :initform (cl:make-array 7 :element-type 'cl:float :initial-element 0.0))
   (accel
    :reader accel
    :initarg :accel
    :type (cl:vector cl:float)
   :initform (cl:make-array 7 :element-type 'cl:float :initial-element 0.0))
   (vel
    :reader vel
    :initarg :vel
    :type (cl:vector cl:float)
   :initform (cl:make-array 7 :element-type 'cl:float :initial-element 0.0))
   (angle
    :reader angle
    :initarg :angle
    :type (cl:vector cl:float)
   :initform (cl:make-array 7 :element-type 'cl:float :initial-element 0.0))
   (msg_ctr
    :reader msg_ctr
    :initarg :msg_ctr
    :type cl:integer
    :initform 0))
)

(cl:defclass armCmd (<armCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <armCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'armCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name panda_control-msg:<armCmd> is deprecated: use panda_control-msg:armCmd instead.")))

(cl:ensure-generic-function 'current-val :lambda-list '(m))
(cl:defmethod current-val ((m <armCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panda_control-msg:current-val is deprecated.  Use panda_control-msg:current instead.")
  (current m))

(cl:ensure-generic-function 'accel-val :lambda-list '(m))
(cl:defmethod accel-val ((m <armCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panda_control-msg:accel-val is deprecated.  Use panda_control-msg:accel instead.")
  (accel m))

(cl:ensure-generic-function 'vel-val :lambda-list '(m))
(cl:defmethod vel-val ((m <armCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panda_control-msg:vel-val is deprecated.  Use panda_control-msg:vel instead.")
  (vel m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <armCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panda_control-msg:angle-val is deprecated.  Use panda_control-msg:angle instead.")
  (angle m))

(cl:ensure-generic-function 'msg_ctr-val :lambda-list '(m))
(cl:defmethod msg_ctr-val ((m <armCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panda_control-msg:msg_ctr-val is deprecated.  Use panda_control-msg:msg_ctr instead.")
  (msg_ctr m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <armCmd>) ostream)
  "Serializes a message object of type '<armCmd>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'current))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'accel))
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
   (cl:slot-value msg 'angle))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msg_ctr)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'msg_ctr)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'msg_ctr)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'msg_ctr)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <armCmd>) istream)
  "Deserializes a message object of type '<armCmd>"
  (cl:setf (cl:slot-value msg 'current) (cl:make-array 7))
  (cl:let ((vals (cl:slot-value msg 'current)))
    (cl:dotimes (i 7)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'accel) (cl:make-array 7))
  (cl:let ((vals (cl:slot-value msg 'accel)))
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
  (cl:setf (cl:slot-value msg 'angle) (cl:make-array 7))
  (cl:let ((vals (cl:slot-value msg 'angle)))
    (cl:dotimes (i 7)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msg_ctr)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'msg_ctr)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'msg_ctr)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'msg_ctr)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<armCmd>)))
  "Returns string type for a message object of type '<armCmd>"
  "panda_control/armCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'armCmd)))
  "Returns string type for a message object of type 'armCmd"
  "panda_control/armCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<armCmd>)))
  "Returns md5sum for a message object of type '<armCmd>"
  "85d597cfffd4b01859fd9247f5a0bbaf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'armCmd)))
  "Returns md5sum for a message object of type 'armCmd"
  "85d597cfffd4b01859fd9247f5a0bbaf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<armCmd>)))
  "Returns full string definition for message of type '<armCmd>"
  (cl:format cl:nil "float32[7] current #amps      ~%float32[7] accel #deg/s^2~%float32[7] vel #deg/s~%float32[7] angle #deg~%uint32 msg_ctr # count sent msgs to detected missed messages~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'armCmd)))
  "Returns full string definition for message of type 'armCmd"
  (cl:format cl:nil "float32[7] current #amps      ~%float32[7] accel #deg/s^2~%float32[7] vel #deg/s~%float32[7] angle #deg~%uint32 msg_ctr # count sent msgs to detected missed messages~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <armCmd>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'current) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'accel) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'vel) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'angle) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <armCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'armCmd
    (cl:cons ':current (current msg))
    (cl:cons ':accel (accel msg))
    (cl:cons ':vel (vel msg))
    (cl:cons ':angle (angle msg))
    (cl:cons ':msg_ctr (msg_ctr msg))
))

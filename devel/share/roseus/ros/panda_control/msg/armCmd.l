;; Auto-generated. Do not edit!


(when (boundp 'panda_control::armCmd)
  (if (not (find-package "PANDA_CONTROL"))
    (make-package "PANDA_CONTROL"))
  (shadow 'armCmd (find-package "PANDA_CONTROL")))
(unless (find-package "PANDA_CONTROL::ARMCMD")
  (make-package "PANDA_CONTROL::ARMCMD"))

(in-package "ROS")
;;//! \htmlinclude armCmd.msg.html


(defclass panda_control::armCmd
  :super ros::object
  :slots (_current _accel _vel _angle _msg_ctr ))

(defmethod panda_control::armCmd
  (:init
   (&key
    ((:current __current) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:accel __accel) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:vel __vel) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:angle __angle) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:msg_ctr __msg_ctr) 0)
    )
   (send-super :init)
   (setq _current __current)
   (setq _accel __accel)
   (setq _vel __vel)
   (setq _angle __angle)
   (setq _msg_ctr (round __msg_ctr))
   self)
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:accel
   (&optional __accel)
   (if __accel (setq _accel __accel)) _accel)
  (:vel
   (&optional __vel)
   (if __vel (setq _vel __vel)) _vel)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:msg_ctr
   (&optional __msg_ctr)
   (if __msg_ctr (setq _msg_ctr __msg_ctr)) _msg_ctr)
  (:serialization-length
   ()
   (+
    ;; float32[7] _current
    (* 4    7)
    ;; float32[7] _accel
    (* 4    7)
    ;; float32[7] _vel
    (* 4    7)
    ;; float32[7] _angle
    (* 4    7)
    ;; uint32 _msg_ctr
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[7] _current
     (dotimes (i 7)
       (sys::poke (elt _current i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[7] _accel
     (dotimes (i 7)
       (sys::poke (elt _accel i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[7] _vel
     (dotimes (i 7)
       (sys::poke (elt _vel i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[7] _angle
     (dotimes (i 7)
       (sys::poke (elt _angle i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; uint32 _msg_ctr
       (write-long _msg_ctr s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[7] _current
   (dotimes (i (length _current))
     (setf (elt _current i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[7] _accel
   (dotimes (i (length _accel))
     (setf (elt _accel i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[7] _vel
   (dotimes (i (length _vel))
     (setf (elt _vel i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[7] _angle
   (dotimes (i (length _angle))
     (setf (elt _angle i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; uint32 _msg_ctr
     (setq _msg_ctr (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get panda_control::armCmd :md5sum-) "85d597cfffd4b01859fd9247f5a0bbaf")
(setf (get panda_control::armCmd :datatype-) "panda_control/armCmd")
(setf (get panda_control::armCmd :definition-)
      "float32[7] current #amps      
float32[7] accel #deg/s^2
float32[7] vel #deg/s
float32[7] angle #deg
uint32 msg_ctr # count sent msgs to detected missed messages


")



(provide :panda_control/armCmd "85d597cfffd4b01859fd9247f5a0bbaf")



;; Auto-generated. Do not edit!


(when (boundp 'ersow_comm::data_agent1)
  (if (not (find-package "ERSOW_COMM"))
    (make-package "ERSOW_COMM"))
  (shadow 'data_agent1 (find-package "ERSOW_COMM")))
(unless (find-package "ERSOW_COMM::DATA_AGENT1")
  (make-package "ERSOW_COMM::DATA_AGENT1"))

(in-package "ROS")
;;//! \htmlinclude data_agent1.msg.html


(defclass ersow_comm::data_agent1
  :super ros::object
  :slots (_agent1_value _agent1_posx _agent1_posy _agent1_post _agent1_ballx _agent1_bally _agent1_ball_detected _agent1_pass _agent1_condition ))

(defmethod ersow_comm::data_agent1
  (:init
   (&key
    ((:agent1_value __agent1_value) 0)
    ((:agent1_posx __agent1_posx) 0)
    ((:agent1_posy __agent1_posy) 0)
    ((:agent1_post __agent1_post) 0)
    ((:agent1_ballx __agent1_ballx) 0)
    ((:agent1_bally __agent1_bally) 0)
    ((:agent1_ball_detected __agent1_ball_detected) 0)
    ((:agent1_pass __agent1_pass) 0)
    ((:agent1_condition __agent1_condition) 0)
    )
   (send-super :init)
   (setq _agent1_value (round __agent1_value))
   (setq _agent1_posx (round __agent1_posx))
   (setq _agent1_posy (round __agent1_posy))
   (setq _agent1_post (round __agent1_post))
   (setq _agent1_ballx (round __agent1_ballx))
   (setq _agent1_bally (round __agent1_bally))
   (setq _agent1_ball_detected (round __agent1_ball_detected))
   (setq _agent1_pass (round __agent1_pass))
   (setq _agent1_condition (round __agent1_condition))
   self)
  (:agent1_value
   (&optional __agent1_value)
   (if __agent1_value (setq _agent1_value __agent1_value)) _agent1_value)
  (:agent1_posx
   (&optional __agent1_posx)
   (if __agent1_posx (setq _agent1_posx __agent1_posx)) _agent1_posx)
  (:agent1_posy
   (&optional __agent1_posy)
   (if __agent1_posy (setq _agent1_posy __agent1_posy)) _agent1_posy)
  (:agent1_post
   (&optional __agent1_post)
   (if __agent1_post (setq _agent1_post __agent1_post)) _agent1_post)
  (:agent1_ballx
   (&optional __agent1_ballx)
   (if __agent1_ballx (setq _agent1_ballx __agent1_ballx)) _agent1_ballx)
  (:agent1_bally
   (&optional __agent1_bally)
   (if __agent1_bally (setq _agent1_bally __agent1_bally)) _agent1_bally)
  (:agent1_ball_detected
   (&optional __agent1_ball_detected)
   (if __agent1_ball_detected (setq _agent1_ball_detected __agent1_ball_detected)) _agent1_ball_detected)
  (:agent1_pass
   (&optional __agent1_pass)
   (if __agent1_pass (setq _agent1_pass __agent1_pass)) _agent1_pass)
  (:agent1_condition
   (&optional __agent1_condition)
   (if __agent1_condition (setq _agent1_condition __agent1_condition)) _agent1_condition)
  (:serialization-length
   ()
   (+
    ;; int32 _agent1_value
    4
    ;; uint16 _agent1_posx
    2
    ;; uint16 _agent1_posy
    2
    ;; uint16 _agent1_post
    2
    ;; uint16 _agent1_ballx
    2
    ;; uint16 _agent1_bally
    2
    ;; uint16 _agent1_ball_detected
    2
    ;; uint8 _agent1_pass
    1
    ;; uint8 _agent1_condition
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _agent1_value
       (write-long _agent1_value s)
     ;; uint16 _agent1_posx
       (write-word _agent1_posx s)
     ;; uint16 _agent1_posy
       (write-word _agent1_posy s)
     ;; uint16 _agent1_post
       (write-word _agent1_post s)
     ;; uint16 _agent1_ballx
       (write-word _agent1_ballx s)
     ;; uint16 _agent1_bally
       (write-word _agent1_bally s)
     ;; uint16 _agent1_ball_detected
       (write-word _agent1_ball_detected s)
     ;; uint8 _agent1_pass
       (write-byte _agent1_pass s)
     ;; uint8 _agent1_condition
       (write-byte _agent1_condition s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _agent1_value
     (setq _agent1_value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _agent1_posx
     (setq _agent1_posx (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _agent1_posy
     (setq _agent1_posy (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _agent1_post
     (setq _agent1_post (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _agent1_ballx
     (setq _agent1_ballx (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _agent1_bally
     (setq _agent1_bally (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _agent1_ball_detected
     (setq _agent1_ball_detected (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _agent1_pass
     (setq _agent1_pass (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _agent1_condition
     (setq _agent1_condition (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ersow_comm::data_agent1 :md5sum-) "022256aa1a3bdbeeb5a7d45acc3c370c")
(setf (get ersow_comm::data_agent1 :datatype-) "ersow_comm/data_agent1")
(setf (get ersow_comm::data_agent1 :definition-)
      "int32 agent1_value

uint16 agent1_posx
uint16 agent1_posy
uint16 agent1_post

uint16 agent1_ballx
uint16 agent1_bally
uint16 agent1_ball_detected

uint8 agent1_pass
uint8 agent1_condition
")



(provide :ersow_comm/data_agent1 "022256aa1a3bdbeeb5a7d45acc3c370c")



;; Auto-generated. Do not edit!


(when (boundp 'ersow_comm::data_agent2)
  (if (not (find-package "ERSOW_COMM"))
    (make-package "ERSOW_COMM"))
  (shadow 'data_agent2 (find-package "ERSOW_COMM")))
(unless (find-package "ERSOW_COMM::DATA_AGENT2")
  (make-package "ERSOW_COMM::DATA_AGENT2"))

(in-package "ROS")
;;//! \htmlinclude data_agent2.msg.html


(defclass ersow_comm::data_agent2
  :super ros::object
  :slots (_agent2_value _agent2_posx _agent2_posy _agent2_post _agent2_ballx _agent2_bally _agent2_ball_detected _agent2_pass _agent2_condition ))

(defmethod ersow_comm::data_agent2
  (:init
   (&key
    ((:agent2_value __agent2_value) 0)
    ((:agent2_posx __agent2_posx) 0)
    ((:agent2_posy __agent2_posy) 0)
    ((:agent2_post __agent2_post) 0)
    ((:agent2_ballx __agent2_ballx) 0)
    ((:agent2_bally __agent2_bally) 0)
    ((:agent2_ball_detected __agent2_ball_detected) 0)
    ((:agent2_pass __agent2_pass) 0)
    ((:agent2_condition __agent2_condition) 0)
    )
   (send-super :init)
   (setq _agent2_value (round __agent2_value))
   (setq _agent2_posx (round __agent2_posx))
   (setq _agent2_posy (round __agent2_posy))
   (setq _agent2_post (round __agent2_post))
   (setq _agent2_ballx (round __agent2_ballx))
   (setq _agent2_bally (round __agent2_bally))
   (setq _agent2_ball_detected (round __agent2_ball_detected))
   (setq _agent2_pass (round __agent2_pass))
   (setq _agent2_condition (round __agent2_condition))
   self)
  (:agent2_value
   (&optional __agent2_value)
   (if __agent2_value (setq _agent2_value __agent2_value)) _agent2_value)
  (:agent2_posx
   (&optional __agent2_posx)
   (if __agent2_posx (setq _agent2_posx __agent2_posx)) _agent2_posx)
  (:agent2_posy
   (&optional __agent2_posy)
   (if __agent2_posy (setq _agent2_posy __agent2_posy)) _agent2_posy)
  (:agent2_post
   (&optional __agent2_post)
   (if __agent2_post (setq _agent2_post __agent2_post)) _agent2_post)
  (:agent2_ballx
   (&optional __agent2_ballx)
   (if __agent2_ballx (setq _agent2_ballx __agent2_ballx)) _agent2_ballx)
  (:agent2_bally
   (&optional __agent2_bally)
   (if __agent2_bally (setq _agent2_bally __agent2_bally)) _agent2_bally)
  (:agent2_ball_detected
   (&optional __agent2_ball_detected)
   (if __agent2_ball_detected (setq _agent2_ball_detected __agent2_ball_detected)) _agent2_ball_detected)
  (:agent2_pass
   (&optional __agent2_pass)
   (if __agent2_pass (setq _agent2_pass __agent2_pass)) _agent2_pass)
  (:agent2_condition
   (&optional __agent2_condition)
   (if __agent2_condition (setq _agent2_condition __agent2_condition)) _agent2_condition)
  (:serialization-length
   ()
   (+
    ;; int32 _agent2_value
    4
    ;; uint16 _agent2_posx
    2
    ;; uint16 _agent2_posy
    2
    ;; uint16 _agent2_post
    2
    ;; uint16 _agent2_ballx
    2
    ;; uint16 _agent2_bally
    2
    ;; uint16 _agent2_ball_detected
    2
    ;; uint8 _agent2_pass
    1
    ;; uint8 _agent2_condition
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _agent2_value
       (write-long _agent2_value s)
     ;; uint16 _agent2_posx
       (write-word _agent2_posx s)
     ;; uint16 _agent2_posy
       (write-word _agent2_posy s)
     ;; uint16 _agent2_post
       (write-word _agent2_post s)
     ;; uint16 _agent2_ballx
       (write-word _agent2_ballx s)
     ;; uint16 _agent2_bally
       (write-word _agent2_bally s)
     ;; uint16 _agent2_ball_detected
       (write-word _agent2_ball_detected s)
     ;; uint8 _agent2_pass
       (write-byte _agent2_pass s)
     ;; uint8 _agent2_condition
       (write-byte _agent2_condition s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _agent2_value
     (setq _agent2_value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _agent2_posx
     (setq _agent2_posx (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _agent2_posy
     (setq _agent2_posy (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _agent2_post
     (setq _agent2_post (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _agent2_ballx
     (setq _agent2_ballx (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _agent2_bally
     (setq _agent2_bally (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _agent2_ball_detected
     (setq _agent2_ball_detected (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _agent2_pass
     (setq _agent2_pass (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _agent2_condition
     (setq _agent2_condition (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ersow_comm::data_agent2 :md5sum-) "75da7416470ab6003bdb7cff78be02a4")
(setf (get ersow_comm::data_agent2 :datatype-) "ersow_comm/data_agent2")
(setf (get ersow_comm::data_agent2 :definition-)
      "int32 agent2_value

uint16 agent2_posx
uint16 agent2_posy
uint16 agent2_post

uint16 agent2_ballx
uint16 agent2_bally
uint16 agent2_ball_detected

uint8 agent2_pass
uint8 agent2_condition
")



(provide :ersow_comm/data_agent2 "75da7416470ab6003bdb7cff78be02a4")



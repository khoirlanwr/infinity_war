;; Auto-generated. Do not edit!


(when (boundp 'ersow_comm::data_agent3)
  (if (not (find-package "ERSOW_COMM"))
    (make-package "ERSOW_COMM"))
  (shadow 'data_agent3 (find-package "ERSOW_COMM")))
(unless (find-package "ERSOW_COMM::DATA_AGENT3")
  (make-package "ERSOW_COMM::DATA_AGENT3"))

(in-package "ROS")
;;//! \htmlinclude data_agent3.msg.html


(defclass ersow_comm::data_agent3
  :super ros::object
  :slots (_agent3_value _agent3_posx _agent3_posy _agent3_post _agent3_ballx _agent3_bally _agent3_ball_detected _agent3_pass _agent3_condition ))

(defmethod ersow_comm::data_agent3
  (:init
   (&key
    ((:agent3_value __agent3_value) 0)
    ((:agent3_posx __agent3_posx) 0)
    ((:agent3_posy __agent3_posy) 0)
    ((:agent3_post __agent3_post) 0)
    ((:agent3_ballx __agent3_ballx) 0)
    ((:agent3_bally __agent3_bally) 0)
    ((:agent3_ball_detected __agent3_ball_detected) 0)
    ((:agent3_pass __agent3_pass) 0)
    ((:agent3_condition __agent3_condition) 0)
    )
   (send-super :init)
   (setq _agent3_value (round __agent3_value))
   (setq _agent3_posx (round __agent3_posx))
   (setq _agent3_posy (round __agent3_posy))
   (setq _agent3_post (round __agent3_post))
   (setq _agent3_ballx (round __agent3_ballx))
   (setq _agent3_bally (round __agent3_bally))
   (setq _agent3_ball_detected (round __agent3_ball_detected))
   (setq _agent3_pass (round __agent3_pass))
   (setq _agent3_condition (round __agent3_condition))
   self)
  (:agent3_value
   (&optional __agent3_value)
   (if __agent3_value (setq _agent3_value __agent3_value)) _agent3_value)
  (:agent3_posx
   (&optional __agent3_posx)
   (if __agent3_posx (setq _agent3_posx __agent3_posx)) _agent3_posx)
  (:agent3_posy
   (&optional __agent3_posy)
   (if __agent3_posy (setq _agent3_posy __agent3_posy)) _agent3_posy)
  (:agent3_post
   (&optional __agent3_post)
   (if __agent3_post (setq _agent3_post __agent3_post)) _agent3_post)
  (:agent3_ballx
   (&optional __agent3_ballx)
   (if __agent3_ballx (setq _agent3_ballx __agent3_ballx)) _agent3_ballx)
  (:agent3_bally
   (&optional __agent3_bally)
   (if __agent3_bally (setq _agent3_bally __agent3_bally)) _agent3_bally)
  (:agent3_ball_detected
   (&optional __agent3_ball_detected)
   (if __agent3_ball_detected (setq _agent3_ball_detected __agent3_ball_detected)) _agent3_ball_detected)
  (:agent3_pass
   (&optional __agent3_pass)
   (if __agent3_pass (setq _agent3_pass __agent3_pass)) _agent3_pass)
  (:agent3_condition
   (&optional __agent3_condition)
   (if __agent3_condition (setq _agent3_condition __agent3_condition)) _agent3_condition)
  (:serialization-length
   ()
   (+
    ;; int32 _agent3_value
    4
    ;; uint16 _agent3_posx
    2
    ;; uint16 _agent3_posy
    2
    ;; uint16 _agent3_post
    2
    ;; uint16 _agent3_ballx
    2
    ;; uint16 _agent3_bally
    2
    ;; uint16 _agent3_ball_detected
    2
    ;; uint8 _agent3_pass
    1
    ;; uint8 _agent3_condition
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _agent3_value
       (write-long _agent3_value s)
     ;; uint16 _agent3_posx
       (write-word _agent3_posx s)
     ;; uint16 _agent3_posy
       (write-word _agent3_posy s)
     ;; uint16 _agent3_post
       (write-word _agent3_post s)
     ;; uint16 _agent3_ballx
       (write-word _agent3_ballx s)
     ;; uint16 _agent3_bally
       (write-word _agent3_bally s)
     ;; uint16 _agent3_ball_detected
       (write-word _agent3_ball_detected s)
     ;; uint8 _agent3_pass
       (write-byte _agent3_pass s)
     ;; uint8 _agent3_condition
       (write-byte _agent3_condition s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _agent3_value
     (setq _agent3_value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _agent3_posx
     (setq _agent3_posx (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _agent3_posy
     (setq _agent3_posy (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _agent3_post
     (setq _agent3_post (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _agent3_ballx
     (setq _agent3_ballx (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _agent3_bally
     (setq _agent3_bally (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _agent3_ball_detected
     (setq _agent3_ball_detected (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _agent3_pass
     (setq _agent3_pass (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _agent3_condition
     (setq _agent3_condition (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ersow_comm::data_agent3 :md5sum-) "4236bf70894c8b40f3eee3b69d67749c")
(setf (get ersow_comm::data_agent3 :datatype-) "ersow_comm/data_agent3")
(setf (get ersow_comm::data_agent3 :definition-)
      "int32 agent3_value

uint16 agent3_posx
uint16 agent3_posy
uint16 agent3_post

uint16 agent3_ballx
uint16 agent3_bally
uint16 agent3_ball_detected

uint8 agent3_pass
uint8 agent3_condition
")



(provide :ersow_comm/data_agent3 "4236bf70894c8b40f3eee3b69d67749c")



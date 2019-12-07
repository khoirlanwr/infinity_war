;; Auto-generated. Do not edit!


(when (boundp 'ersow_comm::data_agent0)
  (if (not (find-package "ERSOW_COMM"))
    (make-package "ERSOW_COMM"))
  (shadow 'data_agent0 (find-package "ERSOW_COMM")))
(unless (find-package "ERSOW_COMM::DATA_AGENT0")
  (make-package "ERSOW_COMM::DATA_AGENT0"))

(in-package "ROS")
;;//! \htmlinclude data_agent0.msg.html


(defclass ersow_comm::data_agent0
  :super ros::object
  :slots (_agent0_value _agent0_state_okto _agent0_mode_okto _agent0_state_hendro _agent0_mode_hendro _agent0_state_jamil _agent0_mode_jamil _agent0_targetx_okto _agent0_targety_okto _agent0_targett_okto _agent0_targetx_hendro _agent0_targety_hendro _agent0_targett_hendro _agent0_targetx_jamil _agent0_targety_jamil _agent0_targett_jamil _agent0_ballx _agent0_bally _agent0_ball_detected _agent0_localization_flag _agent0_localization_posx _agent0_localization_posy _agent0_localization_post _agent0_pass _agent0_condition ))

(defmethod ersow_comm::data_agent0
  (:init
   (&key
    ((:agent0_value __agent0_value) 0)
    ((:agent0_state_okto __agent0_state_okto) 0)
    ((:agent0_mode_okto __agent0_mode_okto) 0)
    ((:agent0_state_hendro __agent0_state_hendro) 0)
    ((:agent0_mode_hendro __agent0_mode_hendro) 0)
    ((:agent0_state_jamil __agent0_state_jamil) 0)
    ((:agent0_mode_jamil __agent0_mode_jamil) 0)
    ((:agent0_targetx_okto __agent0_targetx_okto) 0)
    ((:agent0_targety_okto __agent0_targety_okto) 0)
    ((:agent0_targett_okto __agent0_targett_okto) 0)
    ((:agent0_targetx_hendro __agent0_targetx_hendro) 0)
    ((:agent0_targety_hendro __agent0_targety_hendro) 0)
    ((:agent0_targett_hendro __agent0_targett_hendro) 0)
    ((:agent0_targetx_jamil __agent0_targetx_jamil) 0)
    ((:agent0_targety_jamil __agent0_targety_jamil) 0)
    ((:agent0_targett_jamil __agent0_targett_jamil) 0)
    ((:agent0_ballx __agent0_ballx) 0)
    ((:agent0_bally __agent0_bally) 0)
    ((:agent0_ball_detected __agent0_ball_detected) 0)
    ((:agent0_localization_flag __agent0_localization_flag) 0)
    ((:agent0_localization_posx __agent0_localization_posx) 0)
    ((:agent0_localization_posy __agent0_localization_posy) 0)
    ((:agent0_localization_post __agent0_localization_post) 0)
    ((:agent0_pass __agent0_pass) 0)
    ((:agent0_condition __agent0_condition) 0)
    )
   (send-super :init)
   (setq _agent0_value (round __agent0_value))
   (setq _agent0_state_okto (round __agent0_state_okto))
   (setq _agent0_mode_okto (round __agent0_mode_okto))
   (setq _agent0_state_hendro (round __agent0_state_hendro))
   (setq _agent0_mode_hendro (round __agent0_mode_hendro))
   (setq _agent0_state_jamil (round __agent0_state_jamil))
   (setq _agent0_mode_jamil (round __agent0_mode_jamil))
   (setq _agent0_targetx_okto (round __agent0_targetx_okto))
   (setq _agent0_targety_okto (round __agent0_targety_okto))
   (setq _agent0_targett_okto (round __agent0_targett_okto))
   (setq _agent0_targetx_hendro (round __agent0_targetx_hendro))
   (setq _agent0_targety_hendro (round __agent0_targety_hendro))
   (setq _agent0_targett_hendro (round __agent0_targett_hendro))
   (setq _agent0_targetx_jamil (round __agent0_targetx_jamil))
   (setq _agent0_targety_jamil (round __agent0_targety_jamil))
   (setq _agent0_targett_jamil (round __agent0_targett_jamil))
   (setq _agent0_ballx (round __agent0_ballx))
   (setq _agent0_bally (round __agent0_bally))
   (setq _agent0_ball_detected (round __agent0_ball_detected))
   (setq _agent0_localization_flag (round __agent0_localization_flag))
   (setq _agent0_localization_posx (round __agent0_localization_posx))
   (setq _agent0_localization_posy (round __agent0_localization_posy))
   (setq _agent0_localization_post (round __agent0_localization_post))
   (setq _agent0_pass (round __agent0_pass))
   (setq _agent0_condition (round __agent0_condition))
   self)
  (:agent0_value
   (&optional __agent0_value)
   (if __agent0_value (setq _agent0_value __agent0_value)) _agent0_value)
  (:agent0_state_okto
   (&optional __agent0_state_okto)
   (if __agent0_state_okto (setq _agent0_state_okto __agent0_state_okto)) _agent0_state_okto)
  (:agent0_mode_okto
   (&optional __agent0_mode_okto)
   (if __agent0_mode_okto (setq _agent0_mode_okto __agent0_mode_okto)) _agent0_mode_okto)
  (:agent0_state_hendro
   (&optional __agent0_state_hendro)
   (if __agent0_state_hendro (setq _agent0_state_hendro __agent0_state_hendro)) _agent0_state_hendro)
  (:agent0_mode_hendro
   (&optional __agent0_mode_hendro)
   (if __agent0_mode_hendro (setq _agent0_mode_hendro __agent0_mode_hendro)) _agent0_mode_hendro)
  (:agent0_state_jamil
   (&optional __agent0_state_jamil)
   (if __agent0_state_jamil (setq _agent0_state_jamil __agent0_state_jamil)) _agent0_state_jamil)
  (:agent0_mode_jamil
   (&optional __agent0_mode_jamil)
   (if __agent0_mode_jamil (setq _agent0_mode_jamil __agent0_mode_jamil)) _agent0_mode_jamil)
  (:agent0_targetx_okto
   (&optional __agent0_targetx_okto)
   (if __agent0_targetx_okto (setq _agent0_targetx_okto __agent0_targetx_okto)) _agent0_targetx_okto)
  (:agent0_targety_okto
   (&optional __agent0_targety_okto)
   (if __agent0_targety_okto (setq _agent0_targety_okto __agent0_targety_okto)) _agent0_targety_okto)
  (:agent0_targett_okto
   (&optional __agent0_targett_okto)
   (if __agent0_targett_okto (setq _agent0_targett_okto __agent0_targett_okto)) _agent0_targett_okto)
  (:agent0_targetx_hendro
   (&optional __agent0_targetx_hendro)
   (if __agent0_targetx_hendro (setq _agent0_targetx_hendro __agent0_targetx_hendro)) _agent0_targetx_hendro)
  (:agent0_targety_hendro
   (&optional __agent0_targety_hendro)
   (if __agent0_targety_hendro (setq _agent0_targety_hendro __agent0_targety_hendro)) _agent0_targety_hendro)
  (:agent0_targett_hendro
   (&optional __agent0_targett_hendro)
   (if __agent0_targett_hendro (setq _agent0_targett_hendro __agent0_targett_hendro)) _agent0_targett_hendro)
  (:agent0_targetx_jamil
   (&optional __agent0_targetx_jamil)
   (if __agent0_targetx_jamil (setq _agent0_targetx_jamil __agent0_targetx_jamil)) _agent0_targetx_jamil)
  (:agent0_targety_jamil
   (&optional __agent0_targety_jamil)
   (if __agent0_targety_jamil (setq _agent0_targety_jamil __agent0_targety_jamil)) _agent0_targety_jamil)
  (:agent0_targett_jamil
   (&optional __agent0_targett_jamil)
   (if __agent0_targett_jamil (setq _agent0_targett_jamil __agent0_targett_jamil)) _agent0_targett_jamil)
  (:agent0_ballx
   (&optional __agent0_ballx)
   (if __agent0_ballx (setq _agent0_ballx __agent0_ballx)) _agent0_ballx)
  (:agent0_bally
   (&optional __agent0_bally)
   (if __agent0_bally (setq _agent0_bally __agent0_bally)) _agent0_bally)
  (:agent0_ball_detected
   (&optional __agent0_ball_detected)
   (if __agent0_ball_detected (setq _agent0_ball_detected __agent0_ball_detected)) _agent0_ball_detected)
  (:agent0_localization_flag
   (&optional __agent0_localization_flag)
   (if __agent0_localization_flag (setq _agent0_localization_flag __agent0_localization_flag)) _agent0_localization_flag)
  (:agent0_localization_posx
   (&optional __agent0_localization_posx)
   (if __agent0_localization_posx (setq _agent0_localization_posx __agent0_localization_posx)) _agent0_localization_posx)
  (:agent0_localization_posy
   (&optional __agent0_localization_posy)
   (if __agent0_localization_posy (setq _agent0_localization_posy __agent0_localization_posy)) _agent0_localization_posy)
  (:agent0_localization_post
   (&optional __agent0_localization_post)
   (if __agent0_localization_post (setq _agent0_localization_post __agent0_localization_post)) _agent0_localization_post)
  (:agent0_pass
   (&optional __agent0_pass)
   (if __agent0_pass (setq _agent0_pass __agent0_pass)) _agent0_pass)
  (:agent0_condition
   (&optional __agent0_condition)
   (if __agent0_condition (setq _agent0_condition __agent0_condition)) _agent0_condition)
  (:serialization-length
   ()
   (+
    ;; int32 _agent0_value
    4
    ;; uint16 _agent0_state_okto
    2
    ;; uint16 _agent0_mode_okto
    2
    ;; uint16 _agent0_state_hendro
    2
    ;; uint16 _agent0_mode_hendro
    2
    ;; uint16 _agent0_state_jamil
    2
    ;; uint16 _agent0_mode_jamil
    2
    ;; uint16 _agent0_targetx_okto
    2
    ;; uint16 _agent0_targety_okto
    2
    ;; uint16 _agent0_targett_okto
    2
    ;; uint16 _agent0_targetx_hendro
    2
    ;; uint16 _agent0_targety_hendro
    2
    ;; uint16 _agent0_targett_hendro
    2
    ;; uint16 _agent0_targetx_jamil
    2
    ;; uint16 _agent0_targety_jamil
    2
    ;; uint16 _agent0_targett_jamil
    2
    ;; uint16 _agent0_ballx
    2
    ;; uint16 _agent0_bally
    2
    ;; uint16 _agent0_ball_detected
    2
    ;; uint16 _agent0_localization_flag
    2
    ;; uint16 _agent0_localization_posx
    2
    ;; uint16 _agent0_localization_posy
    2
    ;; uint16 _agent0_localization_post
    2
    ;; uint8 _agent0_pass
    1
    ;; uint8 _agent0_condition
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _agent0_value
       (write-long _agent0_value s)
     ;; uint16 _agent0_state_okto
       (write-word _agent0_state_okto s)
     ;; uint16 _agent0_mode_okto
       (write-word _agent0_mode_okto s)
     ;; uint16 _agent0_state_hendro
       (write-word _agent0_state_hendro s)
     ;; uint16 _agent0_mode_hendro
       (write-word _agent0_mode_hendro s)
     ;; uint16 _agent0_state_jamil
       (write-word _agent0_state_jamil s)
     ;; uint16 _agent0_mode_jamil
       (write-word _agent0_mode_jamil s)
     ;; uint16 _agent0_targetx_okto
       (write-word _agent0_targetx_okto s)
     ;; uint16 _agent0_targety_okto
       (write-word _agent0_targety_okto s)
     ;; uint16 _agent0_targett_okto
       (write-word _agent0_targett_okto s)
     ;; uint16 _agent0_targetx_hendro
       (write-word _agent0_targetx_hendro s)
     ;; uint16 _agent0_targety_hendro
       (write-word _agent0_targety_hendro s)
     ;; uint16 _agent0_targett_hendro
       (write-word _agent0_targett_hendro s)
     ;; uint16 _agent0_targetx_jamil
       (write-word _agent0_targetx_jamil s)
     ;; uint16 _agent0_targety_jamil
       (write-word _agent0_targety_jamil s)
     ;; uint16 _agent0_targett_jamil
       (write-word _agent0_targett_jamil s)
     ;; uint16 _agent0_ballx
       (write-word _agent0_ballx s)
     ;; uint16 _agent0_bally
       (write-word _agent0_bally s)
     ;; uint16 _agent0_ball_detected
       (write-word _agent0_ball_detected s)
     ;; uint16 _agent0_localization_flag
       (write-word _agent0_localization_flag s)
     ;; uint16 _agent0_localization_posx
       (write-word _agent0_localization_posx s)
     ;; uint16 _agent0_localization_posy
       (write-word _agent0_localization_posy s)
     ;; uint16 _agent0_localization_post
       (write-word _agent0_localization_post s)
     ;; uint8 _agent0_pass
       (write-byte _agent0_pass s)
     ;; uint8 _agent0_condition
       (write-byte _agent0_condition s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _agent0_value
     (setq _agent0_value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _agent0_state_okto
     (setq _agent0_state_okto (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _agent0_mode_okto
     (setq _agent0_mode_okto (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _agent0_state_hendro
     (setq _agent0_state_hendro (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _agent0_mode_hendro
     (setq _agent0_mode_hendro (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _agent0_state_jamil
     (setq _agent0_state_jamil (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _agent0_mode_jamil
     (setq _agent0_mode_jamil (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _agent0_targetx_okto
     (setq _agent0_targetx_okto (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _agent0_targety_okto
     (setq _agent0_targety_okto (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _agent0_targett_okto
     (setq _agent0_targett_okto (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _agent0_targetx_hendro
     (setq _agent0_targetx_hendro (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _agent0_targety_hendro
     (setq _agent0_targety_hendro (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _agent0_targett_hendro
     (setq _agent0_targett_hendro (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _agent0_targetx_jamil
     (setq _agent0_targetx_jamil (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _agent0_targety_jamil
     (setq _agent0_targety_jamil (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _agent0_targett_jamil
     (setq _agent0_targett_jamil (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _agent0_ballx
     (setq _agent0_ballx (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _agent0_bally
     (setq _agent0_bally (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _agent0_ball_detected
     (setq _agent0_ball_detected (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _agent0_localization_flag
     (setq _agent0_localization_flag (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _agent0_localization_posx
     (setq _agent0_localization_posx (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _agent0_localization_posy
     (setq _agent0_localization_posy (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _agent0_localization_post
     (setq _agent0_localization_post (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _agent0_pass
     (setq _agent0_pass (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _agent0_condition
     (setq _agent0_condition (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ersow_comm::data_agent0 :md5sum-) "392f246593b0cd645a002aefd8084841")
(setf (get ersow_comm::data_agent0 :datatype-) "ersow_comm/data_agent0")
(setf (get ersow_comm::data_agent0 :definition-)
      "int32 agent0_value

uint16 agent0_state_okto
uint16 agent0_mode_okto

uint16 agent0_state_hendro
uint16 agent0_mode_hendro

uint16 agent0_state_jamil
uint16 agent0_mode_jamil

uint16 agent0_targetx_okto
uint16 agent0_targety_okto
uint16 agent0_targett_okto

uint16 agent0_targetx_hendro
uint16 agent0_targety_hendro
uint16 agent0_targett_hendro

uint16 agent0_targetx_jamil
uint16 agent0_targety_jamil
uint16 agent0_targett_jamil

uint16 agent0_ballx
uint16 agent0_bally
uint16 agent0_ball_detected


uint16 agent0_localization_flag
uint16 agent0_localization_posx
uint16 agent0_localization_posy
uint16 agent0_localization_post

uint8 agent0_pass
uint8 agent0_condition
")



(provide :ersow_comm/data_agent0 "392f246593b0cd645a002aefd8084841")



; Auto-generated. Do not edit!


(cl:in-package ersow_comm-msg)


;//! \htmlinclude data_agent0.msg.html

(cl:defclass <data_agent0> (roslisp-msg-protocol:ros-message)
  ((agent0_value
    :reader agent0_value
    :initarg :agent0_value
    :type cl:integer
    :initform 0)
   (agent0_state_okto
    :reader agent0_state_okto
    :initarg :agent0_state_okto
    :type cl:fixnum
    :initform 0)
   (agent0_mode_okto
    :reader agent0_mode_okto
    :initarg :agent0_mode_okto
    :type cl:fixnum
    :initform 0)
   (agent0_state_hendro
    :reader agent0_state_hendro
    :initarg :agent0_state_hendro
    :type cl:fixnum
    :initform 0)
   (agent0_mode_hendro
    :reader agent0_mode_hendro
    :initarg :agent0_mode_hendro
    :type cl:fixnum
    :initform 0)
   (agent0_state_jamil
    :reader agent0_state_jamil
    :initarg :agent0_state_jamil
    :type cl:fixnum
    :initform 0)
   (agent0_mode_jamil
    :reader agent0_mode_jamil
    :initarg :agent0_mode_jamil
    :type cl:fixnum
    :initform 0)
   (agent0_targetx_okto
    :reader agent0_targetx_okto
    :initarg :agent0_targetx_okto
    :type cl:fixnum
    :initform 0)
   (agent0_targety_okto
    :reader agent0_targety_okto
    :initarg :agent0_targety_okto
    :type cl:fixnum
    :initform 0)
   (agent0_targett_okto
    :reader agent0_targett_okto
    :initarg :agent0_targett_okto
    :type cl:fixnum
    :initform 0)
   (agent0_targetx_hendro
    :reader agent0_targetx_hendro
    :initarg :agent0_targetx_hendro
    :type cl:fixnum
    :initform 0)
   (agent0_targety_hendro
    :reader agent0_targety_hendro
    :initarg :agent0_targety_hendro
    :type cl:fixnum
    :initform 0)
   (agent0_targett_hendro
    :reader agent0_targett_hendro
    :initarg :agent0_targett_hendro
    :type cl:fixnum
    :initform 0)
   (agent0_targetx_jamil
    :reader agent0_targetx_jamil
    :initarg :agent0_targetx_jamil
    :type cl:fixnum
    :initform 0)
   (agent0_targety_jamil
    :reader agent0_targety_jamil
    :initarg :agent0_targety_jamil
    :type cl:fixnum
    :initform 0)
   (agent0_targett_jamil
    :reader agent0_targett_jamil
    :initarg :agent0_targett_jamil
    :type cl:fixnum
    :initform 0)
   (agent0_ballx
    :reader agent0_ballx
    :initarg :agent0_ballx
    :type cl:fixnum
    :initform 0)
   (agent0_bally
    :reader agent0_bally
    :initarg :agent0_bally
    :type cl:fixnum
    :initform 0)
   (agent0_ball_detected
    :reader agent0_ball_detected
    :initarg :agent0_ball_detected
    :type cl:fixnum
    :initform 0)
   (agent0_localization_flag
    :reader agent0_localization_flag
    :initarg :agent0_localization_flag
    :type cl:fixnum
    :initform 0)
   (agent0_localization_posx
    :reader agent0_localization_posx
    :initarg :agent0_localization_posx
    :type cl:fixnum
    :initform 0)
   (agent0_localization_posy
    :reader agent0_localization_posy
    :initarg :agent0_localization_posy
    :type cl:fixnum
    :initform 0)
   (agent0_localization_post
    :reader agent0_localization_post
    :initarg :agent0_localization_post
    :type cl:fixnum
    :initform 0)
   (agent0_pass
    :reader agent0_pass
    :initarg :agent0_pass
    :type cl:fixnum
    :initform 0)
   (agent0_condition
    :reader agent0_condition
    :initarg :agent0_condition
    :type cl:fixnum
    :initform 0))
)

(cl:defclass data_agent0 (<data_agent0>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <data_agent0>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'data_agent0)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ersow_comm-msg:<data_agent0> is deprecated: use ersow_comm-msg:data_agent0 instead.")))

(cl:ensure-generic-function 'agent0_value-val :lambda-list '(m))
(cl:defmethod agent0_value-val ((m <data_agent0>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ersow_comm-msg:agent0_value-val is deprecated.  Use ersow_comm-msg:agent0_value instead.")
  (agent0_value m))

(cl:ensure-generic-function 'agent0_state_okto-val :lambda-list '(m))
(cl:defmethod agent0_state_okto-val ((m <data_agent0>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ersow_comm-msg:agent0_state_okto-val is deprecated.  Use ersow_comm-msg:agent0_state_okto instead.")
  (agent0_state_okto m))

(cl:ensure-generic-function 'agent0_mode_okto-val :lambda-list '(m))
(cl:defmethod agent0_mode_okto-val ((m <data_agent0>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ersow_comm-msg:agent0_mode_okto-val is deprecated.  Use ersow_comm-msg:agent0_mode_okto instead.")
  (agent0_mode_okto m))

(cl:ensure-generic-function 'agent0_state_hendro-val :lambda-list '(m))
(cl:defmethod agent0_state_hendro-val ((m <data_agent0>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ersow_comm-msg:agent0_state_hendro-val is deprecated.  Use ersow_comm-msg:agent0_state_hendro instead.")
  (agent0_state_hendro m))

(cl:ensure-generic-function 'agent0_mode_hendro-val :lambda-list '(m))
(cl:defmethod agent0_mode_hendro-val ((m <data_agent0>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ersow_comm-msg:agent0_mode_hendro-val is deprecated.  Use ersow_comm-msg:agent0_mode_hendro instead.")
  (agent0_mode_hendro m))

(cl:ensure-generic-function 'agent0_state_jamil-val :lambda-list '(m))
(cl:defmethod agent0_state_jamil-val ((m <data_agent0>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ersow_comm-msg:agent0_state_jamil-val is deprecated.  Use ersow_comm-msg:agent0_state_jamil instead.")
  (agent0_state_jamil m))

(cl:ensure-generic-function 'agent0_mode_jamil-val :lambda-list '(m))
(cl:defmethod agent0_mode_jamil-val ((m <data_agent0>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ersow_comm-msg:agent0_mode_jamil-val is deprecated.  Use ersow_comm-msg:agent0_mode_jamil instead.")
  (agent0_mode_jamil m))

(cl:ensure-generic-function 'agent0_targetx_okto-val :lambda-list '(m))
(cl:defmethod agent0_targetx_okto-val ((m <data_agent0>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ersow_comm-msg:agent0_targetx_okto-val is deprecated.  Use ersow_comm-msg:agent0_targetx_okto instead.")
  (agent0_targetx_okto m))

(cl:ensure-generic-function 'agent0_targety_okto-val :lambda-list '(m))
(cl:defmethod agent0_targety_okto-val ((m <data_agent0>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ersow_comm-msg:agent0_targety_okto-val is deprecated.  Use ersow_comm-msg:agent0_targety_okto instead.")
  (agent0_targety_okto m))

(cl:ensure-generic-function 'agent0_targett_okto-val :lambda-list '(m))
(cl:defmethod agent0_targett_okto-val ((m <data_agent0>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ersow_comm-msg:agent0_targett_okto-val is deprecated.  Use ersow_comm-msg:agent0_targett_okto instead.")
  (agent0_targett_okto m))

(cl:ensure-generic-function 'agent0_targetx_hendro-val :lambda-list '(m))
(cl:defmethod agent0_targetx_hendro-val ((m <data_agent0>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ersow_comm-msg:agent0_targetx_hendro-val is deprecated.  Use ersow_comm-msg:agent0_targetx_hendro instead.")
  (agent0_targetx_hendro m))

(cl:ensure-generic-function 'agent0_targety_hendro-val :lambda-list '(m))
(cl:defmethod agent0_targety_hendro-val ((m <data_agent0>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ersow_comm-msg:agent0_targety_hendro-val is deprecated.  Use ersow_comm-msg:agent0_targety_hendro instead.")
  (agent0_targety_hendro m))

(cl:ensure-generic-function 'agent0_targett_hendro-val :lambda-list '(m))
(cl:defmethod agent0_targett_hendro-val ((m <data_agent0>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ersow_comm-msg:agent0_targett_hendro-val is deprecated.  Use ersow_comm-msg:agent0_targett_hendro instead.")
  (agent0_targett_hendro m))

(cl:ensure-generic-function 'agent0_targetx_jamil-val :lambda-list '(m))
(cl:defmethod agent0_targetx_jamil-val ((m <data_agent0>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ersow_comm-msg:agent0_targetx_jamil-val is deprecated.  Use ersow_comm-msg:agent0_targetx_jamil instead.")
  (agent0_targetx_jamil m))

(cl:ensure-generic-function 'agent0_targety_jamil-val :lambda-list '(m))
(cl:defmethod agent0_targety_jamil-val ((m <data_agent0>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ersow_comm-msg:agent0_targety_jamil-val is deprecated.  Use ersow_comm-msg:agent0_targety_jamil instead.")
  (agent0_targety_jamil m))

(cl:ensure-generic-function 'agent0_targett_jamil-val :lambda-list '(m))
(cl:defmethod agent0_targett_jamil-val ((m <data_agent0>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ersow_comm-msg:agent0_targett_jamil-val is deprecated.  Use ersow_comm-msg:agent0_targett_jamil instead.")
  (agent0_targett_jamil m))

(cl:ensure-generic-function 'agent0_ballx-val :lambda-list '(m))
(cl:defmethod agent0_ballx-val ((m <data_agent0>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ersow_comm-msg:agent0_ballx-val is deprecated.  Use ersow_comm-msg:agent0_ballx instead.")
  (agent0_ballx m))

(cl:ensure-generic-function 'agent0_bally-val :lambda-list '(m))
(cl:defmethod agent0_bally-val ((m <data_agent0>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ersow_comm-msg:agent0_bally-val is deprecated.  Use ersow_comm-msg:agent0_bally instead.")
  (agent0_bally m))

(cl:ensure-generic-function 'agent0_ball_detected-val :lambda-list '(m))
(cl:defmethod agent0_ball_detected-val ((m <data_agent0>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ersow_comm-msg:agent0_ball_detected-val is deprecated.  Use ersow_comm-msg:agent0_ball_detected instead.")
  (agent0_ball_detected m))

(cl:ensure-generic-function 'agent0_localization_flag-val :lambda-list '(m))
(cl:defmethod agent0_localization_flag-val ((m <data_agent0>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ersow_comm-msg:agent0_localization_flag-val is deprecated.  Use ersow_comm-msg:agent0_localization_flag instead.")
  (agent0_localization_flag m))

(cl:ensure-generic-function 'agent0_localization_posx-val :lambda-list '(m))
(cl:defmethod agent0_localization_posx-val ((m <data_agent0>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ersow_comm-msg:agent0_localization_posx-val is deprecated.  Use ersow_comm-msg:agent0_localization_posx instead.")
  (agent0_localization_posx m))

(cl:ensure-generic-function 'agent0_localization_posy-val :lambda-list '(m))
(cl:defmethod agent0_localization_posy-val ((m <data_agent0>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ersow_comm-msg:agent0_localization_posy-val is deprecated.  Use ersow_comm-msg:agent0_localization_posy instead.")
  (agent0_localization_posy m))

(cl:ensure-generic-function 'agent0_localization_post-val :lambda-list '(m))
(cl:defmethod agent0_localization_post-val ((m <data_agent0>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ersow_comm-msg:agent0_localization_post-val is deprecated.  Use ersow_comm-msg:agent0_localization_post instead.")
  (agent0_localization_post m))

(cl:ensure-generic-function 'agent0_pass-val :lambda-list '(m))
(cl:defmethod agent0_pass-val ((m <data_agent0>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ersow_comm-msg:agent0_pass-val is deprecated.  Use ersow_comm-msg:agent0_pass instead.")
  (agent0_pass m))

(cl:ensure-generic-function 'agent0_condition-val :lambda-list '(m))
(cl:defmethod agent0_condition-val ((m <data_agent0>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ersow_comm-msg:agent0_condition-val is deprecated.  Use ersow_comm-msg:agent0_condition instead.")
  (agent0_condition m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <data_agent0>) ostream)
  "Serializes a message object of type '<data_agent0>"
  (cl:let* ((signed (cl:slot-value msg 'agent0_value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent0_state_okto)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent0_state_okto)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent0_mode_okto)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent0_mode_okto)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent0_state_hendro)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent0_state_hendro)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent0_mode_hendro)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent0_mode_hendro)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent0_state_jamil)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent0_state_jamil)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent0_mode_jamil)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent0_mode_jamil)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent0_targetx_okto)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent0_targetx_okto)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent0_targety_okto)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent0_targety_okto)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent0_targett_okto)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent0_targett_okto)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent0_targetx_hendro)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent0_targetx_hendro)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent0_targety_hendro)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent0_targety_hendro)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent0_targett_hendro)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent0_targett_hendro)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent0_targetx_jamil)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent0_targetx_jamil)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent0_targety_jamil)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent0_targety_jamil)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent0_targett_jamil)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent0_targett_jamil)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent0_ballx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent0_ballx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent0_bally)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent0_bally)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent0_ball_detected)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent0_ball_detected)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent0_localization_flag)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent0_localization_flag)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent0_localization_posx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent0_localization_posx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent0_localization_posy)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent0_localization_posy)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent0_localization_post)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent0_localization_post)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent0_pass)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent0_condition)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <data_agent0>) istream)
  "Deserializes a message object of type '<data_agent0>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'agent0_value) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent0_state_okto)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent0_state_okto)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent0_mode_okto)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent0_mode_okto)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent0_state_hendro)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent0_state_hendro)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent0_mode_hendro)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent0_mode_hendro)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent0_state_jamil)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent0_state_jamil)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent0_mode_jamil)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent0_mode_jamil)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent0_targetx_okto)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent0_targetx_okto)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent0_targety_okto)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent0_targety_okto)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent0_targett_okto)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent0_targett_okto)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent0_targetx_hendro)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent0_targetx_hendro)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent0_targety_hendro)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent0_targety_hendro)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent0_targett_hendro)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent0_targett_hendro)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent0_targetx_jamil)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent0_targetx_jamil)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent0_targety_jamil)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent0_targety_jamil)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent0_targett_jamil)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent0_targett_jamil)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent0_ballx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent0_ballx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent0_bally)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent0_bally)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent0_ball_detected)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent0_ball_detected)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent0_localization_flag)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent0_localization_flag)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent0_localization_posx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent0_localization_posx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent0_localization_posy)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent0_localization_posy)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent0_localization_post)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent0_localization_post)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent0_pass)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent0_condition)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<data_agent0>)))
  "Returns string type for a message object of type '<data_agent0>"
  "ersow_comm/data_agent0")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'data_agent0)))
  "Returns string type for a message object of type 'data_agent0"
  "ersow_comm/data_agent0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<data_agent0>)))
  "Returns md5sum for a message object of type '<data_agent0>"
  "392f246593b0cd645a002aefd8084841")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'data_agent0)))
  "Returns md5sum for a message object of type 'data_agent0"
  "392f246593b0cd645a002aefd8084841")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<data_agent0>)))
  "Returns full string definition for message of type '<data_agent0>"
  (cl:format cl:nil "int32 agent0_value~%~%uint16 agent0_state_okto~%uint16 agent0_mode_okto~%~%uint16 agent0_state_hendro~%uint16 agent0_mode_hendro~%~%uint16 agent0_state_jamil~%uint16 agent0_mode_jamil~%~%uint16 agent0_targetx_okto~%uint16 agent0_targety_okto~%uint16 agent0_targett_okto~%~%uint16 agent0_targetx_hendro~%uint16 agent0_targety_hendro~%uint16 agent0_targett_hendro~%~%uint16 agent0_targetx_jamil~%uint16 agent0_targety_jamil~%uint16 agent0_targett_jamil~%~%uint16 agent0_ballx~%uint16 agent0_bally~%uint16 agent0_ball_detected~%~%~%uint16 agent0_localization_flag~%uint16 agent0_localization_posx~%uint16 agent0_localization_posy~%uint16 agent0_localization_post~%~%uint8 agent0_pass~%uint8 agent0_condition~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'data_agent0)))
  "Returns full string definition for message of type 'data_agent0"
  (cl:format cl:nil "int32 agent0_value~%~%uint16 agent0_state_okto~%uint16 agent0_mode_okto~%~%uint16 agent0_state_hendro~%uint16 agent0_mode_hendro~%~%uint16 agent0_state_jamil~%uint16 agent0_mode_jamil~%~%uint16 agent0_targetx_okto~%uint16 agent0_targety_okto~%uint16 agent0_targett_okto~%~%uint16 agent0_targetx_hendro~%uint16 agent0_targety_hendro~%uint16 agent0_targett_hendro~%~%uint16 agent0_targetx_jamil~%uint16 agent0_targety_jamil~%uint16 agent0_targett_jamil~%~%uint16 agent0_ballx~%uint16 agent0_bally~%uint16 agent0_ball_detected~%~%~%uint16 agent0_localization_flag~%uint16 agent0_localization_posx~%uint16 agent0_localization_posy~%uint16 agent0_localization_post~%~%uint8 agent0_pass~%uint8 agent0_condition~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <data_agent0>))
  (cl:+ 0
     4
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <data_agent0>))
  "Converts a ROS message object to a list"
  (cl:list 'data_agent0
    (cl:cons ':agent0_value (agent0_value msg))
    (cl:cons ':agent0_state_okto (agent0_state_okto msg))
    (cl:cons ':agent0_mode_okto (agent0_mode_okto msg))
    (cl:cons ':agent0_state_hendro (agent0_state_hendro msg))
    (cl:cons ':agent0_mode_hendro (agent0_mode_hendro msg))
    (cl:cons ':agent0_state_jamil (agent0_state_jamil msg))
    (cl:cons ':agent0_mode_jamil (agent0_mode_jamil msg))
    (cl:cons ':agent0_targetx_okto (agent0_targetx_okto msg))
    (cl:cons ':agent0_targety_okto (agent0_targety_okto msg))
    (cl:cons ':agent0_targett_okto (agent0_targett_okto msg))
    (cl:cons ':agent0_targetx_hendro (agent0_targetx_hendro msg))
    (cl:cons ':agent0_targety_hendro (agent0_targety_hendro msg))
    (cl:cons ':agent0_targett_hendro (agent0_targett_hendro msg))
    (cl:cons ':agent0_targetx_jamil (agent0_targetx_jamil msg))
    (cl:cons ':agent0_targety_jamil (agent0_targety_jamil msg))
    (cl:cons ':agent0_targett_jamil (agent0_targett_jamil msg))
    (cl:cons ':agent0_ballx (agent0_ballx msg))
    (cl:cons ':agent0_bally (agent0_bally msg))
    (cl:cons ':agent0_ball_detected (agent0_ball_detected msg))
    (cl:cons ':agent0_localization_flag (agent0_localization_flag msg))
    (cl:cons ':agent0_localization_posx (agent0_localization_posx msg))
    (cl:cons ':agent0_localization_posy (agent0_localization_posy msg))
    (cl:cons ':agent0_localization_post (agent0_localization_post msg))
    (cl:cons ':agent0_pass (agent0_pass msg))
    (cl:cons ':agent0_condition (agent0_condition msg))
))

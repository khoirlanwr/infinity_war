// Auto-generated. Do not edit!

// (in-package ersow_comm.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class data_agent0 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.agent0_value = null;
      this.agent0_state_okto = null;
      this.agent0_mode_okto = null;
      this.agent0_state_hendro = null;
      this.agent0_mode_hendro = null;
      this.agent0_state_jamil = null;
      this.agent0_mode_jamil = null;
      this.agent0_targetx_okto = null;
      this.agent0_targety_okto = null;
      this.agent0_targett_okto = null;
      this.agent0_targetx_hendro = null;
      this.agent0_targety_hendro = null;
      this.agent0_targett_hendro = null;
      this.agent0_targetx_jamil = null;
      this.agent0_targety_jamil = null;
      this.agent0_targett_jamil = null;
      this.agent0_ballx = null;
      this.agent0_bally = null;
      this.agent0_ball_detected = null;
      this.agent0_localization_flag = null;
      this.agent0_localization_posx = null;
      this.agent0_localization_posy = null;
      this.agent0_localization_post = null;
      this.agent0_pass = null;
      this.agent0_condition = null;
    }
    else {
      if (initObj.hasOwnProperty('agent0_value')) {
        this.agent0_value = initObj.agent0_value
      }
      else {
        this.agent0_value = 0;
      }
      if (initObj.hasOwnProperty('agent0_state_okto')) {
        this.agent0_state_okto = initObj.agent0_state_okto
      }
      else {
        this.agent0_state_okto = 0;
      }
      if (initObj.hasOwnProperty('agent0_mode_okto')) {
        this.agent0_mode_okto = initObj.agent0_mode_okto
      }
      else {
        this.agent0_mode_okto = 0;
      }
      if (initObj.hasOwnProperty('agent0_state_hendro')) {
        this.agent0_state_hendro = initObj.agent0_state_hendro
      }
      else {
        this.agent0_state_hendro = 0;
      }
      if (initObj.hasOwnProperty('agent0_mode_hendro')) {
        this.agent0_mode_hendro = initObj.agent0_mode_hendro
      }
      else {
        this.agent0_mode_hendro = 0;
      }
      if (initObj.hasOwnProperty('agent0_state_jamil')) {
        this.agent0_state_jamil = initObj.agent0_state_jamil
      }
      else {
        this.agent0_state_jamil = 0;
      }
      if (initObj.hasOwnProperty('agent0_mode_jamil')) {
        this.agent0_mode_jamil = initObj.agent0_mode_jamil
      }
      else {
        this.agent0_mode_jamil = 0;
      }
      if (initObj.hasOwnProperty('agent0_targetx_okto')) {
        this.agent0_targetx_okto = initObj.agent0_targetx_okto
      }
      else {
        this.agent0_targetx_okto = 0;
      }
      if (initObj.hasOwnProperty('agent0_targety_okto')) {
        this.agent0_targety_okto = initObj.agent0_targety_okto
      }
      else {
        this.agent0_targety_okto = 0;
      }
      if (initObj.hasOwnProperty('agent0_targett_okto')) {
        this.agent0_targett_okto = initObj.agent0_targett_okto
      }
      else {
        this.agent0_targett_okto = 0;
      }
      if (initObj.hasOwnProperty('agent0_targetx_hendro')) {
        this.agent0_targetx_hendro = initObj.agent0_targetx_hendro
      }
      else {
        this.agent0_targetx_hendro = 0;
      }
      if (initObj.hasOwnProperty('agent0_targety_hendro')) {
        this.agent0_targety_hendro = initObj.agent0_targety_hendro
      }
      else {
        this.agent0_targety_hendro = 0;
      }
      if (initObj.hasOwnProperty('agent0_targett_hendro')) {
        this.agent0_targett_hendro = initObj.agent0_targett_hendro
      }
      else {
        this.agent0_targett_hendro = 0;
      }
      if (initObj.hasOwnProperty('agent0_targetx_jamil')) {
        this.agent0_targetx_jamil = initObj.agent0_targetx_jamil
      }
      else {
        this.agent0_targetx_jamil = 0;
      }
      if (initObj.hasOwnProperty('agent0_targety_jamil')) {
        this.agent0_targety_jamil = initObj.agent0_targety_jamil
      }
      else {
        this.agent0_targety_jamil = 0;
      }
      if (initObj.hasOwnProperty('agent0_targett_jamil')) {
        this.agent0_targett_jamil = initObj.agent0_targett_jamil
      }
      else {
        this.agent0_targett_jamil = 0;
      }
      if (initObj.hasOwnProperty('agent0_ballx')) {
        this.agent0_ballx = initObj.agent0_ballx
      }
      else {
        this.agent0_ballx = 0;
      }
      if (initObj.hasOwnProperty('agent0_bally')) {
        this.agent0_bally = initObj.agent0_bally
      }
      else {
        this.agent0_bally = 0;
      }
      if (initObj.hasOwnProperty('agent0_ball_detected')) {
        this.agent0_ball_detected = initObj.agent0_ball_detected
      }
      else {
        this.agent0_ball_detected = 0;
      }
      if (initObj.hasOwnProperty('agent0_localization_flag')) {
        this.agent0_localization_flag = initObj.agent0_localization_flag
      }
      else {
        this.agent0_localization_flag = 0;
      }
      if (initObj.hasOwnProperty('agent0_localization_posx')) {
        this.agent0_localization_posx = initObj.agent0_localization_posx
      }
      else {
        this.agent0_localization_posx = 0;
      }
      if (initObj.hasOwnProperty('agent0_localization_posy')) {
        this.agent0_localization_posy = initObj.agent0_localization_posy
      }
      else {
        this.agent0_localization_posy = 0;
      }
      if (initObj.hasOwnProperty('agent0_localization_post')) {
        this.agent0_localization_post = initObj.agent0_localization_post
      }
      else {
        this.agent0_localization_post = 0;
      }
      if (initObj.hasOwnProperty('agent0_pass')) {
        this.agent0_pass = initObj.agent0_pass
      }
      else {
        this.agent0_pass = 0;
      }
      if (initObj.hasOwnProperty('agent0_condition')) {
        this.agent0_condition = initObj.agent0_condition
      }
      else {
        this.agent0_condition = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type data_agent0
    // Serialize message field [agent0_value]
    bufferOffset = _serializer.int32(obj.agent0_value, buffer, bufferOffset);
    // Serialize message field [agent0_state_okto]
    bufferOffset = _serializer.uint16(obj.agent0_state_okto, buffer, bufferOffset);
    // Serialize message field [agent0_mode_okto]
    bufferOffset = _serializer.uint16(obj.agent0_mode_okto, buffer, bufferOffset);
    // Serialize message field [agent0_state_hendro]
    bufferOffset = _serializer.uint16(obj.agent0_state_hendro, buffer, bufferOffset);
    // Serialize message field [agent0_mode_hendro]
    bufferOffset = _serializer.uint16(obj.agent0_mode_hendro, buffer, bufferOffset);
    // Serialize message field [agent0_state_jamil]
    bufferOffset = _serializer.uint16(obj.agent0_state_jamil, buffer, bufferOffset);
    // Serialize message field [agent0_mode_jamil]
    bufferOffset = _serializer.uint16(obj.agent0_mode_jamil, buffer, bufferOffset);
    // Serialize message field [agent0_targetx_okto]
    bufferOffset = _serializer.uint16(obj.agent0_targetx_okto, buffer, bufferOffset);
    // Serialize message field [agent0_targety_okto]
    bufferOffset = _serializer.uint16(obj.agent0_targety_okto, buffer, bufferOffset);
    // Serialize message field [agent0_targett_okto]
    bufferOffset = _serializer.uint16(obj.agent0_targett_okto, buffer, bufferOffset);
    // Serialize message field [agent0_targetx_hendro]
    bufferOffset = _serializer.uint16(obj.agent0_targetx_hendro, buffer, bufferOffset);
    // Serialize message field [agent0_targety_hendro]
    bufferOffset = _serializer.uint16(obj.agent0_targety_hendro, buffer, bufferOffset);
    // Serialize message field [agent0_targett_hendro]
    bufferOffset = _serializer.uint16(obj.agent0_targett_hendro, buffer, bufferOffset);
    // Serialize message field [agent0_targetx_jamil]
    bufferOffset = _serializer.uint16(obj.agent0_targetx_jamil, buffer, bufferOffset);
    // Serialize message field [agent0_targety_jamil]
    bufferOffset = _serializer.uint16(obj.agent0_targety_jamil, buffer, bufferOffset);
    // Serialize message field [agent0_targett_jamil]
    bufferOffset = _serializer.uint16(obj.agent0_targett_jamil, buffer, bufferOffset);
    // Serialize message field [agent0_ballx]
    bufferOffset = _serializer.uint16(obj.agent0_ballx, buffer, bufferOffset);
    // Serialize message field [agent0_bally]
    bufferOffset = _serializer.uint16(obj.agent0_bally, buffer, bufferOffset);
    // Serialize message field [agent0_ball_detected]
    bufferOffset = _serializer.uint16(obj.agent0_ball_detected, buffer, bufferOffset);
    // Serialize message field [agent0_localization_flag]
    bufferOffset = _serializer.uint16(obj.agent0_localization_flag, buffer, bufferOffset);
    // Serialize message field [agent0_localization_posx]
    bufferOffset = _serializer.uint16(obj.agent0_localization_posx, buffer, bufferOffset);
    // Serialize message field [agent0_localization_posy]
    bufferOffset = _serializer.uint16(obj.agent0_localization_posy, buffer, bufferOffset);
    // Serialize message field [agent0_localization_post]
    bufferOffset = _serializer.uint16(obj.agent0_localization_post, buffer, bufferOffset);
    // Serialize message field [agent0_pass]
    bufferOffset = _serializer.uint8(obj.agent0_pass, buffer, bufferOffset);
    // Serialize message field [agent0_condition]
    bufferOffset = _serializer.uint8(obj.agent0_condition, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type data_agent0
    let len;
    let data = new data_agent0(null);
    // Deserialize message field [agent0_value]
    data.agent0_value = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [agent0_state_okto]
    data.agent0_state_okto = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [agent0_mode_okto]
    data.agent0_mode_okto = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [agent0_state_hendro]
    data.agent0_state_hendro = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [agent0_mode_hendro]
    data.agent0_mode_hendro = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [agent0_state_jamil]
    data.agent0_state_jamil = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [agent0_mode_jamil]
    data.agent0_mode_jamil = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [agent0_targetx_okto]
    data.agent0_targetx_okto = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [agent0_targety_okto]
    data.agent0_targety_okto = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [agent0_targett_okto]
    data.agent0_targett_okto = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [agent0_targetx_hendro]
    data.agent0_targetx_hendro = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [agent0_targety_hendro]
    data.agent0_targety_hendro = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [agent0_targett_hendro]
    data.agent0_targett_hendro = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [agent0_targetx_jamil]
    data.agent0_targetx_jamil = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [agent0_targety_jamil]
    data.agent0_targety_jamil = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [agent0_targett_jamil]
    data.agent0_targett_jamil = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [agent0_ballx]
    data.agent0_ballx = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [agent0_bally]
    data.agent0_bally = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [agent0_ball_detected]
    data.agent0_ball_detected = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [agent0_localization_flag]
    data.agent0_localization_flag = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [agent0_localization_posx]
    data.agent0_localization_posx = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [agent0_localization_posy]
    data.agent0_localization_posy = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [agent0_localization_post]
    data.agent0_localization_post = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [agent0_pass]
    data.agent0_pass = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [agent0_condition]
    data.agent0_condition = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 50;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ersow_comm/data_agent0';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '392f246593b0cd645a002aefd8084841';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 agent0_value
    
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new data_agent0(null);
    if (msg.agent0_value !== undefined) {
      resolved.agent0_value = msg.agent0_value;
    }
    else {
      resolved.agent0_value = 0
    }

    if (msg.agent0_state_okto !== undefined) {
      resolved.agent0_state_okto = msg.agent0_state_okto;
    }
    else {
      resolved.agent0_state_okto = 0
    }

    if (msg.agent0_mode_okto !== undefined) {
      resolved.agent0_mode_okto = msg.agent0_mode_okto;
    }
    else {
      resolved.agent0_mode_okto = 0
    }

    if (msg.agent0_state_hendro !== undefined) {
      resolved.agent0_state_hendro = msg.agent0_state_hendro;
    }
    else {
      resolved.agent0_state_hendro = 0
    }

    if (msg.agent0_mode_hendro !== undefined) {
      resolved.agent0_mode_hendro = msg.agent0_mode_hendro;
    }
    else {
      resolved.agent0_mode_hendro = 0
    }

    if (msg.agent0_state_jamil !== undefined) {
      resolved.agent0_state_jamil = msg.agent0_state_jamil;
    }
    else {
      resolved.agent0_state_jamil = 0
    }

    if (msg.agent0_mode_jamil !== undefined) {
      resolved.agent0_mode_jamil = msg.agent0_mode_jamil;
    }
    else {
      resolved.agent0_mode_jamil = 0
    }

    if (msg.agent0_targetx_okto !== undefined) {
      resolved.agent0_targetx_okto = msg.agent0_targetx_okto;
    }
    else {
      resolved.agent0_targetx_okto = 0
    }

    if (msg.agent0_targety_okto !== undefined) {
      resolved.agent0_targety_okto = msg.agent0_targety_okto;
    }
    else {
      resolved.agent0_targety_okto = 0
    }

    if (msg.agent0_targett_okto !== undefined) {
      resolved.agent0_targett_okto = msg.agent0_targett_okto;
    }
    else {
      resolved.agent0_targett_okto = 0
    }

    if (msg.agent0_targetx_hendro !== undefined) {
      resolved.agent0_targetx_hendro = msg.agent0_targetx_hendro;
    }
    else {
      resolved.agent0_targetx_hendro = 0
    }

    if (msg.agent0_targety_hendro !== undefined) {
      resolved.agent0_targety_hendro = msg.agent0_targety_hendro;
    }
    else {
      resolved.agent0_targety_hendro = 0
    }

    if (msg.agent0_targett_hendro !== undefined) {
      resolved.agent0_targett_hendro = msg.agent0_targett_hendro;
    }
    else {
      resolved.agent0_targett_hendro = 0
    }

    if (msg.agent0_targetx_jamil !== undefined) {
      resolved.agent0_targetx_jamil = msg.agent0_targetx_jamil;
    }
    else {
      resolved.agent0_targetx_jamil = 0
    }

    if (msg.agent0_targety_jamil !== undefined) {
      resolved.agent0_targety_jamil = msg.agent0_targety_jamil;
    }
    else {
      resolved.agent0_targety_jamil = 0
    }

    if (msg.agent0_targett_jamil !== undefined) {
      resolved.agent0_targett_jamil = msg.agent0_targett_jamil;
    }
    else {
      resolved.agent0_targett_jamil = 0
    }

    if (msg.agent0_ballx !== undefined) {
      resolved.agent0_ballx = msg.agent0_ballx;
    }
    else {
      resolved.agent0_ballx = 0
    }

    if (msg.agent0_bally !== undefined) {
      resolved.agent0_bally = msg.agent0_bally;
    }
    else {
      resolved.agent0_bally = 0
    }

    if (msg.agent0_ball_detected !== undefined) {
      resolved.agent0_ball_detected = msg.agent0_ball_detected;
    }
    else {
      resolved.agent0_ball_detected = 0
    }

    if (msg.agent0_localization_flag !== undefined) {
      resolved.agent0_localization_flag = msg.agent0_localization_flag;
    }
    else {
      resolved.agent0_localization_flag = 0
    }

    if (msg.agent0_localization_posx !== undefined) {
      resolved.agent0_localization_posx = msg.agent0_localization_posx;
    }
    else {
      resolved.agent0_localization_posx = 0
    }

    if (msg.agent0_localization_posy !== undefined) {
      resolved.agent0_localization_posy = msg.agent0_localization_posy;
    }
    else {
      resolved.agent0_localization_posy = 0
    }

    if (msg.agent0_localization_post !== undefined) {
      resolved.agent0_localization_post = msg.agent0_localization_post;
    }
    else {
      resolved.agent0_localization_post = 0
    }

    if (msg.agent0_pass !== undefined) {
      resolved.agent0_pass = msg.agent0_pass;
    }
    else {
      resolved.agent0_pass = 0
    }

    if (msg.agent0_condition !== undefined) {
      resolved.agent0_condition = msg.agent0_condition;
    }
    else {
      resolved.agent0_condition = 0
    }

    return resolved;
    }
};

module.exports = data_agent0;

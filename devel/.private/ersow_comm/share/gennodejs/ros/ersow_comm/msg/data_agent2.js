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

class data_agent2 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.agent2_value = null;
      this.agent2_posx = null;
      this.agent2_posy = null;
      this.agent2_post = null;
      this.agent2_ballx = null;
      this.agent2_bally = null;
      this.agent2_ball_detected = null;
      this.agent2_pass = null;
      this.agent2_condition = null;
    }
    else {
      if (initObj.hasOwnProperty('agent2_value')) {
        this.agent2_value = initObj.agent2_value
      }
      else {
        this.agent2_value = 0;
      }
      if (initObj.hasOwnProperty('agent2_posx')) {
        this.agent2_posx = initObj.agent2_posx
      }
      else {
        this.agent2_posx = 0;
      }
      if (initObj.hasOwnProperty('agent2_posy')) {
        this.agent2_posy = initObj.agent2_posy
      }
      else {
        this.agent2_posy = 0;
      }
      if (initObj.hasOwnProperty('agent2_post')) {
        this.agent2_post = initObj.agent2_post
      }
      else {
        this.agent2_post = 0;
      }
      if (initObj.hasOwnProperty('agent2_ballx')) {
        this.agent2_ballx = initObj.agent2_ballx
      }
      else {
        this.agent2_ballx = 0;
      }
      if (initObj.hasOwnProperty('agent2_bally')) {
        this.agent2_bally = initObj.agent2_bally
      }
      else {
        this.agent2_bally = 0;
      }
      if (initObj.hasOwnProperty('agent2_ball_detected')) {
        this.agent2_ball_detected = initObj.agent2_ball_detected
      }
      else {
        this.agent2_ball_detected = 0;
      }
      if (initObj.hasOwnProperty('agent2_pass')) {
        this.agent2_pass = initObj.agent2_pass
      }
      else {
        this.agent2_pass = 0;
      }
      if (initObj.hasOwnProperty('agent2_condition')) {
        this.agent2_condition = initObj.agent2_condition
      }
      else {
        this.agent2_condition = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type data_agent2
    // Serialize message field [agent2_value]
    bufferOffset = _serializer.int32(obj.agent2_value, buffer, bufferOffset);
    // Serialize message field [agent2_posx]
    bufferOffset = _serializer.uint16(obj.agent2_posx, buffer, bufferOffset);
    // Serialize message field [agent2_posy]
    bufferOffset = _serializer.uint16(obj.agent2_posy, buffer, bufferOffset);
    // Serialize message field [agent2_post]
    bufferOffset = _serializer.uint16(obj.agent2_post, buffer, bufferOffset);
    // Serialize message field [agent2_ballx]
    bufferOffset = _serializer.uint16(obj.agent2_ballx, buffer, bufferOffset);
    // Serialize message field [agent2_bally]
    bufferOffset = _serializer.uint16(obj.agent2_bally, buffer, bufferOffset);
    // Serialize message field [agent2_ball_detected]
    bufferOffset = _serializer.uint16(obj.agent2_ball_detected, buffer, bufferOffset);
    // Serialize message field [agent2_pass]
    bufferOffset = _serializer.uint8(obj.agent2_pass, buffer, bufferOffset);
    // Serialize message field [agent2_condition]
    bufferOffset = _serializer.uint8(obj.agent2_condition, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type data_agent2
    let len;
    let data = new data_agent2(null);
    // Deserialize message field [agent2_value]
    data.agent2_value = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [agent2_posx]
    data.agent2_posx = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [agent2_posy]
    data.agent2_posy = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [agent2_post]
    data.agent2_post = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [agent2_ballx]
    data.agent2_ballx = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [agent2_bally]
    data.agent2_bally = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [agent2_ball_detected]
    data.agent2_ball_detected = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [agent2_pass]
    data.agent2_pass = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [agent2_condition]
    data.agent2_condition = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ersow_comm/data_agent2';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '75da7416470ab6003bdb7cff78be02a4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 agent2_value
    
    uint16 agent2_posx
    uint16 agent2_posy
    uint16 agent2_post
    
    uint16 agent2_ballx
    uint16 agent2_bally
    uint16 agent2_ball_detected
    
    uint8 agent2_pass
    uint8 agent2_condition
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new data_agent2(null);
    if (msg.agent2_value !== undefined) {
      resolved.agent2_value = msg.agent2_value;
    }
    else {
      resolved.agent2_value = 0
    }

    if (msg.agent2_posx !== undefined) {
      resolved.agent2_posx = msg.agent2_posx;
    }
    else {
      resolved.agent2_posx = 0
    }

    if (msg.agent2_posy !== undefined) {
      resolved.agent2_posy = msg.agent2_posy;
    }
    else {
      resolved.agent2_posy = 0
    }

    if (msg.agent2_post !== undefined) {
      resolved.agent2_post = msg.agent2_post;
    }
    else {
      resolved.agent2_post = 0
    }

    if (msg.agent2_ballx !== undefined) {
      resolved.agent2_ballx = msg.agent2_ballx;
    }
    else {
      resolved.agent2_ballx = 0
    }

    if (msg.agent2_bally !== undefined) {
      resolved.agent2_bally = msg.agent2_bally;
    }
    else {
      resolved.agent2_bally = 0
    }

    if (msg.agent2_ball_detected !== undefined) {
      resolved.agent2_ball_detected = msg.agent2_ball_detected;
    }
    else {
      resolved.agent2_ball_detected = 0
    }

    if (msg.agent2_pass !== undefined) {
      resolved.agent2_pass = msg.agent2_pass;
    }
    else {
      resolved.agent2_pass = 0
    }

    if (msg.agent2_condition !== undefined) {
      resolved.agent2_condition = msg.agent2_condition;
    }
    else {
      resolved.agent2_condition = 0
    }

    return resolved;
    }
};

module.exports = data_agent2;

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

class data_agent1 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.agent1_value = null;
      this.agent1_posx = null;
      this.agent1_posy = null;
      this.agent1_post = null;
      this.agent1_ballx = null;
      this.agent1_bally = null;
      this.agent1_ball_detected = null;
      this.agent1_pass = null;
      this.agent1_condition = null;
    }
    else {
      if (initObj.hasOwnProperty('agent1_value')) {
        this.agent1_value = initObj.agent1_value
      }
      else {
        this.agent1_value = 0;
      }
      if (initObj.hasOwnProperty('agent1_posx')) {
        this.agent1_posx = initObj.agent1_posx
      }
      else {
        this.agent1_posx = 0;
      }
      if (initObj.hasOwnProperty('agent1_posy')) {
        this.agent1_posy = initObj.agent1_posy
      }
      else {
        this.agent1_posy = 0;
      }
      if (initObj.hasOwnProperty('agent1_post')) {
        this.agent1_post = initObj.agent1_post
      }
      else {
        this.agent1_post = 0;
      }
      if (initObj.hasOwnProperty('agent1_ballx')) {
        this.agent1_ballx = initObj.agent1_ballx
      }
      else {
        this.agent1_ballx = 0;
      }
      if (initObj.hasOwnProperty('agent1_bally')) {
        this.agent1_bally = initObj.agent1_bally
      }
      else {
        this.agent1_bally = 0;
      }
      if (initObj.hasOwnProperty('agent1_ball_detected')) {
        this.agent1_ball_detected = initObj.agent1_ball_detected
      }
      else {
        this.agent1_ball_detected = 0;
      }
      if (initObj.hasOwnProperty('agent1_pass')) {
        this.agent1_pass = initObj.agent1_pass
      }
      else {
        this.agent1_pass = 0;
      }
      if (initObj.hasOwnProperty('agent1_condition')) {
        this.agent1_condition = initObj.agent1_condition
      }
      else {
        this.agent1_condition = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type data_agent1
    // Serialize message field [agent1_value]
    bufferOffset = _serializer.int32(obj.agent1_value, buffer, bufferOffset);
    // Serialize message field [agent1_posx]
    bufferOffset = _serializer.uint16(obj.agent1_posx, buffer, bufferOffset);
    // Serialize message field [agent1_posy]
    bufferOffset = _serializer.uint16(obj.agent1_posy, buffer, bufferOffset);
    // Serialize message field [agent1_post]
    bufferOffset = _serializer.uint16(obj.agent1_post, buffer, bufferOffset);
    // Serialize message field [agent1_ballx]
    bufferOffset = _serializer.uint16(obj.agent1_ballx, buffer, bufferOffset);
    // Serialize message field [agent1_bally]
    bufferOffset = _serializer.uint16(obj.agent1_bally, buffer, bufferOffset);
    // Serialize message field [agent1_ball_detected]
    bufferOffset = _serializer.uint16(obj.agent1_ball_detected, buffer, bufferOffset);
    // Serialize message field [agent1_pass]
    bufferOffset = _serializer.uint8(obj.agent1_pass, buffer, bufferOffset);
    // Serialize message field [agent1_condition]
    bufferOffset = _serializer.uint8(obj.agent1_condition, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type data_agent1
    let len;
    let data = new data_agent1(null);
    // Deserialize message field [agent1_value]
    data.agent1_value = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [agent1_posx]
    data.agent1_posx = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [agent1_posy]
    data.agent1_posy = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [agent1_post]
    data.agent1_post = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [agent1_ballx]
    data.agent1_ballx = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [agent1_bally]
    data.agent1_bally = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [agent1_ball_detected]
    data.agent1_ball_detected = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [agent1_pass]
    data.agent1_pass = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [agent1_condition]
    data.agent1_condition = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ersow_comm/data_agent1';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '022256aa1a3bdbeeb5a7d45acc3c370c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 agent1_value
    
    uint16 agent1_posx
    uint16 agent1_posy
    uint16 agent1_post
    
    uint16 agent1_ballx
    uint16 agent1_bally
    uint16 agent1_ball_detected
    
    uint8 agent1_pass
    uint8 agent1_condition
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new data_agent1(null);
    if (msg.agent1_value !== undefined) {
      resolved.agent1_value = msg.agent1_value;
    }
    else {
      resolved.agent1_value = 0
    }

    if (msg.agent1_posx !== undefined) {
      resolved.agent1_posx = msg.agent1_posx;
    }
    else {
      resolved.agent1_posx = 0
    }

    if (msg.agent1_posy !== undefined) {
      resolved.agent1_posy = msg.agent1_posy;
    }
    else {
      resolved.agent1_posy = 0
    }

    if (msg.agent1_post !== undefined) {
      resolved.agent1_post = msg.agent1_post;
    }
    else {
      resolved.agent1_post = 0
    }

    if (msg.agent1_ballx !== undefined) {
      resolved.agent1_ballx = msg.agent1_ballx;
    }
    else {
      resolved.agent1_ballx = 0
    }

    if (msg.agent1_bally !== undefined) {
      resolved.agent1_bally = msg.agent1_bally;
    }
    else {
      resolved.agent1_bally = 0
    }

    if (msg.agent1_ball_detected !== undefined) {
      resolved.agent1_ball_detected = msg.agent1_ball_detected;
    }
    else {
      resolved.agent1_ball_detected = 0
    }

    if (msg.agent1_pass !== undefined) {
      resolved.agent1_pass = msg.agent1_pass;
    }
    else {
      resolved.agent1_pass = 0
    }

    if (msg.agent1_condition !== undefined) {
      resolved.agent1_condition = msg.agent1_condition;
    }
    else {
      resolved.agent1_condition = 0
    }

    return resolved;
    }
};

module.exports = data_agent1;

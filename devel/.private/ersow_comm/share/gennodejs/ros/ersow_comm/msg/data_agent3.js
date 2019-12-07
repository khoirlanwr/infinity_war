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

class data_agent3 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.agent3_value = null;
      this.agent3_posx = null;
      this.agent3_posy = null;
      this.agent3_post = null;
      this.agent3_ballx = null;
      this.agent3_bally = null;
      this.agent3_ball_detected = null;
      this.agent3_pass = null;
      this.agent3_condition = null;
    }
    else {
      if (initObj.hasOwnProperty('agent3_value')) {
        this.agent3_value = initObj.agent3_value
      }
      else {
        this.agent3_value = 0;
      }
      if (initObj.hasOwnProperty('agent3_posx')) {
        this.agent3_posx = initObj.agent3_posx
      }
      else {
        this.agent3_posx = 0;
      }
      if (initObj.hasOwnProperty('agent3_posy')) {
        this.agent3_posy = initObj.agent3_posy
      }
      else {
        this.agent3_posy = 0;
      }
      if (initObj.hasOwnProperty('agent3_post')) {
        this.agent3_post = initObj.agent3_post
      }
      else {
        this.agent3_post = 0;
      }
      if (initObj.hasOwnProperty('agent3_ballx')) {
        this.agent3_ballx = initObj.agent3_ballx
      }
      else {
        this.agent3_ballx = 0;
      }
      if (initObj.hasOwnProperty('agent3_bally')) {
        this.agent3_bally = initObj.agent3_bally
      }
      else {
        this.agent3_bally = 0;
      }
      if (initObj.hasOwnProperty('agent3_ball_detected')) {
        this.agent3_ball_detected = initObj.agent3_ball_detected
      }
      else {
        this.agent3_ball_detected = 0;
      }
      if (initObj.hasOwnProperty('agent3_pass')) {
        this.agent3_pass = initObj.agent3_pass
      }
      else {
        this.agent3_pass = 0;
      }
      if (initObj.hasOwnProperty('agent3_condition')) {
        this.agent3_condition = initObj.agent3_condition
      }
      else {
        this.agent3_condition = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type data_agent3
    // Serialize message field [agent3_value]
    bufferOffset = _serializer.int32(obj.agent3_value, buffer, bufferOffset);
    // Serialize message field [agent3_posx]
    bufferOffset = _serializer.uint16(obj.agent3_posx, buffer, bufferOffset);
    // Serialize message field [agent3_posy]
    bufferOffset = _serializer.uint16(obj.agent3_posy, buffer, bufferOffset);
    // Serialize message field [agent3_post]
    bufferOffset = _serializer.uint16(obj.agent3_post, buffer, bufferOffset);
    // Serialize message field [agent3_ballx]
    bufferOffset = _serializer.uint16(obj.agent3_ballx, buffer, bufferOffset);
    // Serialize message field [agent3_bally]
    bufferOffset = _serializer.uint16(obj.agent3_bally, buffer, bufferOffset);
    // Serialize message field [agent3_ball_detected]
    bufferOffset = _serializer.uint16(obj.agent3_ball_detected, buffer, bufferOffset);
    // Serialize message field [agent3_pass]
    bufferOffset = _serializer.uint8(obj.agent3_pass, buffer, bufferOffset);
    // Serialize message field [agent3_condition]
    bufferOffset = _serializer.uint8(obj.agent3_condition, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type data_agent3
    let len;
    let data = new data_agent3(null);
    // Deserialize message field [agent3_value]
    data.agent3_value = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [agent3_posx]
    data.agent3_posx = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [agent3_posy]
    data.agent3_posy = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [agent3_post]
    data.agent3_post = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [agent3_ballx]
    data.agent3_ballx = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [agent3_bally]
    data.agent3_bally = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [agent3_ball_detected]
    data.agent3_ball_detected = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [agent3_pass]
    data.agent3_pass = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [agent3_condition]
    data.agent3_condition = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ersow_comm/data_agent3';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4236bf70894c8b40f3eee3b69d67749c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 agent3_value
    
    uint16 agent3_posx
    uint16 agent3_posy
    uint16 agent3_post
    
    uint16 agent3_ballx
    uint16 agent3_bally
    uint16 agent3_ball_detected
    
    uint8 agent3_pass
    uint8 agent3_condition
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new data_agent3(null);
    if (msg.agent3_value !== undefined) {
      resolved.agent3_value = msg.agent3_value;
    }
    else {
      resolved.agent3_value = 0
    }

    if (msg.agent3_posx !== undefined) {
      resolved.agent3_posx = msg.agent3_posx;
    }
    else {
      resolved.agent3_posx = 0
    }

    if (msg.agent3_posy !== undefined) {
      resolved.agent3_posy = msg.agent3_posy;
    }
    else {
      resolved.agent3_posy = 0
    }

    if (msg.agent3_post !== undefined) {
      resolved.agent3_post = msg.agent3_post;
    }
    else {
      resolved.agent3_post = 0
    }

    if (msg.agent3_ballx !== undefined) {
      resolved.agent3_ballx = msg.agent3_ballx;
    }
    else {
      resolved.agent3_ballx = 0
    }

    if (msg.agent3_bally !== undefined) {
      resolved.agent3_bally = msg.agent3_bally;
    }
    else {
      resolved.agent3_bally = 0
    }

    if (msg.agent3_ball_detected !== undefined) {
      resolved.agent3_ball_detected = msg.agent3_ball_detected;
    }
    else {
      resolved.agent3_ball_detected = 0
    }

    if (msg.agent3_pass !== undefined) {
      resolved.agent3_pass = msg.agent3_pass;
    }
    else {
      resolved.agent3_pass = 0
    }

    if (msg.agent3_condition !== undefined) {
      resolved.agent3_condition = msg.agent3_condition;
    }
    else {
      resolved.agent3_condition = 0
    }

    return resolved;
    }
};

module.exports = data_agent3;

// Auto-generated. Do not edit!

// (in-package panda_control.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class armCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.current = null;
      this.accel = null;
      this.vel = null;
      this.angle = null;
      this.msg_ctr = null;
    }
    else {
      if (initObj.hasOwnProperty('current')) {
        this.current = initObj.current
      }
      else {
        this.current = new Array(7).fill(0);
      }
      if (initObj.hasOwnProperty('accel')) {
        this.accel = initObj.accel
      }
      else {
        this.accel = new Array(7).fill(0);
      }
      if (initObj.hasOwnProperty('vel')) {
        this.vel = initObj.vel
      }
      else {
        this.vel = new Array(7).fill(0);
      }
      if (initObj.hasOwnProperty('angle')) {
        this.angle = initObj.angle
      }
      else {
        this.angle = new Array(7).fill(0);
      }
      if (initObj.hasOwnProperty('msg_ctr')) {
        this.msg_ctr = initObj.msg_ctr
      }
      else {
        this.msg_ctr = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type armCmd
    // Check that the constant length array field [current] has the right length
    if (obj.current.length !== 7) {
      throw new Error('Unable to serialize array field current - length must be 7')
    }
    // Serialize message field [current]
    bufferOffset = _arraySerializer.float32(obj.current, buffer, bufferOffset, 7);
    // Check that the constant length array field [accel] has the right length
    if (obj.accel.length !== 7) {
      throw new Error('Unable to serialize array field accel - length must be 7')
    }
    // Serialize message field [accel]
    bufferOffset = _arraySerializer.float32(obj.accel, buffer, bufferOffset, 7);
    // Check that the constant length array field [vel] has the right length
    if (obj.vel.length !== 7) {
      throw new Error('Unable to serialize array field vel - length must be 7')
    }
    // Serialize message field [vel]
    bufferOffset = _arraySerializer.float32(obj.vel, buffer, bufferOffset, 7);
    // Check that the constant length array field [angle] has the right length
    if (obj.angle.length !== 7) {
      throw new Error('Unable to serialize array field angle - length must be 7')
    }
    // Serialize message field [angle]
    bufferOffset = _arraySerializer.float32(obj.angle, buffer, bufferOffset, 7);
    // Serialize message field [msg_ctr]
    bufferOffset = _serializer.uint32(obj.msg_ctr, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type armCmd
    let len;
    let data = new armCmd(null);
    // Deserialize message field [current]
    data.current = _arrayDeserializer.float32(buffer, bufferOffset, 7)
    // Deserialize message field [accel]
    data.accel = _arrayDeserializer.float32(buffer, bufferOffset, 7)
    // Deserialize message field [vel]
    data.vel = _arrayDeserializer.float32(buffer, bufferOffset, 7)
    // Deserialize message field [angle]
    data.angle = _arrayDeserializer.float32(buffer, bufferOffset, 7)
    // Deserialize message field [msg_ctr]
    data.msg_ctr = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 116;
  }

  static datatype() {
    // Returns string type for a message object
    return 'panda_control/armCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '85d597cfffd4b01859fd9247f5a0bbaf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[7] current #amps      
    float32[7] accel #deg/s^2
    float32[7] vel #deg/s
    float32[7] angle #deg
    uint32 msg_ctr # count sent msgs to detected missed messages
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new armCmd(null);
    if (msg.current !== undefined) {
      resolved.current = msg.current;
    }
    else {
      resolved.current = new Array(7).fill(0)
    }

    if (msg.accel !== undefined) {
      resolved.accel = msg.accel;
    }
    else {
      resolved.accel = new Array(7).fill(0)
    }

    if (msg.vel !== undefined) {
      resolved.vel = msg.vel;
    }
    else {
      resolved.vel = new Array(7).fill(0)
    }

    if (msg.angle !== undefined) {
      resolved.angle = msg.angle;
    }
    else {
      resolved.angle = new Array(7).fill(0)
    }

    if (msg.msg_ctr !== undefined) {
      resolved.msg_ctr = msg.msg_ctr;
    }
    else {
      resolved.msg_ctr = 0
    }

    return resolved;
    }
};

module.exports = armCmd;

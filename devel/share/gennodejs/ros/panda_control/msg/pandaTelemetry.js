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

class pandaTelemetry {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.angle = null;
      this.vel = null;
      this.current = null;
      this.startSyncTime = null;
      this.isrTicks = null;
      this.bufferHealth = null;
    }
    else {
      if (initObj.hasOwnProperty('angle')) {
        this.angle = initObj.angle
      }
      else {
        this.angle = new Array(7).fill(0);
      }
      if (initObj.hasOwnProperty('vel')) {
        this.vel = initObj.vel
      }
      else {
        this.vel = new Array(7).fill(0);
      }
      if (initObj.hasOwnProperty('current')) {
        this.current = initObj.current
      }
      else {
        this.current = new Array(7).fill(0);
      }
      if (initObj.hasOwnProperty('startSyncTime')) {
        this.startSyncTime = initObj.startSyncTime
      }
      else {
        this.startSyncTime = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('isrTicks')) {
        this.isrTicks = initObj.isrTicks
      }
      else {
        this.isrTicks = 0;
      }
      if (initObj.hasOwnProperty('bufferHealth')) {
        this.bufferHealth = initObj.bufferHealth
      }
      else {
        this.bufferHealth = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type pandaTelemetry
    // Check that the constant length array field [angle] has the right length
    if (obj.angle.length !== 7) {
      throw new Error('Unable to serialize array field angle - length must be 7')
    }
    // Serialize message field [angle]
    bufferOffset = _arraySerializer.float32(obj.angle, buffer, bufferOffset, 7);
    // Check that the constant length array field [vel] has the right length
    if (obj.vel.length !== 7) {
      throw new Error('Unable to serialize array field vel - length must be 7')
    }
    // Serialize message field [vel]
    bufferOffset = _arraySerializer.float32(obj.vel, buffer, bufferOffset, 7);
    // Check that the constant length array field [current] has the right length
    if (obj.current.length !== 7) {
      throw new Error('Unable to serialize array field current - length must be 7')
    }
    // Serialize message field [current]
    bufferOffset = _arraySerializer.float32(obj.current, buffer, bufferOffset, 7);
    // Serialize message field [startSyncTime]
    bufferOffset = _serializer.time(obj.startSyncTime, buffer, bufferOffset);
    // Serialize message field [isrTicks]
    bufferOffset = _serializer.uint32(obj.isrTicks, buffer, bufferOffset);
    // Serialize message field [bufferHealth]
    bufferOffset = _serializer.uint8(obj.bufferHealth, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type pandaTelemetry
    let len;
    let data = new pandaTelemetry(null);
    // Deserialize message field [angle]
    data.angle = _arrayDeserializer.float32(buffer, bufferOffset, 7)
    // Deserialize message field [vel]
    data.vel = _arrayDeserializer.float32(buffer, bufferOffset, 7)
    // Deserialize message field [current]
    data.current = _arrayDeserializer.float32(buffer, bufferOffset, 7)
    // Deserialize message field [startSyncTime]
    data.startSyncTime = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [isrTicks]
    data.isrTicks = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [bufferHealth]
    data.bufferHealth = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 97;
  }

  static datatype() {
    // Returns string type for a message object
    return 'panda_control/pandaTelemetry';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8dd19a824eebf0c213861bf1c66e6f1e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[7] angle # degrees
    float32[7] vel # deg/s
    float32[7] current # amps 
    time startSyncTime 
    uint32 isrTicks # this would overflow if the robot is left on for 497 days straight at 100 hz 
    uint8 bufferHealth
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new pandaTelemetry(null);
    if (msg.angle !== undefined) {
      resolved.angle = msg.angle;
    }
    else {
      resolved.angle = new Array(7).fill(0)
    }

    if (msg.vel !== undefined) {
      resolved.vel = msg.vel;
    }
    else {
      resolved.vel = new Array(7).fill(0)
    }

    if (msg.current !== undefined) {
      resolved.current = msg.current;
    }
    else {
      resolved.current = new Array(7).fill(0)
    }

    if (msg.startSyncTime !== undefined) {
      resolved.startSyncTime = msg.startSyncTime;
    }
    else {
      resolved.startSyncTime = {secs: 0, nsecs: 0}
    }

    if (msg.isrTicks !== undefined) {
      resolved.isrTicks = msg.isrTicks;
    }
    else {
      resolved.isrTicks = 0
    }

    if (msg.bufferHealth !== undefined) {
      resolved.bufferHealth = msg.bufferHealth;
    }
    else {
      resolved.bufferHealth = 0
    }

    return resolved;
    }
};

module.exports = pandaTelemetry;

// Auto-generated. Do not edit!

// (in-package extendedkalmanfilters.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RMSError {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x_err_ = null;
      this.y_err_ = null;
      this.vx_err_ = null;
      this.vy_err_ = null;
    }
    else {
      if (initObj.hasOwnProperty('x_err_')) {
        this.x_err_ = initObj.x_err_
      }
      else {
        this.x_err_ = 0.0;
      }
      if (initObj.hasOwnProperty('y_err_')) {
        this.y_err_ = initObj.y_err_
      }
      else {
        this.y_err_ = 0.0;
      }
      if (initObj.hasOwnProperty('vx_err_')) {
        this.vx_err_ = initObj.vx_err_
      }
      else {
        this.vx_err_ = 0.0;
      }
      if (initObj.hasOwnProperty('vy_err_')) {
        this.vy_err_ = initObj.vy_err_
      }
      else {
        this.vy_err_ = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RMSError
    // Serialize message field [x_err_]
    bufferOffset = _serializer.float64(obj.x_err_, buffer, bufferOffset);
    // Serialize message field [y_err_]
    bufferOffset = _serializer.float64(obj.y_err_, buffer, bufferOffset);
    // Serialize message field [vx_err_]
    bufferOffset = _serializer.float64(obj.vx_err_, buffer, bufferOffset);
    // Serialize message field [vy_err_]
    bufferOffset = _serializer.float64(obj.vy_err_, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RMSError
    let len;
    let data = new RMSError(null);
    // Deserialize message field [x_err_]
    data.x_err_ = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y_err_]
    data.y_err_ = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vx_err_]
    data.vx_err_ = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vy_err_]
    data.vy_err_ = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'extendedkalmanfilters/RMSError';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '80ba0cfe9e605460189c638c99edde45';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 x_err_
    float64 y_err_
    float64 vx_err_
    float64 vy_err_
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RMSError(null);
    if (msg.x_err_ !== undefined) {
      resolved.x_err_ = msg.x_err_;
    }
    else {
      resolved.x_err_ = 0.0
    }

    if (msg.y_err_ !== undefined) {
      resolved.y_err_ = msg.y_err_;
    }
    else {
      resolved.y_err_ = 0.0
    }

    if (msg.vx_err_ !== undefined) {
      resolved.vx_err_ = msg.vx_err_;
    }
    else {
      resolved.vx_err_ = 0.0
    }

    if (msg.vy_err_ !== undefined) {
      resolved.vy_err_ = msg.vy_err_;
    }
    else {
      resolved.vy_err_ = 0.0
    }

    return resolved;
    }
};

module.exports = RMSError;

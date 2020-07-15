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

class FusedMesurements {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x_estimated_ = null;
      this.y_estimated_ = null;
      this.time_stamp_ = null;
      this.vx_estimated_ = null;
      this.vy_estimated_ = null;
      this.x_gt_ = null;
      this.y_gt_ = null;
      this.vx_gt_ = null;
      this.vy_gt_ = null;
    }
    else {
      if (initObj.hasOwnProperty('x_estimated_')) {
        this.x_estimated_ = initObj.x_estimated_
      }
      else {
        this.x_estimated_ = 0.0;
      }
      if (initObj.hasOwnProperty('y_estimated_')) {
        this.y_estimated_ = initObj.y_estimated_
      }
      else {
        this.y_estimated_ = 0.0;
      }
      if (initObj.hasOwnProperty('time_stamp_')) {
        this.time_stamp_ = initObj.time_stamp_
      }
      else {
        this.time_stamp_ = 0;
      }
      if (initObj.hasOwnProperty('vx_estimated_')) {
        this.vx_estimated_ = initObj.vx_estimated_
      }
      else {
        this.vx_estimated_ = 0.0;
      }
      if (initObj.hasOwnProperty('vy_estimated_')) {
        this.vy_estimated_ = initObj.vy_estimated_
      }
      else {
        this.vy_estimated_ = 0.0;
      }
      if (initObj.hasOwnProperty('x_gt_')) {
        this.x_gt_ = initObj.x_gt_
      }
      else {
        this.x_gt_ = 0.0;
      }
      if (initObj.hasOwnProperty('y_gt_')) {
        this.y_gt_ = initObj.y_gt_
      }
      else {
        this.y_gt_ = 0.0;
      }
      if (initObj.hasOwnProperty('vx_gt_')) {
        this.vx_gt_ = initObj.vx_gt_
      }
      else {
        this.vx_gt_ = 0.0;
      }
      if (initObj.hasOwnProperty('vy_gt_')) {
        this.vy_gt_ = initObj.vy_gt_
      }
      else {
        this.vy_gt_ = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FusedMesurements
    // Serialize message field [x_estimated_]
    bufferOffset = _serializer.float32(obj.x_estimated_, buffer, bufferOffset);
    // Serialize message field [y_estimated_]
    bufferOffset = _serializer.float32(obj.y_estimated_, buffer, bufferOffset);
    // Serialize message field [time_stamp_]
    bufferOffset = _serializer.uint64(obj.time_stamp_, buffer, bufferOffset);
    // Serialize message field [vx_estimated_]
    bufferOffset = _serializer.float32(obj.vx_estimated_, buffer, bufferOffset);
    // Serialize message field [vy_estimated_]
    bufferOffset = _serializer.float32(obj.vy_estimated_, buffer, bufferOffset);
    // Serialize message field [x_gt_]
    bufferOffset = _serializer.float32(obj.x_gt_, buffer, bufferOffset);
    // Serialize message field [y_gt_]
    bufferOffset = _serializer.float32(obj.y_gt_, buffer, bufferOffset);
    // Serialize message field [vx_gt_]
    bufferOffset = _serializer.float32(obj.vx_gt_, buffer, bufferOffset);
    // Serialize message field [vy_gt_]
    bufferOffset = _serializer.float32(obj.vy_gt_, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FusedMesurements
    let len;
    let data = new FusedMesurements(null);
    // Deserialize message field [x_estimated_]
    data.x_estimated_ = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y_estimated_]
    data.y_estimated_ = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [time_stamp_]
    data.time_stamp_ = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [vx_estimated_]
    data.vx_estimated_ = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vy_estimated_]
    data.vy_estimated_ = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [x_gt_]
    data.x_gt_ = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y_gt_]
    data.y_gt_ = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vx_gt_]
    data.vx_gt_ = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vy_gt_]
    data.vy_gt_ = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'extendedkalmanfilters/FusedMesurements';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '78dd8106ff3952f3bd4013441cdc9454';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 x_estimated_
    float32 y_estimated_
    uint64 time_stamp_
    float32 vx_estimated_
    float32 vy_estimated_
    float32 x_gt_
    float32 y_gt_
    float32 vx_gt_
    float32 vy_gt_
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FusedMesurements(null);
    if (msg.x_estimated_ !== undefined) {
      resolved.x_estimated_ = msg.x_estimated_;
    }
    else {
      resolved.x_estimated_ = 0.0
    }

    if (msg.y_estimated_ !== undefined) {
      resolved.y_estimated_ = msg.y_estimated_;
    }
    else {
      resolved.y_estimated_ = 0.0
    }

    if (msg.time_stamp_ !== undefined) {
      resolved.time_stamp_ = msg.time_stamp_;
    }
    else {
      resolved.time_stamp_ = 0
    }

    if (msg.vx_estimated_ !== undefined) {
      resolved.vx_estimated_ = msg.vx_estimated_;
    }
    else {
      resolved.vx_estimated_ = 0.0
    }

    if (msg.vy_estimated_ !== undefined) {
      resolved.vy_estimated_ = msg.vy_estimated_;
    }
    else {
      resolved.vy_estimated_ = 0.0
    }

    if (msg.x_gt_ !== undefined) {
      resolved.x_gt_ = msg.x_gt_;
    }
    else {
      resolved.x_gt_ = 0.0
    }

    if (msg.y_gt_ !== undefined) {
      resolved.y_gt_ = msg.y_gt_;
    }
    else {
      resolved.y_gt_ = 0.0
    }

    if (msg.vx_gt_ !== undefined) {
      resolved.vx_gt_ = msg.vx_gt_;
    }
    else {
      resolved.vx_gt_ = 0.0
    }

    if (msg.vy_gt_ !== undefined) {
      resolved.vy_gt_ = msg.vy_gt_;
    }
    else {
      resolved.vy_gt_ = 0.0
    }

    return resolved;
    }
};

module.exports = FusedMesurements;

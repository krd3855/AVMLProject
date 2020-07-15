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

class RadarMeasurements {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sensor_type_ = null;
      this.rho_measured_ = null;
      this.phi_measured_ = null;
      this.rhodot_measured_ = null;
      this.time_stamp_ = null;
      this.x_ground_truth_ = null;
      this.y_ground_truth_ = null;
      this.vx_ground_truth_ = null;
      this.vy_ground_truth_ = null;
    }
    else {
      if (initObj.hasOwnProperty('sensor_type_')) {
        this.sensor_type_ = initObj.sensor_type_
      }
      else {
        this.sensor_type_ = '';
      }
      if (initObj.hasOwnProperty('rho_measured_')) {
        this.rho_measured_ = initObj.rho_measured_
      }
      else {
        this.rho_measured_ = 0.0;
      }
      if (initObj.hasOwnProperty('phi_measured_')) {
        this.phi_measured_ = initObj.phi_measured_
      }
      else {
        this.phi_measured_ = 0.0;
      }
      if (initObj.hasOwnProperty('rhodot_measured_')) {
        this.rhodot_measured_ = initObj.rhodot_measured_
      }
      else {
        this.rhodot_measured_ = 0.0;
      }
      if (initObj.hasOwnProperty('time_stamp_')) {
        this.time_stamp_ = initObj.time_stamp_
      }
      else {
        this.time_stamp_ = 0;
      }
      if (initObj.hasOwnProperty('x_ground_truth_')) {
        this.x_ground_truth_ = initObj.x_ground_truth_
      }
      else {
        this.x_ground_truth_ = 0.0;
      }
      if (initObj.hasOwnProperty('y_ground_truth_')) {
        this.y_ground_truth_ = initObj.y_ground_truth_
      }
      else {
        this.y_ground_truth_ = 0.0;
      }
      if (initObj.hasOwnProperty('vx_ground_truth_')) {
        this.vx_ground_truth_ = initObj.vx_ground_truth_
      }
      else {
        this.vx_ground_truth_ = 0.0;
      }
      if (initObj.hasOwnProperty('vy_ground_truth_')) {
        this.vy_ground_truth_ = initObj.vy_ground_truth_
      }
      else {
        this.vy_ground_truth_ = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RadarMeasurements
    // Serialize message field [sensor_type_]
    bufferOffset = _serializer.string(obj.sensor_type_, buffer, bufferOffset);
    // Serialize message field [rho_measured_]
    bufferOffset = _serializer.float32(obj.rho_measured_, buffer, bufferOffset);
    // Serialize message field [phi_measured_]
    bufferOffset = _serializer.float32(obj.phi_measured_, buffer, bufferOffset);
    // Serialize message field [rhodot_measured_]
    bufferOffset = _serializer.float32(obj.rhodot_measured_, buffer, bufferOffset);
    // Serialize message field [time_stamp_]
    bufferOffset = _serializer.uint64(obj.time_stamp_, buffer, bufferOffset);
    // Serialize message field [x_ground_truth_]
    bufferOffset = _serializer.float32(obj.x_ground_truth_, buffer, bufferOffset);
    // Serialize message field [y_ground_truth_]
    bufferOffset = _serializer.float32(obj.y_ground_truth_, buffer, bufferOffset);
    // Serialize message field [vx_ground_truth_]
    bufferOffset = _serializer.float32(obj.vx_ground_truth_, buffer, bufferOffset);
    // Serialize message field [vy_ground_truth_]
    bufferOffset = _serializer.float32(obj.vy_ground_truth_, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RadarMeasurements
    let len;
    let data = new RadarMeasurements(null);
    // Deserialize message field [sensor_type_]
    data.sensor_type_ = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [rho_measured_]
    data.rho_measured_ = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [phi_measured_]
    data.phi_measured_ = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rhodot_measured_]
    data.rhodot_measured_ = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [time_stamp_]
    data.time_stamp_ = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [x_ground_truth_]
    data.x_ground_truth_ = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y_ground_truth_]
    data.y_ground_truth_ = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vx_ground_truth_]
    data.vx_ground_truth_ = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vy_ground_truth_]
    data.vy_ground_truth_ = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.sensor_type_.length;
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'extendedkalmanfilters/RadarMeasurements';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8cfdab16d9df6f0eace3ca39d1e59ae0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string sensor_type_
    float32 rho_measured_
    float32 phi_measured_
    float32 rhodot_measured_
    uint64 time_stamp_
    float32 x_ground_truth_
    float32 y_ground_truth_
    float32 vx_ground_truth_
    float32 vy_ground_truth_
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RadarMeasurements(null);
    if (msg.sensor_type_ !== undefined) {
      resolved.sensor_type_ = msg.sensor_type_;
    }
    else {
      resolved.sensor_type_ = ''
    }

    if (msg.rho_measured_ !== undefined) {
      resolved.rho_measured_ = msg.rho_measured_;
    }
    else {
      resolved.rho_measured_ = 0.0
    }

    if (msg.phi_measured_ !== undefined) {
      resolved.phi_measured_ = msg.phi_measured_;
    }
    else {
      resolved.phi_measured_ = 0.0
    }

    if (msg.rhodot_measured_ !== undefined) {
      resolved.rhodot_measured_ = msg.rhodot_measured_;
    }
    else {
      resolved.rhodot_measured_ = 0.0
    }

    if (msg.time_stamp_ !== undefined) {
      resolved.time_stamp_ = msg.time_stamp_;
    }
    else {
      resolved.time_stamp_ = 0
    }

    if (msg.x_ground_truth_ !== undefined) {
      resolved.x_ground_truth_ = msg.x_ground_truth_;
    }
    else {
      resolved.x_ground_truth_ = 0.0
    }

    if (msg.y_ground_truth_ !== undefined) {
      resolved.y_ground_truth_ = msg.y_ground_truth_;
    }
    else {
      resolved.y_ground_truth_ = 0.0
    }

    if (msg.vx_ground_truth_ !== undefined) {
      resolved.vx_ground_truth_ = msg.vx_ground_truth_;
    }
    else {
      resolved.vx_ground_truth_ = 0.0
    }

    if (msg.vy_ground_truth_ !== undefined) {
      resolved.vy_ground_truth_ = msg.vy_ground_truth_;
    }
    else {
      resolved.vy_ground_truth_ = 0.0
    }

    return resolved;
    }
};

module.exports = RadarMeasurements;

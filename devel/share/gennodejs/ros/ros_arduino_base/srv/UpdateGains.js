// Auto-generated. Do not edit!

// (in-package ros_arduino_base.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class UpdateGainsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.gains = null;
    }
    else {
      if (initObj.hasOwnProperty('gains')) {
        this.gains = initObj.gains
      }
      else {
        this.gains = new Array(6).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UpdateGainsRequest
    // Check that the constant length array field [gains] has the right length
    if (obj.gains.length !== 6) {
      throw new Error('Unable to serialize array field gains - length must be 6')
    }
    // Serialize message field [gains]
    bufferOffset = _arraySerializer.float32(obj.gains, buffer, bufferOffset, 6);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UpdateGainsRequest
    let len;
    let data = new UpdateGainsRequest(null);
    // Deserialize message field [gains]
    data.gains = _arrayDeserializer.float32(buffer, bufferOffset, 6)
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_arduino_base/UpdateGainsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c27a47d6801c677e4ddacbb17806ce73';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[6] gains
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UpdateGainsRequest(null);
    if (msg.gains !== undefined) {
      resolved.gains = msg.gains;
    }
    else {
      resolved.gains = new Array(6).fill(0)
    }

    return resolved;
    }
};

class UpdateGainsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UpdateGainsResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UpdateGainsResponse
    let len;
    let data = new UpdateGainsResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_arduino_base/UpdateGainsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UpdateGainsResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: UpdateGainsRequest,
  Response: UpdateGainsResponse,
  md5sum() { return 'c27a47d6801c677e4ddacbb17806ce73'; },
  datatype() { return 'ros_arduino_base/UpdateGains'; }
};

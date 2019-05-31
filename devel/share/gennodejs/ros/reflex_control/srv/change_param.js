// Auto-generated. Do not edit!

// (in-package reflex_control.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class change_paramRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.inp = null;
    }
    else {
      if (initObj.hasOwnProperty('inp')) {
        this.inp = initObj.inp
      }
      else {
        this.inp = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type change_paramRequest
    // Serialize message field [inp]
    bufferOffset = _serializer.int64(obj.inp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type change_paramRequest
    let len;
    let data = new change_paramRequest(null);
    // Deserialize message field [inp]
    data.inp = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'reflex_control/change_paramRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '11a413ccdf7c1144c7b361da72df3d0e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 inp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new change_paramRequest(null);
    if (msg.inp !== undefined) {
      resolved.inp = msg.inp;
    }
    else {
      resolved.inp = 0
    }

    return resolved;
    }
};

class change_paramResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.fb = null;
    }
    else {
      if (initObj.hasOwnProperty('fb')) {
        this.fb = initObj.fb
      }
      else {
        this.fb = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type change_paramResponse
    // Serialize message field [fb]
    bufferOffset = _serializer.bool(obj.fb, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type change_paramResponse
    let len;
    let data = new change_paramResponse(null);
    // Deserialize message field [fb]
    data.fb = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'reflex_control/change_paramResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '64d12b326124d8fe576ffce2ad5eb111';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool fb
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new change_paramResponse(null);
    if (msg.fb !== undefined) {
      resolved.fb = msg.fb;
    }
    else {
      resolved.fb = false
    }

    return resolved;
    }
};

module.exports = {
  Request: change_paramRequest,
  Response: change_paramResponse,
  md5sum() { return '6f0624492d8870cb5ae06854b717afa1'; },
  datatype() { return 'reflex_control/change_param'; }
};

// Auto-generated. Do not edit!

// (in-package reflex_control.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ControllerSwitch {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.controllerSwitch = null;
    }
    else {
      if (initObj.hasOwnProperty('controllerSwitch')) {
        this.controllerSwitch = initObj.controllerSwitch
      }
      else {
        this.controllerSwitch = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ControllerSwitch
    // Serialize message field [controllerSwitch]
    bufferOffset = _serializer.int32(obj.controllerSwitch, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ControllerSwitch
    let len;
    let data = new ControllerSwitch(null);
    // Deserialize message field [controllerSwitch]
    data.controllerSwitch = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'reflex_control/ControllerSwitch';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5cdf8e0decb24a6822040fa60c5dc790';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 controllerSwitch
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ControllerSwitch(null);
    if (msg.controllerSwitch !== undefined) {
      resolved.controllerSwitch = msg.controllerSwitch;
    }
    else {
      resolved.controllerSwitch = 0
    }

    return resolved;
    }
};

module.exports = ControllerSwitch;

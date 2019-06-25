// Auto-generated. Do not edit!

// (in-package reflex_control.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class cartesian_waypoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.wp = null;
      this.vel = null;
      this.dur = null;
      this.tol_trans = null;
      this.tol_angle = null;
    }
    else {
      if (initObj.hasOwnProperty('wp')) {
        this.wp = initObj.wp
      }
      else {
        this.wp = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('vel')) {
        this.vel = initObj.vel
      }
      else {
        this.vel = 0.0;
      }
      if (initObj.hasOwnProperty('dur')) {
        this.dur = initObj.dur
      }
      else {
        this.dur = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('tol_trans')) {
        this.tol_trans = initObj.tol_trans
      }
      else {
        this.tol_trans = 0.0;
      }
      if (initObj.hasOwnProperty('tol_angle')) {
        this.tol_angle = initObj.tol_angle
      }
      else {
        this.tol_angle = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type cartesian_waypoint
    // Serialize message field [wp]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.wp, buffer, bufferOffset);
    // Serialize message field [vel]
    bufferOffset = _serializer.float64(obj.vel, buffer, bufferOffset);
    // Serialize message field [dur]
    bufferOffset = _serializer.duration(obj.dur, buffer, bufferOffset);
    // Serialize message field [tol_trans]
    bufferOffset = _serializer.float64(obj.tol_trans, buffer, bufferOffset);
    // Serialize message field [tol_angle]
    bufferOffset = _serializer.float64(obj.tol_angle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cartesian_waypoint
    let len;
    let data = new cartesian_waypoint(null);
    // Deserialize message field [wp]
    data.wp = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [vel]
    data.vel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [dur]
    data.dur = _deserializer.duration(buffer, bufferOffset);
    // Deserialize message field [tol_trans]
    data.tol_trans = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [tol_angle]
    data.tol_angle = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 88;
  }

  static datatype() {
    // Returns string type for a message object
    return 'reflex_control/cartesian_waypoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ffb15808d34b1a9dcaeedf62fbc0a4dd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Pose wp
    float64 vel
    duration dur
    float64 tol_trans
    float64 tol_angle
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new cartesian_waypoint(null);
    if (msg.wp !== undefined) {
      resolved.wp = geometry_msgs.msg.Pose.Resolve(msg.wp)
    }
    else {
      resolved.wp = new geometry_msgs.msg.Pose()
    }

    if (msg.vel !== undefined) {
      resolved.vel = msg.vel;
    }
    else {
      resolved.vel = 0.0
    }

    if (msg.dur !== undefined) {
      resolved.dur = msg.dur;
    }
    else {
      resolved.dur = {secs: 0, nsecs: 0}
    }

    if (msg.tol_trans !== undefined) {
      resolved.tol_trans = msg.tol_trans;
    }
    else {
      resolved.tol_trans = 0.0
    }

    if (msg.tol_angle !== undefined) {
      resolved.tol_angle = msg.tol_angle;
    }
    else {
      resolved.tol_angle = 0.0
    }

    return resolved;
    }
};

module.exports = cartesian_waypoint;

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

class FollowWaypointsFeedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.desired = null;
      this.actual = null;
      this.error = null;
      this.progress = null;
    }
    else {
      if (initObj.hasOwnProperty('desired')) {
        this.desired = initObj.desired
      }
      else {
        this.desired = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('actual')) {
        this.actual = initObj.actual
      }
      else {
        this.actual = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('error')) {
        this.error = initObj.error
      }
      else {
        this.error = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('progress')) {
        this.progress = initObj.progress
      }
      else {
        this.progress = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FollowWaypointsFeedback
    // Serialize message field [desired]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.desired, buffer, bufferOffset);
    // Serialize message field [actual]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.actual, buffer, bufferOffset);
    // Serialize message field [error]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.error, buffer, bufferOffset);
    // Serialize message field [progress]
    bufferOffset = _serializer.float64(obj.progress, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FollowWaypointsFeedback
    let len;
    let data = new FollowWaypointsFeedback(null);
    // Deserialize message field [desired]
    data.desired = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [actual]
    data.actual = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [error]
    data.error = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [progress]
    data.progress = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 176;
  }

  static datatype() {
    // Returns string type for a message object
    return 'reflex_control/FollowWaypointsFeedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0e2fc254189e46d3d827d900a29d7809';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #feedback definition
    geometry_msgs/Pose desired
    geometry_msgs/Pose actual
    geometry_msgs/Pose error
    float64 progress
    
    
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
    const resolved = new FollowWaypointsFeedback(null);
    if (msg.desired !== undefined) {
      resolved.desired = geometry_msgs.msg.Pose.Resolve(msg.desired)
    }
    else {
      resolved.desired = new geometry_msgs.msg.Pose()
    }

    if (msg.actual !== undefined) {
      resolved.actual = geometry_msgs.msg.Pose.Resolve(msg.actual)
    }
    else {
      resolved.actual = new geometry_msgs.msg.Pose()
    }

    if (msg.error !== undefined) {
      resolved.error = geometry_msgs.msg.Pose.Resolve(msg.error)
    }
    else {
      resolved.error = new geometry_msgs.msg.Pose()
    }

    if (msg.progress !== undefined) {
      resolved.progress = msg.progress;
    }
    else {
      resolved.progress = 0.0
    }

    return resolved;
    }
};

module.exports = FollowWaypointsFeedback;

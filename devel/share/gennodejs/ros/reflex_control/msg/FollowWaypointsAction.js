// Auto-generated. Do not edit!

// (in-package reflex_control.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let FollowWaypointsActionGoal = require('./FollowWaypointsActionGoal.js');
let FollowWaypointsActionResult = require('./FollowWaypointsActionResult.js');
let FollowWaypointsActionFeedback = require('./FollowWaypointsActionFeedback.js');

//-----------------------------------------------------------

class FollowWaypointsAction {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action_goal = null;
      this.action_result = null;
      this.action_feedback = null;
    }
    else {
      if (initObj.hasOwnProperty('action_goal')) {
        this.action_goal = initObj.action_goal
      }
      else {
        this.action_goal = new FollowWaypointsActionGoal();
      }
      if (initObj.hasOwnProperty('action_result')) {
        this.action_result = initObj.action_result
      }
      else {
        this.action_result = new FollowWaypointsActionResult();
      }
      if (initObj.hasOwnProperty('action_feedback')) {
        this.action_feedback = initObj.action_feedback
      }
      else {
        this.action_feedback = new FollowWaypointsActionFeedback();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FollowWaypointsAction
    // Serialize message field [action_goal]
    bufferOffset = FollowWaypointsActionGoal.serialize(obj.action_goal, buffer, bufferOffset);
    // Serialize message field [action_result]
    bufferOffset = FollowWaypointsActionResult.serialize(obj.action_result, buffer, bufferOffset);
    // Serialize message field [action_feedback]
    bufferOffset = FollowWaypointsActionFeedback.serialize(obj.action_feedback, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FollowWaypointsAction
    let len;
    let data = new FollowWaypointsAction(null);
    // Deserialize message field [action_goal]
    data.action_goal = FollowWaypointsActionGoal.deserialize(buffer, bufferOffset);
    // Deserialize message field [action_result]
    data.action_result = FollowWaypointsActionResult.deserialize(buffer, bufferOffset);
    // Deserialize message field [action_feedback]
    data.action_feedback = FollowWaypointsActionFeedback.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += FollowWaypointsActionGoal.getMessageSize(object.action_goal);
    length += FollowWaypointsActionResult.getMessageSize(object.action_result);
    length += FollowWaypointsActionFeedback.getMessageSize(object.action_feedback);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'reflex_control/FollowWaypointsAction';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7cebd5ee9a899c5c4f548d1acdb7fd88';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    FollowWaypointsActionGoal action_goal
    FollowWaypointsActionResult action_result
    FollowWaypointsActionFeedback action_feedback
    
    ================================================================================
    MSG: reflex_control/FollowWaypointsActionGoal
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    Header header
    actionlib_msgs/GoalID goal_id
    FollowWaypointsGoal goal
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: actionlib_msgs/GoalID
    # The stamp should store the time at which this goal was requested.
    # It is used by an action server when it tries to preempt all
    # goals that were requested before a certain time
    time stamp
    
    # The id provides a way to associate feedback and
    # result message with specific goal requests. The id
    # specified must be unique.
    string id
    
    
    ================================================================================
    MSG: reflex_control/FollowWaypointsGoal
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #goal definition
    #either one velocity/time_stamps or same as waypoints
    
    cartesian_waypoint[] waypoints
    
    
    ================================================================================
    MSG: reflex_control/cartesian_waypoint
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
    
    ================================================================================
    MSG: reflex_control/FollowWaypointsActionResult
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    Header header
    actionlib_msgs/GoalStatus status
    FollowWaypointsResult result
    
    ================================================================================
    MSG: actionlib_msgs/GoalStatus
    GoalID goal_id
    uint8 status
    uint8 PENDING         = 0   # The goal has yet to be processed by the action server
    uint8 ACTIVE          = 1   # The goal is currently being processed by the action server
    uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing
                                #   and has since completed its execution (Terminal State)
    uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)
    uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due
                                #    to some failure (Terminal State)
    uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,
                                #    because the goal was unattainable or invalid (Terminal State)
    uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing
                                #    and has not yet completed execution
    uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,
                                #    but the action server has not yet confirmed that the goal is canceled
    uint8 RECALLED        = 8   # The goal received a cancel request before it started executing
                                #    and was successfully cancelled (Terminal State)
    uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be
                                #    sent over the wire by an action server
    
    #Allow for the user to associate a string with GoalStatus for debugging
    string text
    
    
    ================================================================================
    MSG: reflex_control/FollowWaypointsResult
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #results definition
    
    #geometry_msgs/Pose final_pose
    
    int32 error_code
    int32 SUCCESSFUL = 0
    int32 PREEMPTED = -1
    int32 INVALID_GOAL = -2
    
    string error_string
    
    
    ================================================================================
    MSG: reflex_control/FollowWaypointsActionFeedback
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    Header header
    actionlib_msgs/GoalStatus status
    FollowWaypointsFeedback feedback
    
    ================================================================================
    MSG: reflex_control/FollowWaypointsFeedback
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #feedback definition
    geometry_msgs/Pose desired
    geometry_msgs/Pose actual
    geometry_msgs/Pose error
    float64 progress
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FollowWaypointsAction(null);
    if (msg.action_goal !== undefined) {
      resolved.action_goal = FollowWaypointsActionGoal.Resolve(msg.action_goal)
    }
    else {
      resolved.action_goal = new FollowWaypointsActionGoal()
    }

    if (msg.action_result !== undefined) {
      resolved.action_result = FollowWaypointsActionResult.Resolve(msg.action_result)
    }
    else {
      resolved.action_result = new FollowWaypointsActionResult()
    }

    if (msg.action_feedback !== undefined) {
      resolved.action_feedback = FollowWaypointsActionFeedback.Resolve(msg.action_feedback)
    }
    else {
      resolved.action_feedback = new FollowWaypointsActionFeedback()
    }

    return resolved;
    }
};

module.exports = FollowWaypointsAction;

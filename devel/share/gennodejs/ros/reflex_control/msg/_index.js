
"use strict";

let JointTorqueComparison = require('./JointTorqueComparison.js');
let ControllerSwitch = require('./ControllerSwitch.js');
let cartesian_waypoint = require('./cartesian_waypoint.js');
let FollowWaypointsResult = require('./FollowWaypointsResult.js');
let FollowWaypointsActionGoal = require('./FollowWaypointsActionGoal.js');
let FollowWaypointsActionFeedback = require('./FollowWaypointsActionFeedback.js');
let FollowWaypointsAction = require('./FollowWaypointsAction.js');
let FollowWaypointsGoal = require('./FollowWaypointsGoal.js');
let FollowWaypointsFeedback = require('./FollowWaypointsFeedback.js');
let FollowWaypointsActionResult = require('./FollowWaypointsActionResult.js');

module.exports = {
  JointTorqueComparison: JointTorqueComparison,
  ControllerSwitch: ControllerSwitch,
  cartesian_waypoint: cartesian_waypoint,
  FollowWaypointsResult: FollowWaypointsResult,
  FollowWaypointsActionGoal: FollowWaypointsActionGoal,
  FollowWaypointsActionFeedback: FollowWaypointsActionFeedback,
  FollowWaypointsAction: FollowWaypointsAction,
  FollowWaypointsGoal: FollowWaypointsGoal,
  FollowWaypointsFeedback: FollowWaypointsFeedback,
  FollowWaypointsActionResult: FollowWaypointsActionResult,
};

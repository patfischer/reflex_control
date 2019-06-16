
"use strict";

let JointTorqueComparison = require('./JointTorqueComparison.js');
let ControllerSwitch = require('./ControllerSwitch.js');
let follow_waypointsActionGoal = require('./follow_waypointsActionGoal.js');
let follow_waypointsActionResult = require('./follow_waypointsActionResult.js');
let follow_waypointsFeedback = require('./follow_waypointsFeedback.js');
let follow_waypointsResult = require('./follow_waypointsResult.js');
let follow_waypointsAction = require('./follow_waypointsAction.js');
let follow_waypointsActionFeedback = require('./follow_waypointsActionFeedback.js');
let follow_waypointsGoal = require('./follow_waypointsGoal.js');

module.exports = {
  JointTorqueComparison: JointTorqueComparison,
  ControllerSwitch: ControllerSwitch,
  follow_waypointsActionGoal: follow_waypointsActionGoal,
  follow_waypointsActionResult: follow_waypointsActionResult,
  follow_waypointsFeedback: follow_waypointsFeedback,
  follow_waypointsResult: follow_waypointsResult,
  follow_waypointsAction: follow_waypointsAction,
  follow_waypointsActionFeedback: follow_waypointsActionFeedback,
  follow_waypointsGoal: follow_waypointsGoal,
};

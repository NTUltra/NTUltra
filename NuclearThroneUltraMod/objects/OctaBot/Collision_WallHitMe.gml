/// @description Bounce

// Inherit the parent event
event_inherited();

moveDir += choose(90, -90);
speed *= 0.5;
var ddir = dcos(moveDir);
if ddir < 0
	right = -1;
else if ddir > 0
	right = 1;
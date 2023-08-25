/// @description Bounce

// Inherit the parent event
event_inherited();

dir += choose(90, -90);
speed *= 0.5;
var ddir = dcos(dir);
if ddir < 0
	right = -1;
else if ddir > 0
	right = 1;
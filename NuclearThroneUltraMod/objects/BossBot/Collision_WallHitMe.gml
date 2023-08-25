/// @description Bounce

move_bounce_solid(false)
speed *= 0.5;
if hspeed < 0
	right = -1;
else if hspeed > 0
	right = 1;
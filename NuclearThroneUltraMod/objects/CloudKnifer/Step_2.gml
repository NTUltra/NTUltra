/// @description SHANKING

// Inherit the parent event
event_inherited();

if alarm[2] > 0
{
	vspeed = maxSpeed + 1;
	hspeed = 0;
	if alarm[2] < 2
		vspeed = 0;
}
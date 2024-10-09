/// @description xxx

// Inherit the parent event
event_inherited();

var ang = random(360)
var angstep = 360/6;
repeat(6)
{
	with instance_create(xprevious,yprevious,ToxicCannonBall)
	{motion_add(other.ang,4)
	image_angle = direction
	team = other.team}
	ang += angstep
}
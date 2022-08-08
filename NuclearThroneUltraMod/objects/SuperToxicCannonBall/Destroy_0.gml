/// @description xxx

// Inherit the parent event
event_inherited();

ang = random(360)
var angstep = 360/5;
repeat(5)
{
	with instance_create(xprevious,yprevious,ToxicCannonBall)
	{motion_add(other.ang,4)
	image_angle = direction
	team = other.team}
	ang += angstep
}
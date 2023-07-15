/// @description El big boomboom




// Inherit the parent event
event_inherited();

var am = 6;
var ang = direction;
var angStep = 360/am;


instance_create(x+hspeed,y+vspeed,BigWallBreak);

BackCont.shake += 10;
Sleep(20)
var am = 5;
var ang = direction;
var angStep = 360/am;
repeat(am)
{
	with instance_create(x,y,FlameCannonBall)
	{motion_add(ang,6)
	image_angle = direction
	team = other.team}
	ang += angStep;
}
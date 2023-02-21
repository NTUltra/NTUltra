/// @description Big boom

// Inherit the parent event
event_inherited();

instance_create(x+hspeed,y+vspeed,BigWallBreak);
snd_play(sndLightningCannonEnd,0.1,true)

BackCont.shake += 10;
Sleep(20)
var am = 5;
var ang = direction;
var angStep = 360/am;
repeat(am)
{
	with instance_create(x,y,LightningCannonBall)
	{motion_add(ang,6)
	image_angle = direction
	team = other.team}
	ang += angStep;
}
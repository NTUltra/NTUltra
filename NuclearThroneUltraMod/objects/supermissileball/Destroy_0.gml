event_inherited()
snd_play(sndNukeExplosion,0.1,true)
Sleep(20)
BackCont.shake += 10;
instance_create(x+hspeed,y+vspeed,BigWallBreak);
var am = 4;
var ang = fireRotation;
var angStep = 360/am;
repeat(am)
{
	with instance_create(x,y,MissileBall)
	{motion_add(ang,10)
	image_angle = direction
	team = other.team}
	ang += angStep;
}
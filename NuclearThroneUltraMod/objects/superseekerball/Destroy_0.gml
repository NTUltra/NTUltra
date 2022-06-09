snd_play(sndSeekerShotgun,0.1,true)
event_inherited()
Sleep(20)
BackCont.shake += 10;
instance_create(x+hspeed,y+vspeed,WallBreak);
var am = 4;
var ang = fireRotation;
var angStep = 360/am;
repeat(am)
{
	with instance_create(x,y,SeekerBall)
	{motion_add(ang,9)
	image_angle = direction
	team = other.team}
	ang += angStep;
}

BackCont.shake += 10;
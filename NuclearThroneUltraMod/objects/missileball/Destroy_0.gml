snd_play(sndNukeExplosion,0.1,true)
event_inherited()
instance_create(x,y,Explosion);
Sleep(10)
instance_create(x+hspeed,y+vspeed,WallBreak);
var am = 6;
var ang = fireRotation;
var angStep = 360/am;
repeat(am)
{
	with instance_create(x,y,Missile)
	{motion_add(ang,4)
	image_angle = direction
	team = other.team}
	ang += angStep;
}
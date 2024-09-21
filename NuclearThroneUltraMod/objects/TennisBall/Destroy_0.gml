var am = 3;
var ang = direction+180;
var angStep = 120;
repeat(am)
{
	with instance_create(x,y,Dust)
	{motion_add(ang,0.2)
	image_angle = direction
	team = other.team}
	ang += angStep;
}
snd_play(sndTennisBallHit,0.01);
event_inherited()
var am = 6;
var ang = direction+180;
var angStep = 360/am;
repeat(am)
{
	with instance_create(x,y,Dust)
	{motion_add(ang,0.2)
	image_angle = direction
	team = other.team}
	ang += angStep;
}
snd_play(sndBowlingBallDissapear);
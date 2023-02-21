/// @description El boombo
BackCont.shake += 5;
var am = 14;
var ang = direction;
var angStep = 360/am;
repeat(am)
{
	with instance_create(x,y,Flame)
	{
		motion_add(ang,3+random(5))
		team = other.team
	}
	ang += angStep;
}
snd_play(sndFlameCannonEnd,0.1,true)
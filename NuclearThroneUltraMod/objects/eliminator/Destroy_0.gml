/// @description Big boom

// Inherit the parent event
event_inherited();
snd_play(sndSplinterShotgun,0.1,true)
var ang = random(360);
var am = 4;
var angStep = 90;
repeat(am)
{
	with instance_create(xprevious,yprevious,Splinter)//5 splinters
	{
		motion_add(ang+(random(6)-3),20+random(4));
		image_angle = direction
		team = other.team
	}
	with instance_create(x,y,Smoke)
		motion_add(ang,random_range(0.5,2));
	ang += angStep;
}
BackCont.shake += 4;
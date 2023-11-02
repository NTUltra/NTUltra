/// @description UltraMod

// Inherit the parent event
event_inherited();
alarm[8] = 0;
snd_play(sndSplinterMinigun,0.05,true,false,2,false,false,0.7);
var am = 2;
var ang = other.image_angle;
var angStep = 360/am;
repeat(am)
{
	with instance_create(x,y,Splinter)//5 splinters
	{
		motion_add(ang,20+random(4))
		image_angle = direction
		team = 2;
		alarm[2] = 2;
	}
	ang += angStep;
}
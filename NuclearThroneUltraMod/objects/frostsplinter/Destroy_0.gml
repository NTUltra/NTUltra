/// @description Flare

// Inherit the parent event
event_inherited();
BackCont.shake += 1;
/*
snd_play(sndFlareExplode,0.1,true)
var ang = direction + 180;
var am = 3;
var angstep = 360/am;
repeat(am)
{
	with instance_create(x,y,IceFlame)
	{
		motion_add(ang,3.5)
		team = other.team
		ang += angstep;
	}
}*/
with instance_create(x,y,IceFlame)
{
	speed = max(other.speed * 0.5,2)
	direction = other.direction;
	team = other.team;	
}


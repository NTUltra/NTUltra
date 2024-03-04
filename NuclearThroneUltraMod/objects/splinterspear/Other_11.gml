/// @description Splinter
snd_play(sndSplinterMinigun);
var ang = direction - 10;
var angstep = 30/ammo
repeat(ammo)
{
	with instance_create(x,y,Splinter)
	{
		alarm[2] = 2;
		motion_add(ang,18)
		image_angle = direction
		team = other.team
	}
	ang += angstep;
}
/*
with instance_create(x,y,Splinter)
{
	alarm[2] = 2;
	motion_add(other.direction+10,18)
	image_angle = direction
	team = other.team
}

with instance_create(x,y,Splinter)
{
	alarm[2] = 2;
	motion_add(other.direction-10,18)
	image_angle = direction
	team = other.team
}*/
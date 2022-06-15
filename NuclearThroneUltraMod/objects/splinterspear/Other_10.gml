/// @description Something happens
snd_play(sndSplinterMinigun);
with instance_create(x,y,Splinter)
{
	alarm[2] = 2;
	motion_add(other.direction,18)
	image_angle = direction
	team = other.team
}

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
}
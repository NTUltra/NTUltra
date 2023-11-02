/// @description Fire a splinter
snd_play(sndSplinterMinigun);
with instance_create(x,y,Splinter)
{
	motion_add(other.direction,speed + 14);
	image_angle = direction
	team = other.team;
}
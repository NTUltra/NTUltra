/// @description Fire
if round(ammo) % 2 == 0
with instance_create(x,y,Flame)
{	team = other.team
	image_speed = 0.6;
	motion_add(other.direction,1);
}
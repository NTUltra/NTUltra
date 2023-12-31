/// @description Fire
if round(ammo) % 3 == 0
with instance_create(x,y,IceFlame)
{	team = other.team
	image_speed = 0.6;
	motion_add(other.direction,1);
}
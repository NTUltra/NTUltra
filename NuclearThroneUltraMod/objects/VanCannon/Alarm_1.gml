/// @description VAN
with instance_create(x,y,VanCannonVan)
{
	team = other.team;
	image_angle = other.direction;
	motion_add(other.direction,18);
	if hspeed < 0
		image_yscale = -1;
}
instance_destroy();
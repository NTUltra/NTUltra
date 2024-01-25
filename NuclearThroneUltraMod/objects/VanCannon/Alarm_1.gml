/// @description VAN
with instance_create(x,y,VanCannonVan)
{
	motion_add(other.direction,18);
	if other.sprite_index == sprRogueVanPortalClose
	{
		speed -= 2;
		sprite_index = sprRogueVanDrive;
		friction = 0.4;
		dmg -= 5;
	}
	team = other.team;
	image_angle = other.direction;
	if hspeed < 0
		image_yscale = -1;
}
instance_destroy();
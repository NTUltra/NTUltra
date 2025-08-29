/// @description Spawn visual
var animDirection = point_direction(x,y,offsetX,offsetY);
with instance_create(x,y,AnimDestroyBloom)
{
	if other.dmgBoost == 0
		sprite_index = sprPlutoSpawnSmall;
	else
		sprite_index = sprPlutoSpawn;
	direction = animDirection;
	image_angle = direction;
	image_xscale += other.dmgBoost*0.125;
	image_yscale = image_xscale;
	speed = image_xscale;
}
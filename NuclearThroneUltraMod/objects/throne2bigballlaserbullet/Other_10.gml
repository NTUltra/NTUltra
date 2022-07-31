/// @description start shooting
scrTarget();
if target > -1 && instance_exists(target)
{
	aimDir = point_direction(x,y,target.x,target.y);
	with instance_create(x,y,ImpactFX)
		sprite_index = other.projectileToSpawnSprite;
	alarm[4] = initialDelay;
	alarm[1] = initialDelay;
	alarm[3] = 40;
}
/// @description Stopped start firing
speed = 0;
scrTarget();
if target > 0 && instance_exists(target)
{
	aimDir = point_direction(x,y,target.xprevious,target.yprevious);
	with instance_create(x,y,ImpactFX)
		sprite_index = other.projectileToSpawnSprite;
	alarm[1] = 10;
	alarm[4] = 10;
	alarm[3] = 40;
}
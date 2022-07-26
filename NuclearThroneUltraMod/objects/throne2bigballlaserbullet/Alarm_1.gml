/// @description Spawn some bullets
with instance_create(x,y,projectileToSpawn)
{
	motion_add(other.aimDir,other.pSpeed);
	image_angle = direction
	team = other.team
}
alarm[1] = 2;
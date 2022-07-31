/// @description Spawn some bullets
var canSpawn = true;
with Portal
{
	if type == 1 && !inverted
		canSpawn = false;
}
if !canSpawn
{
	instance_destroy(id,false);
	exit;
}
with instance_create(x,y,projectileToSpawn)
{
	motion_add(other.aimDir,other.pSpeed);
	image_angle = direction
	team = other.team
}
alarm[1] = 2;
/// @description Stay in same place
if instance_exists(owner)
{
	x = owner.x;
	y = owner.y;
	scrForcePosition60fps();
}
else
	instance_destroy();

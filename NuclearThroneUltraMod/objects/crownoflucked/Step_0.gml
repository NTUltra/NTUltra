/// @description Keep track of owner
if owner > 0 && instance_exists(owner)
{
	x = owner.x;
	y = owner.y - yoffset;
}
else
{
	instance_destroy();	
}
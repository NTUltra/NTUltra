/// @description Orbit
if instance_exists(owner) && owner != noone
{
	var len = 28;
	image_angle = point_direction(owner.x,owner.y,mouse_x,mouse_y);
	if type == 1
		image_angle += 180;
	x = owner.x + lengthdir_x(len,image_angle);
	y = owner.y + lengthdir_y(len,image_angle);
	scrForcePosition60fps();
}
else
{
	instance_destroy();	
}
/// @description Flashy
if instance_exists(creator)
{
	x = creator.x;
	y = creator.y;
	image_xscale = creator.right;
	draw_self();
}
else {
	instance_destroy();	
}

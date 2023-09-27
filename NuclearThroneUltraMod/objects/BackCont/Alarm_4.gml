/// @description Projectile out of range
alarm[4] = 60;
var xx = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])*0.5;
var yy = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])*0.5;
with projectile
{
	if point_distance(xx,yy,x,y) > 450
	{
		instance_destroy();	
	}
}
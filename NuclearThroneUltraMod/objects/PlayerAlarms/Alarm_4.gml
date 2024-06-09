/// @description Destroy projectiles out of view (crown of freedom)
var xx = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])*0.5);
var yy = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])*0.5);
with projectile {
	if point_distance(x,y,xx,yy) > 400
		instance_destroy();
}
alarm[4] = 5;
/// @description Top of screen
if !instance_exists(owner)
	instance_destroy();
if isHorizontal
{
	if isFlipped
	{
		image_angle = 180;
		x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]);
	}
	else
	{
		x = camera_get_view_x(view_camera[0]);
		image_angle = 0;
	}
}
else
{
	if isFlipped
	{
		y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]);
		image_angle = 90;
	}
	else
	{
		y = camera_get_view_y(view_camera[0]);
		image_angle = 270;
	}
}
time += 0.1;
if time > 2
	time = 2;
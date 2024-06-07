/// @description Top of screen
if isHorizontal
{
	if isFlipped
		x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]);
	else
		x = camera_get_view_x(view_camera[0]);
}
else
{
	if isFlipped
		y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]);
	else
		y = camera_get_view_y(view_camera[0]);
}
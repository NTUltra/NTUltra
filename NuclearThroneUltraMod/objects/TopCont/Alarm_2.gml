/// @description Crown of blindness
alarm[2] = 3;
var cx = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])*0.5;
var cy = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])*0.5;
with projectile
{
	if team != 2 && point_distance(cx,cy,x,y) < 300
	{
		if !place_meeting(x,y,enemy)
		{
			team = -1;
		}
	}
}

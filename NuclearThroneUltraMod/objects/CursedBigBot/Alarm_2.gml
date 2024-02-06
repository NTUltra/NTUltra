/// @description Longer tell

// Inherit the parent event
event_inherited();
inRange = true;
if point_distance(x,y,
camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) * 0.5),
camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) * 0.5)) > 350
{
	inRange = false;
	alarm[4] = 13;
}
else
{
	snd_play(sndSniperTarget, 0.01,false,true,2,false,true,0.8,false, -1, 0, 120)
	alarm[3] += 12;
}
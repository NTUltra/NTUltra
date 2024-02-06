/// @description Longer tell

// Inherit the parent event
event_inherited();
snd_play(sndSniperTarget, 0.01,false,true,2,false,true,0.8,false, -1, 0, 120)
alarm[2] += 12;
inRange = true;
if point_distance(x,y,
camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) * 0.5),
camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) * 0.5)) > 350
{
	inRange = false;
	alarm[3] = alarm[2] + 1;
	alarm[2] = 0;
}
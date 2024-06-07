/// @description Fire!
instance_destroy();
snd_play(sndLaser,0.01,true)
var xx = x;
var yy = y;
/*
Starting position shold be on opposite side of screen position
So that laser blockers can know what distance the laser should travel
*/
if isHorizontal
{
	if isFlipped
		xx = camera_get_view_x(view_camera[0]);
	else
		xx = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]);
}
else
{
	if isFlipped
		yy = camera_get_view_y(view_camera[0]);
	else
		yy = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])	
}

with instance_create(x,y,ScreenLaser)
{
	team = other.team;
	isHorizontal = other.isHorizontal;
	isFlipped = other.isFlipped;
	image_angle = other.image_angle + 180;
	if isHorizontal
	{
		/*
		if isFlipped
			image_angle = 0;
		else
			image_angle = 180;
			*/
		image_xscale = camera_get_view_width(view_camera[0])*0.5;	
	}
	/*else if isFlipped
	{
		image_angle = 270;	
	}*/
}
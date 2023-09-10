/// @description safety first enemy outside level
if !place_meeting(x,y,Floor) && !place_meeting(x,y,FloorExplo)
{
	var cx = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])*0.5;
	var cy = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])*0.5;
	if point_distance(cx,cy,x,y) < 350
		instance_destroy();
}

if !instance_exists(GenCont){
	if collision_point(x,y,Wall,false,true)//this may be a little intense
	{
	with other
	{instance_destroy();
	instance_create(x,y,FloorExplo);}
	}
}

alarm[10]=500;


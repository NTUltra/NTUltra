/// @description safety first enemy outside level


if !instance_exists(GenCont){
	if collision_point(x,y,Wall,false,true)//this may be a little intense
	{
		with other
		{
			instance_destroy();
			instance_create(x,y,FloorExplo);
		}
	}
	else
	{
		if !place_meeting(x,y,Floor)
		{
			var cx = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])*0.5;
			var cy = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])*0.5;
			if point_distance(cx,cy,x,y) < 350
				instance_destroy();
		}
	}
}
alarm[10]=500;


/// @description safety first enemy outside level

/*
if !instance_exists(GenCont) && instance_exists(Floor){
	if !place_meeting(x,y,Floor)
	{
		var cx = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])*0.5;
		var cy = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])*0.5;
		var n = instance_nearest(x,y,Floor)
		var o = 16;
		if n != noone
		{
			if n.object_index == FloorExplo
				o = 8;
			x = n.x + o;
			y = n.y + o;
		}
		else
		{
			instance_destroy();	
		}
	}
}
alarm[10]=500;

*/
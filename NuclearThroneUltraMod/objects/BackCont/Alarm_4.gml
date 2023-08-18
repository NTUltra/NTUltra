/// @description Corpse deactivater
alarm[4] = 3;
var cx = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])*0.5;
var cy = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])*0.5;
instance_activate_object(Corpse);
with Corpse {
	if object_index == Corpse {
		if point_distance(cx,cy,x,y) > 300
			instance_deactivate_object(id);
	}
}

/// @description Object Optimizer
alarm[4] = 20;
var cx = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])*0.5;
var cy = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])*0.5;
instance_activate_object(Floor);
instance_activate_object(Wall);
instance_activate_object(Top);
instance_activate_object(TopSmall);
instance_activate_object(enemyCollisionWall);
/*
var extra = 64;
var left = camera_get_view_x(view_camera[0]) - extra;
var right = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) + extra;
var top = camera_get_view_y(view_camera[0]) - extra;
var bottom = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) + extra;
instance_deactivate_region()*/
if !instance_exists(GenCont)
{
	var al = ds_list_size(enemyDeactivater);
	for (var i = 0; i < al; i++)
	{
		with enemyDeactivater[| i] {
			instance_destroy();	
		}
	}
	ds_list_clear(enemyDeactivater);
	with enemyCollisionWall {
		if point_distance(cx,cy,x,y) > 350
		{
			speed = 0;
			instance_deactivate_object(id);
			ds_list_add(other.enemyDeactivater,instance_create(x,y,becomenemy));
		}
	}
	with Top {
		if point_distance(cx,cy,x,y) > 446
			instance_deactivate_object(id);
	}
	with TopSmall {
		if point_distance(cx,cy,x,y) > 446
			instance_deactivate_object(id);
	}
	with Wall {
		if point_distance(cx,cy,x,y) > 446
			instance_deactivate_object(id);
	}
	with projectile
	{
		if point_distance(cx,cy,x,y) > 446
			instance_destroy(id,false);
	}
	with Floor {
		if point_distance(cx,cy,x,y) > 520//510
			instance_deactivate_object(id);
	}
}

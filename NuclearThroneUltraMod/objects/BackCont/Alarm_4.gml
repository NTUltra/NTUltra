/// @description Corpse deactivater
alarm[4] = 20;
var cx = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])*0.5;
var cy = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])*0.5;
instance_activate_object(Floor);
instance_activate_object(Wall);
instance_activate_object(enemyCollisionWall);
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
		if point_distance(cx,cy,x,y) > 300
		{
			speed = 0;
			instance_deactivate_object(id);
			ds_list_add(other.enemyDeactivater,instance_create(x,y,becomenemy));
		}
	}
	with Floor {
		if point_distance(cx,cy,x,y) > 460
			instance_deactivate_object(id);
	}
	with Wall {
		if point_distance(cx,cy,x,y) > 396
			instance_deactivate_object(id);
	}
	with projectile
	{
		if point_distance(cx,cy,x,y) > 396
			instance_destroy(id,false);
	}
}

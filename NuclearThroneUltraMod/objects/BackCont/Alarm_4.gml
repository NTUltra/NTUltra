/// @description Object Optimizer
var delay = 25;
alarm[4] = delay;
var cx = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])*0.5;
var cy = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])*0.5;
scrActivateAllOutOfRange();
/*
var extra = 64;
var left = camera_get_view_x(view_camera[0]) - extra;
var right = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) + extra;
var top = camera_get_view_y(view_camera[0]) - extra;
var bottom = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) + extra;
instance_deactivate_region()
*/
with EnemyDeactivater
{
	alarm[0] += 1;
	instance_destroy();	
}
with enemy {
	if point_distance(cx,cy,x,y) > 450
	{
		speed = 0;
		instance_deactivate_object(id);
		with instance_create(x,y,EnemyDeactivater)
		{
			myEnemy = other.id;	
		}
	}
}
with Top {
	if point_distance(cx,cy,x,y) > 540
	{
		instance_deactivate_object(id);
	}
}
with TopSmall {
	if point_distance(cx,cy,x,y) > 540
	{
		instance_deactivate_object(id);
	}
}

with Wall {
	if point_distance(cx,cy,x,y) > 540
	{
		instance_deactivate_object(id);
	}
}
with projectile
{
	if point_distance(cx,cy,x,y) > 540
		instance_destroy();
}
with Floor {
	if point_distance(cx,cy,x,y) > 540//510
	{
		instance_deactivate_object(id);
	}
}
instance_activate_object(HotDrake);
instance_activate_object(InvertedHotDrake);
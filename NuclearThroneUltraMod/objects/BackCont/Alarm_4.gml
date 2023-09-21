/// @description Object Optimizer
var delay = 25;
alarm[4] = delay;
if instance_exists(GenCont)
	exit;
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
	instance_destroy();
}
with enemy {
	var dis = point_distance(cx,cy,x,y)
	if dis > 330
	{
		direction = point_direction(x,y,cx,cy);
		instance_deactivate_object(id);
		with instance_create(x,y,EnemyDeactivater) {
			if other.team != 2 && other.object_index != IDPDVan && other.object_index != IDPDVanVertical {
				my_health = other.my_health;
			}
		}
		if dis > 440 && (collision_point(x,y,Wall,false,false) || !place_meeting(x,y,Floor))
		{
			var n = instance_nearest(x,y,Floor)
			if n != noone
			{
				var o = 16;
				if n.object_index == FloorExplo
					o = 8;
				x = n.x + o;
				y = n.y + o;
			}
		}
	}
}
if scrIsCrown(25)
{
	with Top
	{
		instance_destroy();	
	}
	with TopSmall {
		instance_destroy();
	}
	with Wall {
		instance_destroy();
	}
}
else
{
	with Top {
		if point_distance(cx,cy,x,y) > 440
		{
			instance_deactivate_object(id);
		}
	}
	with TopSmall {
		if point_distance(cx,cy,x,y) > 440
		{
			instance_deactivate_object(id);
		}
	}

	with Wall {
		if point_distance(cx,cy,x,y) > 440
		{
			instance_deactivate_object(id);
		}
	}
	with projectile
	{
		if point_distance(cx,cy,x,y) > 440
			instance_destroy();
	}
}
with Floor {
	if point_distance(cx,cy,x,y) > 440//510
	{
		instance_deactivate_object(id);
	}
}
instance_activate_object(HotDrake);
instance_activate_object(InvertedHotDrake);
//instance_activate_object(NuclearThrone1);
//instance_activate_object(NuclearThrone1Side);
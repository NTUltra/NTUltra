/// @description Destroy healthpacks that are close

// Inherit the parent event
event_inherited();

if instance_exists(HPPickup)
{
	var n = instance_nearest(x,y,HPPickup);
	if n != noone && point_distance(x,y,n.x,n.y) < 48
	{
		with n {
			instance_create(x,y,SmallChestPickup);
			instance_destroy();
		}
	}
	if n != noone && !collision_line(x,y, n.x, n.y, Wall,false,false)
		motion_add(point_direction(x,y,n.x,n.y),2);
}
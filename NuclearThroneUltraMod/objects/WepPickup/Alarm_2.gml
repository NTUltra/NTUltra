/// @description Become visible again
visible = true;
if instance_exists(Floor) && !collision_point(x,y,Floor,false,false)
{
	var f = instance_nearest(x,y,Floor)
	var o = 16;
	if f.object_index == FloorExplo
		o = 8;
	x = f.x+o;
	y = f.y+o;
}
/// @description become visible again
visible = true;
if instance_exists(Player)
{
	x = Player.x;
	y = Player.y;
	scrForcePosition60fps();
}
else if instance_exists(Floor)
{
	if collision_point(x,y,Wall,false,false) || !collision_point(x,y,Floor,false,false)
	{
		var f = instance_nearest(x,y,Floor)
		var o = 16;
		if f.object_index == FloorExplo
			o = 8;
		x = f.x+o;
		y = f.y+o;
		scrForcePosition60fps();
	}
}
if !collision_point(x,y,Floor,false,false)
	alarm[2] = 10;
/// @description U close?
alarm[1] = 10;
if instance_exists(Player) && alarm[2] < 1
{
	if point_distance(x,y,Player.x,Player.y) < 96
	{
		alarm[2] = 20;
	}
	else
	{
		active = false;
		sprite_index = spr_deactivate;	
	}
}
if !collision_point(x,y,Floor,false,false)
{
	with owner
	{
		var n = instance_nearest(x,y,Floor);
		var o = 16;
		if n.object_index == FloorExplo
			o = 8;
		x = n.x + o;
		y = n.y + o;
		scrForcePosition60fps();
		other.x = x;
		other.y = y;
	}
	scrForcePosition60fps();
}
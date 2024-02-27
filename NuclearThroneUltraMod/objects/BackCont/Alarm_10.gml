/// @description Enemy out of place
alarm[10] = 120;
if instance_exists(Player)
{
	with enemy {
		if ((!canFly && !collision_point(x,y,Floor,false,false))|| (canFly && point_distance(Player.x,Player.y,x,y) > 450))
		{
			var n = instance_nearest(x,y,Floor)
			if n != noone {
				var o = 16;
				if n.object_index = FloorExplo
					o = 8;
				x = n.x + o;
				y = n.y + o;
				scrForcePosition60fps();
			}
		}
	}
}
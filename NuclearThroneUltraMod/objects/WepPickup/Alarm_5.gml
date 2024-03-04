/// @description Weapon collision
//Based on YellowAfterlife's Wepcollision
if (speed < 4 && instance_exists(WepPickup)){
	var n = instance_nearest_notme(x,y,WepPickup);
	if n != noone && point_distance(x,y,n.x,n.y) < 16
	{
	    var dx = x - n.x;
	    var dy = y - n.y;
	    if (dx != 0 || dy != 0) {
	        var dd = sqrt(dx * dx + dy * dy);
	        motion_add(point_direction(0, 0, dx, dy), clamp(1 - dd / 28, 0, 1) * 3);
	    } else motion_add(random(360), 2);
	}
}
else
{
	if instance_exists(Player) && !Player.ultra_got[12] && !collision_point(x,y,Floor,false,false)
	{
		var f = instance_nearest(x,y,Floor)
		var o = 16;
		if f != noone
		{
			if f.object_index == FloorExplo
				o = 8;
			x = f.x+o;
			y = f.y+o;
			scrForcePosition60fps();
		}
	}
}
if speed > 8
	speed = 8;
alarm[5] = 1;
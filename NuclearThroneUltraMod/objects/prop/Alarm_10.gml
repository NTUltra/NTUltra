/// @description simple wall collision
alarm[10] = 5;
if place_meeting(x,y,WallHitMe)
{
	var maxDis = 16;
	var n = instance_nearest(x,y,Floor);
	if n != noone && instance_exists(n)
	{
		var o = 16;
		if n.object_index == FloorExplo
			o = 8;
		var d = point_direction(x,y,n.x + o,n.y + o);
		while (maxDis > 0 && place_meeting(x,y,WallHitMe))
		{
			x += lengthdir_x(2,d);
			y += lengthdir_y(2,d);
			maxDis -= 1;
		}
		scrForcePosition60fps();
	}
}
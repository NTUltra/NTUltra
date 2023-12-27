/// @description Keep on floor
if !place_meeting(x,y,Floor)
{
	var n = instance_nearest(x,y,Floor)
	if n != noone
	{
		var o = 16;
		if n.object_index == FloorExplo
			o = 8;
		x = n.x+o;
		y = n.y+o;
	}
}
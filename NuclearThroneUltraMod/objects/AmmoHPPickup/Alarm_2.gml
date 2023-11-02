/// @description Keep on floor
if !place_meeting(x,y,Floor)
{
	var n = instance_nearest(x,y,Floor)
	if n != noone
	{
		x = n.x+8;
		y = n.y+8;
	}
}
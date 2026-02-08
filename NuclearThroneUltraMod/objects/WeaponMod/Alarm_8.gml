/// @description TP props away
if instance_exists(Floor)
{
	with instance_place(x,y,prop)
	{
		var f = instance_furthest(x,y,Floor);
		if f != noone && instance_exists(f)
		{
			x = f.x + 16;
			y = f.y + 16;
		}
	}
}
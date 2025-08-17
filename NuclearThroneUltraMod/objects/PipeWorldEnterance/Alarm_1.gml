/// @description Move away from pizza sewer
var n = instance_nearest(x,y,PizzaEntrance);
if n != noone && point_distance(x,y,n.x,n.y) < 200
{
	var f = noone;
	var o = 16;
	do {
		f = instance_nearest(x + random_range(200,300),	y + random_range(200,300),Floor);
		if f.object_index == FloorExplo
			o = 8;
		else
			o = 16;
	} until (f == noone || point_distance(x,y,f.x + o, f.y + o))
	if (f != noone)
	{
		x = f.x + o;
		y = f.y + o;
		scrForcePosition60fps()
	}
}
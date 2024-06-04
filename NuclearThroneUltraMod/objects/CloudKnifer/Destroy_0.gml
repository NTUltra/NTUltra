if !collision_point(x,y,Floor,false,false)
{
	spr_dead = spr_dead_mid_air;	
}
var xx = x;
var yy = y;
if collision_point(x,y,Floor,false,false)
{
	scrDrop(20,0);
	event_inherited()
}
else
{
	var n = instance_nearest(x,y,Floor);
	if n != noone && point_distance(x,y,n.x,n.y) < 128
	{
		var o = 16;
		if n.object_index == FloorExplo
			o = 8;
		x = n.x+o;
		y = n.y+o;
		scrDrop(20,0)
		event_inherited()
		x = xx;
		y = yy;
	}
	else
	{
		event_inherited()	
	}
}
with myCorpse
{
	x = other.x;
	y = other.y;
}
if fps_real >= fps
	repeat(3+irandom(4))
	{
		with instance_create(x,y,RavenFeather)
		{
			image_index = 11;
		}
	}
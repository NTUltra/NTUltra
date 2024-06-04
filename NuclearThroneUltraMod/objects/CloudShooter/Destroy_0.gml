var xx = x;
var yy = y;
if collision_point(x,y,Floor,false,false)
{
	scrDrop(40,0);
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
		scrDrop(40,0)
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
	x = xx;
	y = yy;
}
with instance_create(x,y,EnemyHomingTriangle)
{
	motion_add(other.gunangle+random(20)-10,1);
	homingSpeed = 1.25;
	image_angle = direction
	team = other.team
}


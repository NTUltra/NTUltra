/// @description xxx
var ogx = x;
var ogy = y;
if instance_exists(Floor) && !place_meeting(x,y,Floor)
{
	var n = instance_nearest(x,y,Floor)
	if n != noone
	{
		var o = 16;
		if n.object_index == FloorExplo
			o = 8;
		x = n.x + o;
		y = n.y + o;
	}
}
scrDrop(15,0)
if fps_real >= fps
repeat(3+irandom(6))
{
	with instance_create(x,y,RavenFeather)
		image_index = 9;
}

event_inherited()
x = ogx;
y = ogy;
if UberCont.normalGameSpeed == 60
{
	if image_index < 1
		image_index += random(0.02)
	else
		image_index += 0.2
}
else
{
	if image_index < 1
		image_index += random(0.04)
	else
		image_index += 0.4
}

if speed > 4
speed = 4

if instance_exists(GenCont)
{
x = xstart
y = ystart
}

var overlap = instance_place(x,y,chestprop);
if overlap != noone
{
	if id < overlap.id
	{
		var getmeout = point_direction(overlap.x,overlap.y,x,y);
		motion_add(getmeout,mySize)
		direction += 1;
	}
}
var overlap = instance_place(x,y,enemy);
if overlap != noone && !overlap.ignoreOverlap
{
	var is60fps = UberCont.normalGameSpeed == 60;
	with overlap
	{
		speed += 0.8;
		if is60fps
		{
			direction += 10;
			walk += 0.5;
		}
		else
		{
			direction += 5;
			walk += 1;
		}
	}
}
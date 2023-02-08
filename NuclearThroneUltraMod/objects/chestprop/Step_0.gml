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
	if size <= overlap.size
	{
		var getmeout = point_direction(overlap.x,overlap.y,x,y);
		motion_add(getmeout,size)
		direction += 1;
	}
}
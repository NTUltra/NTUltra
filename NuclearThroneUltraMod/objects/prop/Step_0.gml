/// @description Overlap
var overlap = instance_place(x,y,chestprop);
if overlap != noone
{
	speed += 0.8;
	direction += 1;
}
var overlap = instance_place(x,y,prop);
if overlap != noone
{
	speed += 0.8;
	direction += 1;
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
			direction += 1;
			walk += 0.5;
		}
		else
		{
			direction += 2;
			walk += 1;
		}
	}
}
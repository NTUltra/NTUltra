
if charge > 0 or intro = 0 && target != noone
{
	with other
	{
	instance_destroy()
	with instance_create(x,y,FloorExplo)
		alarm[3] = 0;
	}
}
else
move_bounce_solid(false)



if charge > 0 or intro = 0 && target != noone
{
	with other
	{
		instance_destroy()
		instance_create(x,y,FloorExplo)
	}
}
else
	move_bounce_solid(false)


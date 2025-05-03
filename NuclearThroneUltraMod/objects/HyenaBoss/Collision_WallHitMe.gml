/// @description JUMP! break wall
if alarm[2] > 0
{
	with other
	{
		instance_destroy()
		instance_create(x,y,FloorExplo)
	}
}
else
{
	event_inherited();
}


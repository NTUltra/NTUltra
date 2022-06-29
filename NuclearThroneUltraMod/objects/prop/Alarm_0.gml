/// @description break wall on spawn
if speed > 1
	alarm[0] = 2;
else
	with instance_position(x,y,Wall)
	{
		instance_destroy();
		instance_create(x,y,FloorExplo);
	}
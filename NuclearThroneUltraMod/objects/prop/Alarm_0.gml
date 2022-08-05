/// @description break wall on spawn
if speed > 1
	alarm[0] = 5;
else
	with instance_position(x,y,Wall)
	{
		other.alarm[0] = 2;
		instance_destroy();
		instance_create(x,y,FloorExplo);
	}
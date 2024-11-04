/// @description break wall on spawn
if speed > 1 || instance_exists(SpiralCont) || instance_exists(GenCont)
	alarm[0] = 5;
else
{
	var w = instance_place(x,y,Wall);
	if w != noone
		alarm[0] = 2;
	with w
	{
		instance_destroy();
		instance_create(x,y,FloorExplo);
	}
}
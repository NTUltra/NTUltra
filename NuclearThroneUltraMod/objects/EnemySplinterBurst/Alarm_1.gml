/// @description Retarget
with creator
{
	scrTarget()
	if target != noone && instance_exists(target)
	{
		gunangle += angle_difference(point_direction(x, y, target.x, target.y),gunangle) * 0.05;
	}
}
alarm[1] = 2;
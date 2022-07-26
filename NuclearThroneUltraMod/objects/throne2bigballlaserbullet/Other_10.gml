/// @description start shooting
scrTarget();
if target > -1 && instance_exists(target)
{
	aimDir = point_direction(x,y,target.x,target.y);
	alarm[4] = initialDelay;
	alarm[1] = initialDelay;
	alarm[3] = 40;
}
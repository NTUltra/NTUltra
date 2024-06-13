/// @description Flames
alarm[2] = 1;
if active = 1
{
	with instance_create(x,y,Flame)
	{
		depth = other.depth + 1;
		motion_add(other.direction,2);
		team = other.team;
	}
	if speed < maxSpeed
	{
		speed += acc;
	}
	else
	{
		speed = maxSpeed;
	}
}
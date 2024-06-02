/// @description Smoke
alarm[2] = 1;
if active = 1
{
	with instance_create(x,y,Smoke)
		depth = other.depth + 1;
		if speed < maxSpeed
		{
			speed += acc;
		}
		else
		{
			speed = maxSpeed;
		}
}
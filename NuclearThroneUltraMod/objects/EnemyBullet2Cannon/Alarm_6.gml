/// @description Halt before splitting
alarm[6] = 1;
if alarm[3] < 4 || alarm[3] > sprayTimer - 4
{
	speed *= 0.5;
	speed -= 1;
	if speed < 0
		speed = 0;
}
else if speed < targetSpeed
{
	speed += 2;
	speed *= 2;
}
else
{
	speed = targetSpeed;	
}
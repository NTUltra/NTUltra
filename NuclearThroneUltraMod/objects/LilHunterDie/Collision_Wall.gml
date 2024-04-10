if alarm[3] < 1
{
	move_bounce_solid(false)
	bounces += 1
	if bounces > 3 && (alarm[2]<1 || alarm[2] > 25)
	{
		alarm[2]=25;
		speed=0;
	}
}
else
{
	speed = 0;	
}
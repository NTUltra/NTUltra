if active = 1
{
	with instance_create(x,y,Smoke)
		depth = other.depth + 1;
		if speed < 18
		{
			if UberCont.normalGameSpeed == 60
				speed += 1.4;
			else
				speed += 1.2;
		}
}
if alarm[11] < 1
{
	if collision_line_width(xprev,yprev,x,y,Wall,false,false,1)
	{
		event_user(0);
	}
	xprev = x;
	yprev = y;
}
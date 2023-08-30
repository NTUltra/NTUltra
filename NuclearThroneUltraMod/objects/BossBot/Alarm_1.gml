///@description AI
alarm[1] = actTime;
if alarm[6] > 0
	exit;
scrTarget();
if (instance_exists(target) && target > -1)
{
	gunangle = point_direction(x,y,target.x,target.y);
	if target.x < x
		right = -1;
	else if target.x > x
		right = 1;
	los = !collision_line(x,y,target.x,target.y,Wall,false,false);

	if firstEntry
	{
		alarm[2] = fireDelay;	
	}
	var ran = random(10);
	if ran < 3
	{
		justCharged = false;
		if ran < 4 || !los
			direction = random(360);
		else 
			motion_add(point_direction(x,y,target.x,target.y),acc);
		walk = clamp(irandom(actTime*5),walk,actTime*3);
	}
	else if ran < 5.5 && !justCharged
	{
		event_user(0);
	}
	else if ran < 6.5
	{
		justCharged = false;
		if ran < 6.5 || !los
			direction = random(360);
		else
			motion_add(point_direction(x,y,target.x,target.y),acc);
	}
	else if los
	{
		justCharged = false;
		if ran < 8
			walk = clamp(irandom(actTime*5),walk,actTime*3);
		//To the player
		motion_add(point_direction(x,y,target.x,target.y),acc);
		reload = maxReload;
		alarm[1] += maxReload;
	}
	else if !justCharged
	{
		motion_add(point_direction(x,y,target.x,target.y),acc);
		event_user(0);
	}
}
else
{
	if hspeed < 0
		right = -1;
	else if hspeed > 0
		right = 1;
}
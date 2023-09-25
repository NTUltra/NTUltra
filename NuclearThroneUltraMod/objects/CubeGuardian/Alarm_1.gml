///@description AI
alarm[1] = 10+random(10)
if charge
	exit;
motion_add(direction,1);
	scrTarget()
	if target != noone
	{
		if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
		{
			if x > target.x - 160 && x < target.x + 160 && y > target.y - 120 && y < target.y + 120 && random(3) < 2
			{
				event_user(1);
			}
			else
			{
				direction = point_direction(x,y,target.x,target.y)+random(80)-40;
				alarm[1] -= 6;
				speed = 2;
				}


		if target.x < x
		right = -1
		else if target.x > x
		right = 1
			motion_add(point_direction(x,y,target.x,target.y)+random(80)-40,1);
		}
		else if random(4) < 1
		{
			motion_add(random(360),1)
			if hspeed > 0
			right = 1
			else if hspeed < 0
			right = -1
		}
		else if point_distance(x,y,target.x,target.y) < distance + 32
		{
			event_user(1);
		}
	}
	else if random(10) < 1
	{
	motion_add(random(360),2)
	if hspeed > 0
	right = 1
	else if hspeed < 0
	right = -1
	}
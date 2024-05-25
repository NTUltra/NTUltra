///AI
alarm[1] = actTime+random(actTime);
scrTarget()
if target != noone
{
	var dis = point_distance(target.x,target.y,x,y);
	if dis < maxDetectRange
	{
		if !collision_line(x,y,target.x,target.y,Wall,false,false)
		{
			if random(2) < 1
			{
				if dis < shankRange
				{
					gunangle = point_direction(x,y,target.x,target.y)
					alarm[3] = 6;
					alarm[1] += 10;
					speed = 0;
					walk = 3;
					direction = gunangle;
				}
				else
				{
					gunangle = point_direction(x,y,target.x,target.y)
					alarm[2] = 2;
					alarm[1] += 4;
				}
			}
			else
			{
				direction = point_direction(x,y,target.x,target.y)+random(60)-30
				speed = 0.4
				walk = 10 + random(10)
				gunangle = point_direction(x,y,target.x,target.y)
			}
		}
		else
		{
			mp_potential_step(target.x,target.y,3,false);
			motion_add(random(360),acc*2);
			walk = 10 + random(10);
			gunangle = point_direction(x,y,target.x,target.y)	
		}
	}
	else
	{
		direction = point_direction(target.x,target.y,x,y)+random(20)-10
		speed = 0.4
		walk = 40+random(10)
		gunangle = point_direction(x,y,target.x,target.y)
	}
	if target.x < x
		right = -1
	else if target.x > x
		right = 1
}
else if random(10) < 1
{
	motion_add(random(360),acc)
	walk = 10+random(10)
	alarm[1] = walk+actTime+random(actTime)
	gunangle = direction
	if hspeed > 0
		right = 1
	else if hspeed < 0
		right = -1
}

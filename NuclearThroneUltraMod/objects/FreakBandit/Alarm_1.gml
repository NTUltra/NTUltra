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
				if dis < smackDetectionRange
				{
					gunangle = point_direction(x,y,target.x,target.y)
					alarm[3] = smackTell;
					alarm[1] += actTime + (smackTell*2);
					speed = 0;
					walk = 3;
					direction = gunangle;
					snd_play(sndWarning);
					instance_create(x-5,y,Notice);
					instance_create(x,y,Notice);
					instance_create(x+5,y,Notice);
				}
				else
				{
					gunangle = point_direction(x,y,target.x,target.y)
					alarm[2] = shootTell;
					alarm[1] += shootTell*2;
				}
			}
			else
			{
				direction = point_direction(x,y,target.x,target.y)+random_range(30,-30);
				mp_potential_step(target.x,target.y,1,false);
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
		direction = point_direction(x,y,target.x,target.y)+random(20)-10
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

scrTarget()
alarm[1] = actTime;
if target != noone
{
	if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
	{
		direction = point_direction(x,y,target.x,target.y)+random(30)-15
		if random(5) < 1
		{
			//Jerky movement
			motion_add(direction + 180 + random_range(130,-130),maxSpeed);
		}
		else
			speed = 2
		walk = actTime+random(actTime)
		alarm[1] = walk
	}
	else if random(5) < 1
	{
		motion_add(random(360),0.4)
		walk = actTime+random(actTime*2)
		alarm[1] = walk+actTime;
	}

}
else if random(8) < 1
{
	motion_add(random(360),0.4)
	walk = actTime+random(actTime*2)
	alarm[1] = walk+actTime*3;
}
else
{
	alarm[1] = actTime * 3;
}


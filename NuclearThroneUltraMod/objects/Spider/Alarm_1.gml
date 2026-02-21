scrTarget()
//alarm[1] = 20+random(10)

alarm[1] = actTime+random(actTime);

maxSpeed = defaultSpeed
if target != noone
{
	if collision_line(x,y,target.x,target.y,Wall,0,0) < 0 and point_distance(x,y,target.x,target.y) < 250
	{
		maxSpeed = attackSpeed
		direction = point_direction(x,y,target.x,target.y)+random(80)-40
		speed = 0.4
		walk = actTime+random(actTime)
		alarm[1] = walk + (actTime * 0.5)
	}
	else if random(2) < 1
	{
		motion_add(random(360),defaultSpeed * 0.4)
		walk = actTime+random(actTime)
		alarm[1] = walk+actTime+random(actTime)
	}
}
else if random(4) < 1
{
	motion_add(random(360),defaultSpeed * 0.4)
	walk = actTime+random(actTime)
	alarm[1] = walk+actTime+random(actTime)
}


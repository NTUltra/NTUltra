alarm[1] = actTime + random(actTime)


scrTarget()
if target > 0
{
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
{
if point_distance(target.x,target.y,x,y) > 48 and point_distance(target.x,target.y,x,y) < 130
{
	if random(2) < 1
	{
		alarm[2]=9;
		instance_create(x,y,Notice);

		alarm[1] = actTime*2+random(actTime)
	}
	else if random(3) < 2 {
        direction = point_direction(x, y, target.x, target.y) + random(180) - 90
		var n = instance_nearest(x,y,Wall)
		if n != noone && point_distance(x,y,n.x,n.y) < 40
		{
			direction = point_direction(n.x,n.y,x,y);
		}
        speed = 0.4
        walk = 10 + random(10)
        gunangle = point_direction(x, y, target.x, target.y)
    }
	else
	{
		direction = point_direction(x,y,target.x,target.y)+random(180)-90
		speed = 0.4
		walk = 10+random(10)
		gunangle = point_direction(x,y,target.x,target.y)
	}

}
else
{
	if random(3) < 1
		direction = point_direction(x,y,target.x, target.y) + random(20) - 10
	else
		direction = point_direction(target.x,target.y,x,y)+random(20)-10
speed = 0.4
walk = 30+random(10)
gunangle = point_direction(x,y,target.x,target.y)
}

if target.x < x
right = -1
else if target.x > x
right = 1
}
else if random(4) < 1
{
motion_add(random(360),0.4)
walk = 10+random(10)
alarm[1] = walk+10+random(30)
gunangle = direction
if hspeed > 0
right = 1
else if hspeed < 0
right = -1
}
}
else if random(10) < 1
{
motion_add(random(360),0.4)
walk = 10+random(10)
alarm[1] = walk+10+random(30)
gunangle = direction
if hspeed > 0
right = 1
else if hspeed < 0
right = -1
}


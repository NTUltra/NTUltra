alarm[1] = actTime+random(actTime)
canDodge = true;
scrTarget()
if target != noone
{
	var notBehindWall = collision_line(x,y,target.x,target.y,Wall,0,0) < 0
	if notBehindWall || isInverted
	{
		var dis = point_distance(target.x,target.y,x,y)
		if dis < range
		{
			walk = 2;
			alarm[2]=tellTime//the delay that everyone wants
			instance_create(x-5,y,Notice);
			instance_create(x,y,Notice);
			instance_create(x+5,y,Notice);
			alarm[1]=tellTime*1.5;
			if !notBehindWall
			{
				alarm[2] += 20;
				alarm[1] += 20;
			}
		}
		else if dis < 200
		{
			direction = point_direction(target.x,target.y,x,y)+random(20)-10
			speed = 0.4
			walk = 40 + random(10)
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
	walk = actTime * 3;
	alarm[1] = walk+actTime;
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
	walk = actTime * 3;
	alarm[1] = walk+actTime;
	gunangle = direction
	if hspeed > 0
	right = 1
	else if hspeed < 0
	right = -1
}


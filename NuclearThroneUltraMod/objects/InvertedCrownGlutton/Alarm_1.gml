///@description AI
alarm[1] = actTime + random(actTime)
scrTarget()
with enemy
	alarm[10] = 0;
if target > 0 {
    if !collision_line(x, y, target.x, target.y, Wall, 0, 0) {
		var dis = point_distance(target.x, target.y, x, y);
		if dis > 200
		{
			direction = point_direction(x, y,target.x, target.y) + random(60) - 30
			walk = alarm[1];
		}
        else if dis > 52 {
			direction = point_direction(x, y, target.x, target.y) + random(90) - 45
			var ran = random(chance + tempchance);
			tempchance = 0;
            if ran > 6
			{
                direction = point_direction(x, y, target.x, target.y) + random(60) - 30
                speed *= 0.5;
				walk *= 0.5;
				gunangle = point_direction(x, y, target.x, target.y);
				ammo = maxammo;
				originX = x;
				originY = y;
				alarm[4] = 5;
            }
			else if ran > 4 && !instance_exists(crowns[1])
			{
				if choose(true,false)
				{
					walk = actTime + random(actTime*2)	
				}
				event_user(0);
				with instance_create_depth(x,y,depth,crowns[1])
				{
					motion_add(random(360),2);
					walk = 20;
					team = other.team;
					creator = other.id;
				}
			}
			else if ran > 2 && !instance_exists(crowns[2])
			{
				if choose(true,false)
				{
					walk = actTime + random(actTime*2)	
				}
				event_user(1);
				event_user(0);
				with instance_create_depth(x,y,depth,crowns[2])
				{
					motion_add(random(360),3);
					walk = 20;
					team = other.team;
					creator = other.id;
				}
			}
			else if ran > 1 && !instance_exists(crowns[3])
			{
				if choose(true,false)
				{
					walk = actTime + random(actTime*2)	
				}
				event_user(0);
				with instance_create_depth(x,y,depth,crowns[3])
				{
					motion_add(random(360),3);
					walk = 20;
					team = other.team;
					creator = other.id;
				}
			}
			else if !instance_exists(crowns[4])
			{
				if choose(true,false)
				{
					walk = actTime + random(actTime*2)	
				}
				event_user(0);
				with instance_create_depth(x,y,depth,crowns[4])
				{
					motion_add(random(360),3);
					walk = 20;
					team = other.team;
					creator = other.id;
				}
			}
			else
			{
				walk = actTime + random(actTime*2)
				direction = point_direction(target.x, target.y, x, y) + random(20) - 10	
			}

        }
        else {
            direction = point_direction(target.x, target.y, x, y) + random(20) - 10
            speed = acc * 0.5;
            walk = 40 + random(10)
            gunangle = point_direction(x, y, target.x, target.y)
        }

        if target.x < x
        right = -1
        else if target.x > x
        right = 1
    }
	else if object_index == InvertedCrownGlutton
	{
		direction = point_direction( x, y,target.x, target.y) + random(60) - 30;
		walk = alarm[1];
		if hspeed > 0
			right = 1
        else if hspeed < 0
			right = -1
	}
    else if random(4) < 1 {
        motion_add(random(360), 0.4)
        walk = 20 + random(10)
        alarm[1] = walk + 10 + random(30)
        gunangle = direction
        if hspeed > 0
        right = 1
        else if hspeed < 0
        right = -1
    }
	else if choose(false,true)
	{
		direction = point_direction( x, y,target.x, target.y) + random(60) - 30;
		walk = alarm[1];
		if hspeed > 0
			right = 1
        else if hspeed < 0
			right = -1
	}
}
else if random(10) < 1 {
    motion_add(random(360), 0.4)
    walk = 20 + random(10)
    alarm[1] = walk + 10 + random(30)
    gunangle = direction
    if hspeed > 0
    right = 1
    else if hspeed < 0
    right = -1
}
if !reachedHalfway && my_health < maxhealth * 0.7
{	
	actTime -= 1;
	reachedHalfway = true;
	event_user(0);
	with instance_create_depth(x,y,depth,crowns[5])
	{
		motion_add(random(360),2);
		walk = 20;
		team = other.team;
		creator = other.id;
	}
	alarm[2] = 2;
}
else if !reached75 && my_health < maxhealth * 0.4
{
	actTime -= 2;
	reached75 = true;
	event_user(0);
	with instance_create_depth(x,y,depth,crowns[6])
	{
		motion_add(random(360),2);
		walk = 20;
		team = other.team;
		creator = other.id;
	}
	alarm[2] = 2;
}
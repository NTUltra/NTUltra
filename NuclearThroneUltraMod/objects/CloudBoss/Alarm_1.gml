///@description AI
alarm[1] = actTime + random(actTime)
scrTarget()
if target != noone {
    if collision_line(x, y, target.x, target.y, Wall, 0, 0) < 0 {
		var dis = point_distance(x,y,target.x,target.y);
		gunangle = point_direction(x,y,target.x,target.y);
		motion_add(gunangle,acc * 2);
        if (dis < 64) {
            motion_add(gunangle,maxSpeed);
			alarm[1] = actTime;
			walk = alarm[1];
        }
        else {
            var ran = random(110);
			if ran < 23
			{
				event_user(0);
				if ran < 8
				{
					walk = actTime + random(actTime*3);
					motion_add(random(360),acc);
				}
			}
			else if ran < 46
			{
				event_user(1);
				if ran < 31
				{
					walk = actTime + random(actTime*3);
					motion_add(random(360),acc);
				}
			}
			else if ran < 69
			{
				event_user(2);
				if ran < 54
				{
					walk = actTime + random(actTime*3);
					motion_add(random(360),acc);
				}
			}
			else if ran < 92
			{
				event_user(3);
				if ran < 77
				{
					walk = actTime + random(actTime*3);
					motion_add(random(360),acc);
				}
			}
			else if ran < 100
			{
				walk = alarm[1] + actTime;
				motion_add(gunangle,acc);
			}
			else if my_health < maxhealth * 0.5
			{
				event_user(0);
				event_user(1);
				if ran < 85
				{
					walk = actTime + random(actTime*3);
					motion_add(random(360),acc);
				}
			}
        }

        if walk > 0 && random(2) < 1
		{
			motion_add(gunangle,maxSpeed);	
		}
		if target.x < x
			right = -1
        else if target.x > x
			right = 1
    }
    else if random(4) < 1 {
        motion_add(random(360), acc)
        walk = 20 + random(10)
        alarm[1] = walk + 10 + random(30)
        gunangle = direction
        if hspeed > 0
        right = 1
        else if hspeed < 0
        right = -1
    }
}
else if random(10) < 1 {
    motion_add(random(360), acc)
    walk = 20 + random(10)
    alarm[1] = walk + 10 + random(30)
    gunangle = direction
    if hspeed > 0
    right = 1
    else if hspeed < 0
    right = -1
}

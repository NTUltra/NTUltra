///@description AI
alarm[1] = actTime + irandom(actTime);
sleeping = false;
scrTarget()
if target != noone {
	var ran = random(10);
    if collision_line(x, y, target.x, target.y, Wall, 0, 0) < 0 {
		if wasBehindWall
		{
			wasBehindWall = false;
			return;
		}
		var dir = point_direction(x, y, target.x, target.y);
		var dis = point_distance(target.x, target.y, x, y);
        if dis > 48 && dis < 210 {
            if ran < 7 {
				if ran < 4
					walk += actTime * 2;
				alarm[4] = 5;
            }
            else {
                direction = dir + (random(180) - 90)
                walk = actTime + random(actTime * 2)
                gunangle = dir;
            }
        } else {
            direction = dir;
			speed += 1;
            walk = alarm[1];
            gunangle = dir;
        }
        if target.x < x
			right = -1
        else if target.x > x
			right = 1
		wasBehindWall = false;
    }
    else if ran < 3 {
		wasBehindWall = true;
		direction = random(360);
		speed = acc*2
        walk = actTime * 3
        alarm[1] = walk;
        gunangle = direction
        if hspeed > 0
			right = 1
        else if hspeed < 0
			right = -1
    }
	else
	{
		wasBehindWall = true;	
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

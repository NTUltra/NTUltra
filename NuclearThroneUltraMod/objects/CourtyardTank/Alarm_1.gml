///@description AI

alarm[1] = actTime + random(actTime)
scrTarget()
if target != noone {
	var lineOfSight = !collision_line(x, y, target.x, target.y, Wall, 0, 0)
	var dis = point_distance(target.x, target.y, x, y)
	with myShield
	{	
		if dis > 80 && dis < 250 && lineOfSight
			event_user(0);
	}
    if lineOfSight {
        if dis > 52 && dis < 250{
            if random(4) < 1 {
				speed = 0;
				gunangle = point_direction(x,y,target.x,target.y);
				sprite_index = spr_fire;
				alarm[2] = 5;
                alarm[1] = 5 + actTime * 4;
				with myShield
					event_user(1);
            }
            else {
                direction = point_direction(x, y, target.x, target.y) + random(180) - 90
                speed = acc
                walk = actTime + random(actTime)
                gunangle = point_direction(x, y, target.x, target.y)
            }

        }
		else if dis < 48 && random(3) < 1
		{
			//DASH
			direction =	point_direction(x,y,target.x,target.y);
			speed = maxSpeed;
			walk = actTime;
			alarm[1] += actTime*2;
			with myShield
				event_user(1);
		}
        else {
            direction = point_direction(target.x, target.y, x, y) + random(20) - 10
            speed = acc * 0.5;
            walk = actTime + random(actTime * 2)
        }

        if target.x < x
        right = -1
        else if target.x > x
        right = 1
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

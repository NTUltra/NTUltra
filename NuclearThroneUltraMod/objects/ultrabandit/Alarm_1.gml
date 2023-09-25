///AI
alarm[1] = 7 + random(5);
scrTarget()
if target != noone {
    if collision_line(x, y, target.x, target.y, Wall, 0, 0) < 0 {
        if point_distance(target.x, target.y, x, y) > 32 {
			if random(6) < 1 && point_distance(target.x, target.y, x, y) < 200 {
				gunangle = point_direction(x, y, target.xprevious, target.yprevious)
				alarm[2] = 3;
				alarm[1] += 12;
				if random(3) < 1
				{
					walk = alarm[1] + 1;
					motion_add(gunangle + choose(90,-90),1);
				}
			}
            if random(4) < 1 && point_distance(target.x, target.y, x, y) < 180 {
                gunangle = point_direction(x, y, target.x, target.y)
            }
            else {
                direction = point_direction(x, y, target.x, target.y) + random(180) - 90
                speed = 0.8
                walk = alarm[1] - 2;
                gunangle = point_direction(x, y, target.x, target.y)
            }
        }
        else {
            direction = point_direction(target.x, target.y, x, y) + random(20) - 10
            speed = 0.6
            walk = alarm[1] + 2
            gunangle = point_direction(x, y, target.x, target.y)
        }

        if target.x < x
        right = -1
        else if target.x > x
        right = 1
    }
    else if random(4) < 1 {
        motion_add(random(360), 0.4)
        walk = alarm[1] + 6;
        alarm[1] *= 2;
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
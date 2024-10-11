///@description AI
if (instance_exists(Player) && !Player.justAsheep) sleeping = false;;
alarm[1] = actTime + random(actTime)
scrTarget()
if target != noone {
    if collision_line(x, y, target.x, target.y, Wall, 0, 0) < 0 {
        if !justBehindWall && random(3) < 1  && point_distance(x,y,target.x,target.y) < 200{
			event_user(0);
        }
        else {
            direction = point_direction(x, y, target.x, target.y) + random(180) - 90
            speed = 0.4
            walk = 10 + random(10)
            gunangle = point_direction(x, y, target.x, target.y)
        }

        if target.x < x
			right = -1
        else if target.x > x
			right = 1
		justBehindWall = false;
    }
    else {
		justBehindWall = true;
		if random(4) < 1 {
	        motion_add(random(360), 0.4)
	        walk = 10 + random(10)
	        alarm[1] += walk;
	        gunangle = direction
	        if hspeed > 0
	        right = 1
	        else if hspeed < 0
	        right = -1
	    }
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

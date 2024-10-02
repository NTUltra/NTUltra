///@description AI
alarm[1] = actTime + random(actTime)
if goToTarget
	exit;
scrTarget()
if target != noone {
	var dis = point_distance(target.x, target.y, x, y);
	if (dis > materializeRange || (dis > 96 && random(4) < 1))
		event_user(0);
	else
		event_user(1);
    if collision_line(x, y, target.x, target.y, Wall, 0, 0) < 0 {
        if !justAroundWall && dis > 32 {
			instance_create(x,y,Notice);
			alarm[2] = 10;
			alarm[1] += actTime;
			speed *= 0.5;
			if choose(true,false)
				gunangle = point_direction(x, y, target.x, target.y);
			else
				direction = point_direction(x,y,target.x, target.y) + random_range(30,-30);
        }
        else {
            direction = point_direction(x,y,target.x, target.y) + random_range(60,-60);
            walk = actTime + random(actTime*2)
            gunangle = point_direction(x, y, target.x, target.y)
        }
		justAroundWall = false;
        if target.x < x
			right = -1
        else if target.x > x
			right = 1
    }
	else
	{
		justAroundWall = true;
		alarm[1] *= 0.5;
		var ran = random(4)
		if ran < 1 {
	        motion_add(random(360), acc)
	        walk = actTime + random(actTime*2)
	        if hspeed > 0
				right = 1
	        else if hspeed < 0
				right = -1
	    } else if ran < 2
		{
			motion_add(point_direction(x,y,target.x, target.y) + random_range(30,-30),acc);		
		}
	}
	if instance_number(enemy) < 10 || random(10) < 1
		direction = point_direction(x,y,target.x,target.y);
}
else if random(10) < 1 {
    motion_add(random(360), 0.4)
	walk = actTime + random(actTime*2)
    alarm[1] = walk + actTime + random(actTime*2)
    if hspeed > 0
    right = 1
    else if hspeed < 0
    right = -1
}

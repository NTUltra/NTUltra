///@description AI
alarm[1] = actTime + random(actTime)
if goToTarget
	exit;
scrTarget()
if target != noone {
	var dis = point_distance(target.x, target.y, x, y);
	if (dis > materializeRange || (dis > 96 && random(5) < 1))
		event_user(0);
	else
		event_user(1);
	if instance_number(enemy) < 8
		direction = point_direction(x,y,target.x,target.y);
    if collision_line(x, y, target.x, target.y, Wall, 0, 0) < 0 {
        if !justAroundWall && dis > 48 && random(2) < 1{
			alarm[2] = 12;
			alarm[1] += 12 + actTime + 10;
			walk = 0;
			speed = 0;
			gunangle = point_direction(x, y, target.x, target.y);
			instance_create(x-5,y,Notice);
			instance_create(x,y,Notice);
			instance_create(x+5,y,Notice);
        }
        else {
            direction = point_direction(x,y,target.x, target.y) + random(20) - 10
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
		if random(4) < 1 {
	        motion_add(random(360), acc)
	        walk = actTime + random(actTime*2)
	        if hspeed > 0
				right = 1
	        else if hspeed < 0
				right = -1
	    }
	}
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

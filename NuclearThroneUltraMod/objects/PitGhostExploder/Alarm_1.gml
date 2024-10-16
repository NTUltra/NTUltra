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
        if !justAroundWall || loops > 4 {
			if random(2) < 1
			{
				alarm[2] = 5;
			}
			else
			{
				alarm[5] = 5;
				speed *= 0.5;
			}
			alarm[1] += actTime;
			if loops < 1
				justAroundWall = true;
			if random (3) < 1
			{
				motion_add(point_direction(target.x, target.y,x,y),acc);
				walk = alarm[1] + actTime;
			}
        }
        else {
			if justAroundWall
				alarm[1] = actTime;
            direction = random(360);
            walk = actTime + random(actTime*2)
        }
		justAroundWall = false;
        if target.x < x
			right = -1
        else if target.x > x
			right = 1
    }
	else
	{
		if dis < 300 && random(22) < 1
		{
			alarm[2] = 5;
			alarm[1] += actTime * 3;
			motion_add(point_direction(target.x, target.y,x,y), acc);
			walk = max(walk,actTime);
		}
		justAroundWall = true;
		alarm[1] *= 0.5;
		var ran = random(5)
		if ran < 1 {
	        motion_add(random(360), acc)
	        walk = actTime + random(actTime*2)
	        if hspeed > 0
				right = 1
	        else if hspeed < 0
				right = -1
	    }/* else if ran < 2 && (dis < 176 || dis > 450)
		{
			motion_add(point_direction(x,y,target.x, target.y) + random_range(30,-30),acc);	
			walk = actTime;
		}*/
		else if ran < 2 && dis < 300
		{
			motion_add(point_direction(target.x, target.y,x,y), acc);
			walk = max(walk,actTime);
		}
	}
	if instance_number(enemy) < 10 || random(40) < 1
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

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
        if !justAroundWall && dis > max(0,32 - loops) || loops > 4 {
			instance_create(x,y,Notice);
			alarm[2] = 10;
			alarm[1] += actTime*2;
			if loops < 1
				justAroundWall = true;
			speed *= 0.5;
			if choose(true,false)
				gunangle = point_direction(x, y, target.x, target.y);
			else
				direction = point_direction(x,y,target.x, target.y) + random_range(30,-30);
        }
        else {
			if justAroundWall
				alarm[1] = actTime;
			if target.object_index == Player && (Player.skill_got[8] || Player.race == 15)
				direction = point_direction(x,y,target.x, target.y);
			else
				direction = point_direction(x,y,target.x, target.y) + random_range(60,-60);
            walk = actTime + random(actTime*2)
            gunangle = point_direction(x, y, target.x, target.y)
        }
		if justAroundWall
			alarm[1] -= actTime*0.5;
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
		var ran = random(10)
		if ran < 2 {
	        motion_add(random(360), acc)
	        walk = actTime + random(actTime*2)
	        if hspeed > 0
				right = 1
	        else if hspeed < 0
				right = -1
	    } else if ran < 4 && (dis < 176 || dis > 450)
		{
			motion_add(point_direction(x,y,target.x, target.y) + random_range(30,-30),acc);	
			walk = actTime;
		}
		else if ran < 6.5 && instance_exists(ThePit)
		{
			motion_add(point_direction(x,y,ThePit.x,ThePit.y),acc);
			walk = actTime;
		}
	}
	if instance_number(enemy) < 8 || random(40) < 1
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

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
	if instance_number(enemy) < 10 || random(40) < 1
	{
		direction = point_direction(x,y,target.x,target.y);
		speed *= 0.5;
	}
    if collision_line(x, y, target.x, target.y, Wall, 0, 0) < 0 {
        if !justAroundWall && dis > max(0,32 - loops) && random(2) < 1 || loops > 4{
			alarm[2] = 12;
			alarm[1] += 12 + actTime + 10;
			if loops < 1
				justAroundWall = true;
			walk = 0;
			speed = 0;
			gunangle = point_direction(x, y, target.x, target.y);
			instance_create(x-5,y,Notice);
			instance_create(x,y,Notice);
			instance_create(x+5,y,Notice);
        }
        else {
			if justAroundWall
				alarm[1] = actTime + 2;
			if target.object_index == Player && (Player.skill_got[8] || Player.race == 15)
				direction = point_direction(x,y,target.x, target.y);
			else
				direction = point_direction(x,y,target.x, target.y) + 180 + random_range(90,-90);
            //direction = point_direction(x,y,target.x, target.y) +  180 + random_range(90,-90)
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
		if random(4) < 1 {
	        motion_add(random(360), acc)
	        walk = actTime + random(actTime*2)
	        if hspeed > 0
				right = 1
	        else if hspeed < 0
				right = -1
	    }
		else if (dis > 48 && (dis < 176 || dis > 400)) && (instance_number(enemy) < 10 || random(10) < 1)
		{
			direction = point_direction(x,y,target.x, target.y) + random_range(30,-30);
			if random(2) < 1
			{
				walk = actTime;
				mp_potential_step(target.x,target.y,maxSpeed,false);
			}
		}
		else if instance_exists(ThePit) && instance_number(enemy) < 30
		{
			motion_add(point_direction(x,y,ThePit.x,ThePit.y),acc);
			walk = actTime;
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

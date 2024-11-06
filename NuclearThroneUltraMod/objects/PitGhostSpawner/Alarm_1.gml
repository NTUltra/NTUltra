///@description AI
alarm[1] = actTime + random(actTime)
scrTarget()
if target != noone {
	var dis = point_distance(target.x, target.y, x, y);
	if (dis > materializeRange || (dis > 96 && random(4) < 1))
		event_user(0);
	else
		event_user(1);
    if collision_line(x, y, target.x, target.y, Wall, 0, 0) < 0 && dis < 250 {
        if dis > 64 && random(3) < 1 {
			alarm[2] = 5;
			alarm[1] += actTime;
			gunangle = point_direction(x, y, target.x, target.y)
        }
        else {
            direction = point_direction(target.x, target.y, x, y) + (random(30) - 15)
            walk = actTime + random(actTime*2)
        }

        if target.x < x
			right = -1
        else if target.x > x
			right = 1
    }
    else if random(4) < 1 {
        motion_add(random(360), acc)
        walk = actTime + random(actTime*2)
        if hspeed > 0
			right = 1
        else if hspeed < 0
			right = -1
    }
	else if random(3) < 1 && (dis > 500)
	{
		motion_add(point_direction(x,y,target.x, target.y) + random_range(60,-60),acc);	
		walk = actTime;
	}
	else if dis > 96 && instance_number(enemy) < 10
	{
		motion_add(point_direction(x,y,target.x, target.y),acc);
		if dis > 300
			mp_potential_step(target.x,target.y,maxSpeed,false);
		walk = actTime;
	}
	else if instance_exists(ThePit) && instance_number(enemy) < 30
	{
		motion_add(point_direction(x,y,ThePit.x,ThePit.y),acc);
		mp_potential_step(ThePit.x,ThePit.y,3,false);
		walk = actTime;
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

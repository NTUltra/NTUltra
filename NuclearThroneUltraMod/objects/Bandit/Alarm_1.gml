///AI
alarm[1] = actTime + random(actTime)//22 10

scrTarget()
if target != noone && instance_exists(target) && collision_line(x, y, target.x, target.y, Wall, 0, 0) < 0 
{
	var dis = point_distance(target.x, target.y, x, y)
	if dis > minRange && dis < 320 {
	    if random(4) < 1 {
			alarm[2] = tellTime;
			alarm[1] += tellTime + random(actTime);
	    }
	    else {
	        direction = point_direction(x, y, target.x, target.y) + random(180) - 90
	        speed = 0.4
	        walk = 10 + random(10)
	        gunangle = point_direction(x, y, target.x, target.y)
	    }

	}
	else {
	    direction = point_direction(target.x, target.y, x, y) + random(20) - 10
	    speed = 0.4
	    walk = actTime * 2 + random(actTime * 1.5)
	    gunangle = point_direction(x, y, target.x, target.y)
	}
	if target.x < x
		right = -1
	else if target.x > x
		right = 1
}
else if random(4) < 1 {
    motion_add(random(360), 0.4)
    walk = actTime * 0.5 + random(actTime)
    alarm[1] = walk + actTime*0.5 + random(actTime)
    gunangle = direction
    if hspeed > 0
		right = 1
    else if hspeed < 0
		right = -1
}
///@description AI
alarm[1] = actTime + random(actTime)
scrTarget()
if target != noone {
    if collision_line(x, y, target.x, target.y, Wall, 0, 0) < 0 {
		var dis = point_distance(target.x, target.y, x, y)
        if dis > 52 {
			var ran = random(4);
            if ran < 1  && instance_number(EnemyWazer) < 2 && dis < maxRange{
                
				event_user(0);
            }
			else if dis < maxRange && ran < 1.5
			{
				event_user(1);	
			}
            else {
                direction = point_direction(x, y, target.x, target.y) + random(180) - 90
                speed = 0.4
                walk = 10 + random(10)
            }
        }
        else {
            direction = point_direction(target.x, target.y, x, y) + random(20) - 10
            speed = 0.4
            walk = 40 + random(10)
        }
    }
    else if random(4) < 1 {
        motion_add(random(360), 0.4)
        walk = 20 + random(10)
        alarm[1] = walk + 10 + random(30)
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
    if hspeed > 0
    right = 1
    else if hspeed < 0
    right = -1
}

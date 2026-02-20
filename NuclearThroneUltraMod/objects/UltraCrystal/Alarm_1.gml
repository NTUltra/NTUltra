///@description AI
if (instance_exists(Player) && !Player.justAsheep) sleeping = false;;
alarm[1] = actTime + random(actTime)
walk = max(walk,alarm[1]);
scrTarget()
if target != noone {
    if collision_line(x, y, target.x, target.y, Wall, 0, 0) < 0 {
		var dis = point_distance(target.x, target.y, x, y);
        if dis > 32  && dis < 450{
            if random(3) < 1 {
                snd_play(sndEnemyFire)
                wkick = 4
                alarm[1] = 20 + random(5)
				event_user(0);
            }
            else {
                direction = point_direction(x, y, target.x, target.y) + random(90) - 45
            }
        }
        else {
            direction = point_direction(target.x, target.y, x, y) + random(20) - 10
        }
    }
    else if random(4) < 1 {
		event_user(1);
		speed = 0;
    }
	else if random(3) < 1
		direction = random(360)
	
	if target.x < x
		right = -1
	else if target.x > x
		right = 1
}
else if random(10) < 1 {
    motion_add(random(360), 0.4)
    alarm[1] += random(actTime)
	if hspeed > 0
		right = 1
	else if hspeed < 0
		right = -1
}

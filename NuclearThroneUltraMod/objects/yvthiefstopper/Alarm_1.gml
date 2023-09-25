///@description AI
alarm[1] = actTime + random(actTime)
scrTarget()
if target != noone {
    if collision_line(x, y, target.x, target.y, Wall, 0, 0) < 0 {
		var dis = point_distance(target.x, target.y, x, y)
		if hasSeen > 0
		{
			if dis < 190
			{
				if hasSeen == 2
					snd_play_2d(sndMutant6LowA);
				else
					snd_play_2d(sndMutant6LowH);
				hasSeen --;
				instance_create(x,y,Notice);
				alarm[1] = 30;
			}
			if dis > 64
			{
				speed = 2;
				walk = 15;
			}
			direction = point_direction(x,y,target.x,target.y);
			gunangle = point_direction(x, y, target.x, target.y);
		}
        else if dis > 52  && dis < 200 {
            if random(4) < 1 {
				BackCont.shake += 5
				snd_play(sndVenuz);
				instance_create(x-5,y,Notice);
				instance_create(x,y,Notice);
				instance_create(x+5,y,Notice);
				alarm[3] = max(1,16 - aggroBuff);
                walk = clamp(walk,0,5);
				gunangle = point_direction(x, y, target.x, target.y)
				if aggroBuff < 14
					aggroBuff ++;
				if aggroBuff < 6
					actTime = max(2,actTime - 1);
                alarm[1] = max(20,110  - (aggroBuff*1.5));
            }
            else {
                direction = point_direction(x, y, target.x, target.y) + random(180) - 90
                speed = 0.4
                walk = 10 + random(10)
                gunangle = point_direction(x, y, target.x, target.y)
            }

        }
        else {
			if dis > 100
				direction = point_direction(x, y, target.x, target.y) + random(20) - 10;
			else
				direction = point_direction(target.x, target.y, x, y) + random(20) - 10;
            speed = 1;
            walk = 40 + random(10)
            gunangle = point_direction(x, y, target.x, target.y)
        }

        if target.x < x
			right = -1
        else if target.x > x
			right = 1
    }
    else if random(4) < 1 {
        motion_add(random(360), 0.4)
        walk = 20 + random(10)
        alarm[1] = walk + 10 + random(30)
        gunangle = direction
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
    gunangle = direction
    if hspeed > 0
    right = 1
    else if hspeed < 0
    right = -1
}
if !instance_exists(Player) && !taunted
{
	alarm[4] = 30;
	taunted = true;
}

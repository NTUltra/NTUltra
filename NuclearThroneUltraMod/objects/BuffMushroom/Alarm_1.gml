///@description AI
alarm[1] = actTime + random(actTime)
scrTarget()
if target > 0 {
    if collision_line(x, y, target.x, target.y, Wall, 0, 0) < 0 {
		var dis = point_distance(target.x, target.y, x, y);
		var dir = point_direction(x, y, target.x, target.y);
		gunangle = dir;
		if target.x < x
			right = -1
        else if target.x > x
			right = 1
	        if dis > 48  && dis < detectionRange{
	            if random(3) < 1.5 {
					ammo = maxAmmo;
					snd_play(sndWaveGun);
					event_user(0);
	            }
				else if dis < 64
				{
					direction = dir;
					motion_add(dir,maxSpeed);
					walk = actTime + 5;
				}
	            else {
	                direction = point_direction(x, y, target.x, target.y) + random(180) - 90
	                walk = 9 + random(9)
	            }
	        }
			
		}
        else if random(3) < 1 {
			alarm[1] += 5;
            direction = point_direction(target.x, target.y, x, y) + random(20) - 10
            speed = 0.6
            walk = 20 + random(10)
            gunangle = point_direction(x, y, target.x, target.y)
		}
		else {
			alarm[1] += 5;
            direction = random(360);
            speed = 0.3
            walk = actTime - random(4)
            gunangle = point_direction(x, y, target.x, target.y)
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

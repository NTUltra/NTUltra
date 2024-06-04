///@description AI
alarm[1] = actTime + random(actTime)
scrTarget()
if target != noone {
	var dis = point_distance(target.x, target.y, x, y);
	if dis < maxDistance {
		if stalking && depth > 0
		{
			alarm[1] = actTime;
			tx = target.x;
			ty = target.y + 34;
			motion_add(dis,acc);
			if dis < 32
			{
				x = tx;
				y = ty;
				walk = 0;
				event_user(0);
			}
		}
		if dis > 32
		{
			var ran = random(100);
			if image_alpha > 0.9 && ran < 30 {
				sprite_index = spr_fire;
				event_user(2);
				image_index = 0;
				alarm[3] = (image_number/image_speed) + 1
		        snd_play(sndEnemyFire)
				gunangle = point_direction(x, y, target.x, target.y)
		        with instance_create(x, y, EnemyBullet1) {
		            motion_add(other.gunangle, 3.5)
		            image_angle = direction
		            team = other.team
		        }
		        alarm[1] = actTime * 3 + random(actTime*2);
				if ran < 40 {
					motion_add(acc,random(360));
					walk = alarm[1] + actTime + random(actTime);
				}
		    }
		    else if ran < 50 {
				event_user(1);
		    }
			else if ran < 80 {
				motion_add(acc,random(360));
				walk = alarm[1] + actTime + random(actTime);
			}
		}
	}
	else
	{
		event_user(2);
	}
    if target.x < x
		right = -1
    else if target.x > x
		right = 1
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

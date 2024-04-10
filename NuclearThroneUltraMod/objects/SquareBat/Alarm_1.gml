///@description AI
alarm[1] = actTime + random(actTime)
sleeping = false;
scrTarget()
if target != noone {
	var dis = point_distance(target.x, target.y, x, y);
    if dis > 48  && dis < 200 {
		var ran = random(10);
		
		
		if ran < 0.5
		{
			circleMode = false
			walk = actTime + random_range(-4,6);
		} else if dis < 140 && ran < 4
		{
			circleMode = true;
			alarm[1] += 5;
			angle = point_direction(target.x,target.y,x,y);
		}
		else if ran < 6
		{
			var pspeed = projectileSpeed;
			if circleMode
				pspeed = projectileSpeedCircle;
			
			var dir = point_direction(x,y,target.x,target.y) + random_range(10,-10);
			sprite_index = spr_fire;
			alarm[2] = sprite_get_number(spr_fire)/image_speed;
			snd_play(sndEnemyFire);
			with instance_create(x,y,EnemyBullet1Square)
			{
				motion_add(dir,pspeed)
				image_angle = direction
				team = other.team
			}
			if ran < 4.5
				walk = actTime + random_range(-4,6);
		} else if ran > 8
		{
			direction = point_direction(x,y,target.x,target.y) + random_range(10,-10);
			walk = actTime + random_range(-4,6);
		}
		
    }
    else if random(10) < 3 {
        direction = point_direction(target.x, target.y, x, y) + random(20) - 10
        speed = 0.4
        walk = 40 + random(10)
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
    if hspeed > 0
		right = 1
    else if hspeed < 0
		right = -1
}

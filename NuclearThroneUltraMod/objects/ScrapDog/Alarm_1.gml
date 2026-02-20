///@description AI
alarm[1] = actTime + random(actTime)
scrTarget()
if target != noone {
    if collision_line(x, y, target.x, target.y, Wall, 0, 0) < 0 {
		var ran = random(100);
        if ran > 60 {
			alarm[2] = tellTime;
			alarm[1] += tellTime;
			walk = min(walk,tellTime);
			ammo = maxAmmo;
            gunangle = point_direction(x, y, target.x, target.y) - spreadRange;
        }
		else if ran > 40
		{
			snd_play(sndScrapDogMissile);
			sprite_index = spr_fire;
			image_index = 0;
			gunangle = point_direction(x, y, target.x, target.y) - spreadRange;
			with instance_create(x,y,missileType)
			{
				motion_add(other.gunangle,2)
				team = other.team;
			}
		}
        else {
            direction = point_direction(x, y, target.x, target.y) + random(180) - 90
            speed = 0.4
            walk = 10 + random(10)
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

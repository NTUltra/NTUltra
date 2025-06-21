///@description AI
alarm[1] = actTime + random(actTime)
scrTarget()
if target != noone {
if collision_line(x, y, target.x, target.y, Wall, 0, 0) < 0 {
        gunangle = point_direction(x, y, target.x, target.y);
        sprite_index = spr_fire;
		image_index = 0;
		alarm[3] = sprite_get_number(spr_fire)/image_speed;
		snd_play(sndGuardianFire,0.15)
			with instance_create(x,y,VenusTrapBulletSpawn)
			{	
				/*
				if GetPlayerLoops() > random(2.5)
				{
					typ = 3;
					sprite_index = sprGuardianSquareBulletSpawn;
				}*/
				projectileSpeed = 3.75;
				fireDelay = 2;
				myRotation = -30;
				team = other.team;
				owner = other.id;
				motion_add(other.gunangle,3);
				isInverted = other.isInverted;
				if isInverted
				{
					sprite_index = sprInvertedGuardianBulletSpawn;
				}
			}
			alarm[1] = actTime * 4;
	}
    else 
	{
        direction = point_direction(x, y, target.x, target.y) + random(180) - 90
        walk = alarm[1];
    }
    if target.x < x
		right = -1
    else if target.x > x
		right = 1
}
else if random(4) < 1 {
    motion_add(random(360), acc)
    walk = alarm[1]
    if hspeed > 0
		right = 1
    else if hspeed < 0
		right = -1
}

///@description AI
alarm[1] = actTime + random(actTime)
if (instance_exists(Player) && !Player.justAsheep) sleeping = false;;
scrTarget()
if target != noone {
    if collision_line(x, y, target.x, target.y, Wall, 0, 0) < 0 {
		var dis = point_distance(target.x, target.y, x, y);
        if dis > 58  && dis < 200{
            if random(4) < 1 {
				alarm[2] = 2;
				alarm[1] += 2;
				gunangle = point_direction(x, y, target.x, target.y);
				direction = gunangle + 180;
				snd_play(sndGruntFire);
				with instance_create(x, y, EnemyBullet1Square) {
					sprite_index = sprIDPDSquareBullet;
					onlyHitPlayerTeam = true;
				    motion_add(other.gunangle + random(10) - 5, other.projectileSpeed - 0.5)
				    image_angle = direction
				    team = other.team
				}
            }
            else {
                direction = point_direction(x, y, target.x, target.y) + random(180) - 90
                speed = 0.6
                walk = 10 + random(10)
                gunangle = point_direction(x, y, target.x, target.y)
            }

        }
        else {
			if instance_number(FreakVenomizerProjectile) < 8 && random(4) < 1
			{
				alarm[1] += actTime;
				hasDoneVenomizer = true;
				var n = instance_nearest(x,y,WallHitMe)
				if n != noone
				{
					with instance_create(x,y,FreakVenomizerProjectile)
					{
						motion_add(point_direction(x,y,n.x+8,n.y+8),12);
						image_angle = direction;
					}
				}
			}
			else
			{
	            direction = point_direction(x, y,target.x, target.y) + random(20) - 10
	            speed = max(speed,0.8);
	            walk = 20 + random(10)
				alarm[1] += 2;
	            gunangle = point_direction(x, y, target.x, target.y)
			}
        }

        if target.x < x
        right = -1
        else if target.x > x
        right = 1
    }
	else if random (3) < 1  || point_distance(target.x, target.y, x, y) > 300{
        direction = point_direction(x, y, target.x, target.y) + random(20) - 10
        speed = max(speed,1);
        walk = 30 + random(10)
        gunangle = point_direction(x, y, target.x, target.y)
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

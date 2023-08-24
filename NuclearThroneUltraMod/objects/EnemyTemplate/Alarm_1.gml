///@description AI
alarm[1] = actTime + random(actTime)
scrTarget()
if target > 0 {
    if collision_line(x, y, target.x, target.y, Wall, 0, 0) < 0 {
        if point_distance(target.x, target.y, x, y) > 52 {
            if random(4) < 1 {
                snd_play(sndEnemyFire)
                wkick = 4
				if choose(true,false)
					gunangle = point_direction(x, y, target.x, target.y)
                with instance_create(x, y, EnemyBullet1) {
                    motion_add(other.gunangle + random(20) - 10, 4)
                    image_angle = direction
                    team = other.team
                }
                alarm[1] = 20 + random(5)
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

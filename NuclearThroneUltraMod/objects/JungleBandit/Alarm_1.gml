//PRE LOOP
alarm[1] = actTime + random(actTime)

scrTarget()
if target > 0 {
    if collision_line(x, y, target.x, target.y, Wall, 0, 0) < 0 || (isInverted && random(4) < 1){
        if point_distance(target.x, target.y, x, y) > 64 {
            direction = point_direction(x, y, target.x, target.y) + random(180) - 90
            speed = 0.6
            walk = 10 + random(10)
            gunangle = point_direction(x, y, target.x, target.y)
        }
        else if point_distance(target.x, target.y, x, y) < 132 {
            //Fire
            if random(5) < 2 && ammo > 0 {
                gunangle = point_direction(xprevious, yprevious, target.xprevious, target.yprevious)
				gonnashoot += 6;
				
				if gonnashoot > ammo
					gonnashoot = ammo;
				
				direction = point_direction(x, y, target.x, target.y) + random(30) - 195
	            speed = 0.6
	            walk = 10 + random(10)
            } else {
                alarm[1] = 20;
                ammo = maxAmmo;
            }

        }
        else {
            direction = point_direction(target.x, target.y, x, y) + random(20) - 10
            speed = 0.4
            walk = 20 + random(10)
            gunangle = point_direction(x, y, target.x, target.y)
        }

        if target.x < x
        right = -1
        else if target.x > x
        right = 1
    }
    else if random(10) < 1 {
        motion_add(point_direction(x, y, target.x, target.y), 0.4)
        mp_potential_step(target.x, target.y, 0.8, false)
        alarm[1] = walk + 10 + random(10)
    }
    else if random(4) < 1 {
        motion_add(random(360), 0.4)
        walk = 5 + random(10)
        alarm[1] = walk + 5 + random(10)
        gunangle = direction
        if hspeed > 0
        right = 1
        else if hspeed < 0
        right = -1
    }
}
else if random(10) < 1 {
    motion_add(random(360), 0.4)
    walk = 5 + random(10)
    alarm[1] = walk + 2 + random(5)
    gunangle = direction
    if hspeed > 0
    right = 1
    else if hspeed < 0
    right = -1
}

///@description AI
alarm[1] = actTime + random(actTime)
scrTarget()
if target != noone {
	var ran = random(100);
    if !collision_line(x, y, target.x, target.y, Wall, 0, 0) {
		//Reshuffle the stage / Toxic floor tiles attack
		//Shift to toxic / earth
		//Send out the healing buddies
		//Run to another prop (if there is one)
		//Spam some projectiles for the fun
        if point_distance(target.x, target.y, x, y) > 52 {
            if random(4) < 1 {
                snd_play(sndEnemyFire)
                wkick = 4
				gunangle = point_direction(x, y, target.x, target.y)
                with instance_create(x, y, EnemyBullet1) {
                    motion_add(other.gunangle + random(20) - 10, 4)
                    image_angle = direction
                    team = other.team
                }
            }
            else {
                gunangle = point_direction(x, y, target.x, target.y)
            }

        }
        else {
            gunangle = point_direction(x, y, target.x, target.y)
        }
    }
	else
	{
		//Big long range attack
	}
}
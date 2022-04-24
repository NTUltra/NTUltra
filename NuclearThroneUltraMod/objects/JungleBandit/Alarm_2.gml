/// @description i am firing pew

alarm[2] = 3

if gonnashoot > 0 {
	
	if ammo == 0 {
		gonnashoot = 0;
		exit;
	}
	scrTarget();
	if target > 0{
		gunangle = point_direction(xprevious, yprevious, target.xprevious, target.yprevious)
		if point_distance(target.x, target.y, x, y) > 200 || collision_line(x, y, target.x, target.y, Wall, 0, 0) >= 0 {
			gonnashoot = 0
			exit;
		}
	} else {
		gonnashoot = 0;
		exit;
	}
	
	snd_play(sndPopgun)
	wkick = 3

    with instance_create(x, y, EnemyBullet3) {
        motion_add(other.gunangle + (random(16) - 8), 14 + random(2))
        image_angle = direction
        team = other.team
    }
	
	gonnashoot -= 1
}
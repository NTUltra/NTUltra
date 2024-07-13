/// @description i am firing pew

alarm[2] = 3

if gonnashoot > 0 {
	
	if ammo == 0 {
		gonnashoot = 0;
		alarm[2] += 6;
		alarm[1] += 4;
		exit;
	}
	snd_play(sndPopgun)
	wkick = 3

    with instance_create(x, y, EnemyBullet3) {
        motion_add(other.gunangle + (random(16) - 8), 11 + random(2))
        image_angle = direction
        team = other.team
    }
	
	scrTarget();
	if target != noone{
		gunangle += angle_difference(point_direction(xprevious, yprevious, target.xprevious-target.hspeed, target.yprevious-target.vspeed),gunangle) * 0.5;
		if point_distance(target.x, target.y, x, y) > 200 || collision_line(x, y, target.x, target.y, Wall, 0, 0) >= 0 {
			gonnashoot = 0
			exit;
		}
	} else {
		gonnashoot = 0;
		exit;
	}
	
	gonnashoot -= 1
}
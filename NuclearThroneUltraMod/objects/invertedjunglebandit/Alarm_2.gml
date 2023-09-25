/// @description i am firing pew through walls..

alarm[2] = 2

if gonnashoot > 0 {
	
	if ammo == 0 {
		gonnashoot = 0;
		exit;
	}
	snd_play(sndEnemyFire)
	wkick = 4
	walk -= 1;
    with instance_create(x, y, EnemyBullet1Square) {
        motion_add(other.gunangle + (random(16) - 8), 5)
        image_angle = direction
        team = other.team
    }
	scrTarget();
	if target != noone{
		gunangle = point_direction(xprevious, yprevious, target.xprevious-target.hspeed, target.yprevious-target.vspeed)
		if point_distance(target.x, target.y, x, y) > 160 {
			gonnashoot = 0
			exit;
		}
	} else {
		gonnashoot = 0;
		exit;
	}
	
	gonnashoot -= 1
}
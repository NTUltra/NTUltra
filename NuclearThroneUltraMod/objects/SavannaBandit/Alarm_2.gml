/// @description ooo im gonna shoot!
if instance_exists(Player) && Player.loops > 0 {
	alarm[2] = 2;
} else {
	alarm[2] = 4;
}

if oooimgonnashoot {
	
	if ammo < 1 && alarm[3] < 1 {
		alarm[3] = 30;
	}
	
	if !instance_exists(target) || ammo < 1 || collision_line(target.x, target.y, x, y, Wall, 0, 0) >= 0 {
		oooimgonnashoot = false;
		exit;
	}
	
	ammo -= 1;
    wkick = 4
	gunangle = point_direction(x, y, target.x, target.y) + random(40) - 20
	var proj = EnemyBullet1;
	if loops > 3
	{
		snd_play(sndBouncerFire);
		proj = EnemyBouncerBullet;
	}
	else
	{
		snd_play(sndEnemyFire);
	}
    with instance_create(x, y, proj) {
        motion_add(other.gunangle + random(20) - 10, 3.5)
        image_angle = direction
        team = other.team
    }
}
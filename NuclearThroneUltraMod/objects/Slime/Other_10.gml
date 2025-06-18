/// @description Fire
var ran = random(10);
with Slime
{
	alarm[1] += 5;	
}
alarm[1] += actTime;
if ran < 4 {
    snd_play(sndEnemyFire);
	sprite_index = spr_fire;
	alarm[2] = sprite_get_number(spr_fire)/image_speed;
	gunangle = point_direction(x, y, target.x, target.y)
	//Nearest right angle
	var chooseAngle = choose(90,-90);
	var ys = sign(chooseAngle);
	if gunangle > 0
		gunangle = round(gunangle/90) * 90;
    with instance_create(x, y, EnemyBullet2WallHugger) {
		isVenomized = true;
		wallDirection = chooseAngle;
		image_yscale = ys;
        motion_add(other.gunangle, other.projectileSpeed)
        image_angle = direction
        team = other.team
    }
    alarm[1] += actTime;
}
else if ran < 6
{
	snd_play(sndToxicBoltGas);
	sprite_index = spr_fire;
	alarm[2] = sprite_get_number(spr_fire)/image_speed;
	gunangle = point_direction(x, y, target.x, target.y)
	//Nearest right angle
	if gunangle > 0
		gunangle = round(gunangle/90) * 90;
    with instance_create(x, y, ToxicGas) {
        motion_add(other.gunangle, max(1,other.projectileSpeed - 0.5))
        team = other.team
    }
	with instance_create(x, y, ToxicGas) {
        motion_add(other.gunangle, max(1,other.projectileSpeed - 1))
        team = other.team
		friction += 0.01;
    }
	with instance_create(x, y, ToxicGas) {
        motion_add(other.gunangle, max(1,other.projectileSpeed - 1.5))
        team = other.team
		friction += 0.015;
    }
    alarm[1] += actTime;
}
else {
    direction = point_direction(x, y, target.x, target.y) + random(180) - 90
    speed = 0.4
    walk = 10 + random(10)
    gunangle = point_direction(x, y, target.x, target.y)
}
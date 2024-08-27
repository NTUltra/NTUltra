/// @description Normal Gun 3
alarm[6] = gunInBetween;
var aim = normalGunAngle;
var spd = projectileSpeed + (projectileSpeedAdd*2);
snd_play(sndGruntFire)
speed = 0;
with instance_create(x + 28,y + laserY,IDPDBullet) {
	motion_add(aim,spd);
	image_angle = direction
	team = other.team
	alarm[3] = 10;
}
with instance_create(x - 28,y + laserY,IDPDBullet) {
	motion_add(aim,spd);
	image_angle = direction
	team = other.team
	alarm[3] = 10;
}
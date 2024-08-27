/// @description Normal Gun 2
alarm[5] = gunInBetween;
var aim = normalGunAngle;
var spd = projectileSpeed + projectileSpeedAdd;
snd_play(sndGruntFire)
speed = 0;
with instance_create(x + 20,y + laserY,IDPDBulletSmall) {
	motion_add(aim,spd);
	image_angle = direction
	team = other.team
	alarm[3] = 10;
}
with instance_create(x - 20,y + laserY,IDPDBulletSmall) {
	motion_add(aim,spd);
	image_angle = direction
	team = other.team
	alarm[3] = 10;
}

/// @description Normal Gun 4
alarm[7] = gunInBetween;
var aim = normalGunAngle;
var spd = projectileSpeed + (projectileSpeedAdd*3);
snd_play(sndGruntFire)
speed = 0;
with instance_create(x + 34,y + laserY,IDPDBulletSmall) {
	motion_add(aim,spd);
	image_angle = direction
	team = other.team
	alarm[3] = 10;
}
with instance_create(x - 34,y + laserY,IDPDBulletSmall) {
	motion_add(aim,spd);
	image_angle = direction
	team = other.team
	alarm[3] = 10;
}
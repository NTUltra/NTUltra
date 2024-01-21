/// @description Normal Gun 3
alarm[6] = gunInBetween;
speed *= 0.5;
var aim = normalGunAngle;
var spd = projectileSpeed + (projectileSpeedAdd*2);
snd_play(sndGruntFire)
speed *= 0.5;
with instance_create(x + 28,y + laserY,IDPDBullet) {
	motion_add(aim,spd);
	image_angle = direction
	team = other.team
}
with instance_create(x - 28,y + laserY,IDPDBullet) {
	motion_add(aim,spd);
	image_angle = direction
	team = other.team
}
/// @description Normal Gun
alarm[4] = gunInBetween;
var aim = normalGunAngle;
var spd = projectileSpeed;
snd_play(sndGruntFire)
speed *= 0.5;
with instance_create(x + 12,y + laserY,IDPDBullet) {
	motion_add(aim,spd);
	image_angle = direction
	team = other.team
}
with instance_create(x - 12,y + laserY,IDPDBullet) {
	motion_add(aim,spd);
	image_angle = direction
	team = other.team
}

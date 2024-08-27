/// @description Normal Gun
alarm[4] = gunInBetween;
var aim = normalGunAngle;
var spd = projectileSpeed;
snd_play(sndGruntFire)
speed = 0;
with instance_create(x + 12,y + laserY,IDPDBullet) {
	motion_add(aim,spd);
	image_angle = direction
	team = other.team
	alarm[3] = 10;
}
with instance_create(x - 12,y + laserY,IDPDBullet) {
	motion_add(aim,spd);
	image_angle = direction
	team = other.team
	alarm[3] = 10;
}

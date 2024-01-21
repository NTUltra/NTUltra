/// @description Normal Gun 5
alarm[3] = gunDelay;
speed *= 0.5;
var aim = normalGunAngle;
var spd = projectileSpeed + (projectileSpeedAdd*4);
snd_play(sndGruntFire)
speed *= 0.5;
with instance_create(x + 39,y + laserY,IDPDBulletSmall) {
	motion_add(aim,spd);
	image_angle = direction
	team = other.team
}
with instance_create(x - 39,y + laserY,IDPDBulletSmall) {
	motion_add(aim,spd);
	image_angle = direction
	team = other.team
}
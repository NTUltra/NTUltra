/// @description Normal Gun 5
alarm[3] = gunDelay;
var aim = normalGunAngle;
var spd = projectileSpeed + (projectileSpeedAdd*4);
snd_play(sndGruntFire)
speed = 0;
with instance_create(x + 39,y + laserY,IDPDBulletSmall) {
	motion_add(aim,spd);
	image_angle = direction
	team = other.team
	alarm[3] = 10;
}
with instance_create(x - 39,y + laserY,IDPDBulletSmall) {
	motion_add(aim,spd);
	image_angle = direction
	team = other.team
	alarm[3] = 10;
}
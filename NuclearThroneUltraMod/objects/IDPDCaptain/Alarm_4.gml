/// @description Spin all around
snd_play(sndGruntFire);
var aim = gunangle;
var aimOffset = cos(ammo*0.5) * waveSpin;
var len = 8;
repeat(9)
{
	var xx = x + lengthdir_x(len,aim + aimOffset);
	var yy = y + lengthdir_y(len,aim + aimOffset);
	with instance_create(xx,yy,IDPDBullet)
	{
		team = other.team;
		direction = aim + aimOffset;
		image_angle = direction;
		speed = other.projectileSpeed;
	}
	aim += 40;
}
ammo += 1;
alarm[4] = 3;
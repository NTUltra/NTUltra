/// @description Spin toward player
snd_play(sndGruntFire);
var s = 8;
var aimOffset = ammo * 2.6
var aim = gunangle - 90 + aimOffset;
var len = 8;
var xx = x + lengthdir_x(len,aim);
var yy = y + lengthdir_y(len,aim);
with instance_create(xx,yy,IDPDBullet)
{
	team = other.team;
	direction = aim;
	image_angle = direction;
	speed = s;
}
aim = gunangle - 70 + aimOffset;
xx = x + lengthdir_x(len,aim);
yy = y + lengthdir_y(len,aim);
with instance_create(xx,yy,IDPDBullet)
{
	team = other.team;
	direction = aim;
	image_angle = direction;
	speed = s;
}
aim = gunangle + 90 - aimOffset;
xx = x + lengthdir_x(len,aim);
yy = y + lengthdir_y(len,aim);
with instance_create(xx,yy,IDPDBullet)
{
	team = other.team;
	direction = aim;
	image_angle = direction;
	speed = s;
}
aim = gunangle + 70 - aimOffset;
xx = x + lengthdir_x(len,aim);
yy = y + lengthdir_y(len,aim);
with instance_create(xx,yy,IDPDBullet)
{
	team = other.team;
	direction = aim;
	image_angle = direction;
	speed = s;
}
ammo += 1;
alarm[6] = 3;
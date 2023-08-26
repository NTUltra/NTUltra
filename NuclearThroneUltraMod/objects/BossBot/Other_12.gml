/// @description Fire gun 1
snd_play(sndShotgun)
var ang = gunangle - 50;
repeat(3)
{
	with instance_create(x,y,EnemyBullet3)
	{
		friction = 0.3;
		motion_add(ang,8)
		image_angle = direction
		team = other.team
	}
	ang += 40;
}
BackCont.shake += 1
wkick = 8
alarm[1] += maxReload * 2;
reload = maxReload * 2;
fireSecondary = true;
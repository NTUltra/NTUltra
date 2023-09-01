/// @description Fire gun 1
snd_play(sndCuber)
var ang = gunangle - 30;
with instance_create(x,y,EnemyHomingTriangle)
{
	homingSpeed = 1;
	motion_add(ang,2)
	image_angle = direction
	team = other.team
}
BackCont.shake += 1
wkick = 8
alarm[1] += maxReload * 2;
reload = maxReload * 2;
fireSecondary = true;
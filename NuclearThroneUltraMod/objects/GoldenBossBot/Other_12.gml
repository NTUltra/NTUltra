/// @description Fire sword 1
snd_play(sndSword1);
with instance_create(x,y,EnemySlash)
{
	image_angle = other.gunangle
	motion_add(other.gunangle-10,2)
	team = other.team
}
wepangle1 = -wepangle1;
BackCont.shake += 1
alarm[1] += maxReload * 2;
reload = maxReload * 2;
fireSecondary = true;
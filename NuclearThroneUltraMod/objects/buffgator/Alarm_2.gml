/// @description fire
snd_play(sndFlakCannon)
with instance_create(x,y,EnemyFlakBullet)
{
	loops += other.loops;
	motion_add(other.gunangle,other.pspeed+random(2))
	image_angle = direction
	team = other.team
}
BackCont.shake += 1
wkick = 8
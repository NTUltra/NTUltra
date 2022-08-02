/// @description fire
snd_play(sndFlakCannon)
with instance_create(x,y,InvertedEnemyFlakBullet)
{
	motion_add(other.gunangle,9+random(2))
	image_angle = direction
	team = other.team
}
BackCont.shake += 1
wkick = 8
/// @description Fire
snd_play(sndEnemyFire)
wkick = 4
with instance_create(x,y,EnemyBullet1Square)
{
	motion_add(other.gunangle+random(14)-7,other.pSpeed)
	image_angle = direction
	team = other.team
}
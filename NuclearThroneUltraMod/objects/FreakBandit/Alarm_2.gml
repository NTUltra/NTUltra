/// @description Fire
snd_play(sndFreakBanditFire)
wkick = 4
with instance_create(x,y,EnemyBulletBigDiamond)
{
	motion_add(other.gunangle+random(20)-10,other.pSpeed)
	image_angle = direction
	team = other.team
}
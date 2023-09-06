///@description Fire
if ammo > 0
{
snd_play(sndEnemyFire)
wkick = 5
with instance_create(x,y,EnemyBullet1)
{

motion_add(other.gunangle+random(16)-8,other.projectileSpeed)
image_angle = direction
team = other.team
}
	ammo -= 1
	alarm[2] = 5
	alarm[1] += 5;
}


if ammo > 0
{
snd_play(sndEnemyFire)
wkick = 5
with instance_create(x,y,EnemyBullet1)
{
motion_add(other.gunangle+random(20)-10,3.6)
image_angle = direction
team = other.team
}
ammo -= 1
alarm[4] = 2
}


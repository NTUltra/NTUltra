if ammo > 0
{
snd_play(sndScorpionFire)
ammo -= 1
alarm[2] = 1
sprite_index = spr_fire
with instance_create(x,y,EnemyBullet2)
{
motion_add(other.gunangle+random(20)-10,3+random(5))
image_angle = direction
team = other.team
}
with instance_create(x,y,EnemyBullet2)
{
motion_add(other.gunangle+random(80)-40,2+random(2))
image_angle = direction
team = other.team
}
}
else
{
sprite_index = spr_idle
alarm[1] = 30+random(10)
}


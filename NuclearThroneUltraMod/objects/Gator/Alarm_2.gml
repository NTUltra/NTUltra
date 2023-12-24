/// @description fire

snd_play(sndShotgun)
repeat(6)
{
with instance_create(x,y,EnemyBullet3)
{motion_add(other.gunangle+(random(50)-25),10+random(4))
image_angle = direction
team = other.team}
}
BackCont.shake += 1
wkick = 8


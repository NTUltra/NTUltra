/// @description Fire
snd_play(sndMolefishFire, 0.05)
with instance_create(x,y,EnemyBullet4)
{
motion_add(other.gunangle+random(4)-2,6)
image_angle = direction
team = other.team
}
with instance_create(x,y,EnemyBullet4)
{
motion_add(other.gunangle+random(4)-2,7)
image_angle = direction
team = other.team
}
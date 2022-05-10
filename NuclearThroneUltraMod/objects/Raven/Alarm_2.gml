///@description Get prevhealth
if ammo > 0
{
snd_play(sndEnemyFire)
wkick = 5
with instance_create(x,y,EnemyBullet1)
{

motion_add(other.gunangle+random(16)-8,4)

if instance_exists(Player)
{
if Player.loops>0
motion_add(other.gunangle+random(16)-8,0.5)//extra speed yo
}

image_angle = direction
team = other.team
}
ammo -= 1
alarm[2] = 5

if instance_exists(Player)
{
if Player.loops>0
alarm[1] = 1+random(3);
}

}


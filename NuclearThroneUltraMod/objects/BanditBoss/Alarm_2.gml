if ammo > 0
{
if ammo= 10
snd_play(sndBigBanditShootLaugh)

shot = 1
ammo -= 1
alarm[2] = 4
sprite_index = spr_fire
walk = 0
motion_add(gunangle+180,1)
wkick = 5
snd_play(sndEnemyFire)
if instance_exists(Player)
{
if Player.loops>0
{
	with instance_create(x,y,EnemyBullet1Diamond)
	{
		motion_add(other.gunangle+random(30)-15,9)
		image_angle = direction
		team = other.team
	}
}
else
{//PRELOOP
with instance_create(x,y,EnemyBullet1)
{
motion_add(other.gunangle+random(30)-15,8)
image_angle = direction
team = other.team
}
}
}
else
{//PRELOOP
with instance_create(x,y,EnemyBullet1)
{
motion_add(other.gunangle+random(30)-15,8)
image_angle = direction
team = other.team
}
}

}
else
{

snd_play(sndBigBanditStopShoot)
sprite_index = spr_idle
if instance_exists(Player)
{
    if Player.loops>0{
    alarm[1] = 20+random(10)}
    else{
    alarm[1] = 60+random(10)}
}
else{
alarm[1] = 60+random(10)}
}


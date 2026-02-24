if ammo > 0
{
if ammo = 32
snd_play(sndSnowTankPreShoot);
snd_play(sndSnowTankShoot,0.01,true);
if ammo % 2 == 0
{
with instance_create(x,y,EnemyBullet5)
{motion_add(other.gunangle+sin(other.wave)*30,12)
team = other.team
image_angle = direction}
with instance_create(x,y,EnemyBullet5)
{motion_add(other.gunangle-sin(other.wave)*30,12)
team = other.team
image_angle = direction}
}
else
{
	var proj = EnemyBullet4

	if isLoop
		proj = EnemyBullet1Square;
with instance_create(x,y,proj)
{motion_add(other.gunangle+sin(other.wave)*30,10)
team = other.team
image_angle = direction}
with instance_create(x,y,proj)
{motion_add(other.gunangle-sin(other.wave)*30,10)
team = other.team
image_angle = direction}
}
alarm[2] = 1
wave += 0.05
ammo -= 1
}
else
{
snd_play(sndSnowTankCooldown);
rest = 1
alarm[1] = 4/0.4
sprite_index = spr_idle
image_index = 0
}


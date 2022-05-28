/// @description Fire
if ammo > 0
{
	if ammo = 12
	{
		snd_play(sndGoldTankPreShoot)
		with instance_create(x,y,InvertedGoldSnowTankNuke)
		{
			sprite_index=sprInvertedGoldTeaPotNuke;
			motion_add(other.gunangle+random(20)-10,1)
			image_angle = direction
			team = other.team
		}
	}

	var proj = EnemyBullet4
	if isLoop || ammo % 2 == 0
		proj = EnemyBullet5;
	if (fireLaser && ammo % 2 == 1)
	{
		snd_play(sndLaser,0.01,true)
		sprite_index = spr_fire
		with instance_create(x,y,EnemyLaser)
		{
			image_angle = other.gunangle+sin(other.wave)*20;
			team = other.team;
			event_perform(ev_alarm,0)
		}
		with instance_create(x,y,EnemyLaser)
		{
			image_angle = other.gunangle-sin(other.wave)*20;
			team = other.team
			event_perform(ev_alarm,0)
		}
	}
	else
	{
		with instance_create(x,y,proj)
		{motion_add(other.gunangle+sin(other.wave)*20,12)
		team = other.team
		image_angle = direction}
		with instance_create(x,y,proj)
		{motion_add(other.gunangle-sin(other.wave)*20,12)
		team = other.team
		image_angle = direction}
	}
	alarm[2] = 2
	wave += 0.1
	ammo -= 1
}
else
{
snd_play(sndGoldTankCooldown)
rest = 1
alarm[1] = 4/0.4
sprite_index = spr_idle
image_index = 0
}


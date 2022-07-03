if ammo > 0
{
	if ammo = 16
	snd_play(sndSnowTankPreShoot);

	var proj = EnemyBullet4

	if (fireLaser && ammo % 2 == 1)
	{
		proj = EnemyBullet1Square;
		snd_play(sndLaser,0.01,true)
		sprite_index = spr_fire
		with instance_create(x,y,EnemyLaser)
		{
			image_angle = other.gunangle+sin(other.wave)*20;
			image_yscale -= 0.25;
			laserDecrease += 0.1;
			team = other.team;
			event_perform(ev_alarm,0)
		}
		with instance_create(x,y,EnemyLaser)
		{
			image_angle = other.gunangle-sin(other.wave)*20;
			image_yscale -= 0.25;
			laserDecrease += 0.1;
			team = other.team
			event_perform(ev_alarm,0)
		}
	}
	else
	{
		snd_play(sndSnowTankShoot,0.01,true);
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
	snd_play(sndSnowTankCooldown);
	rest = 1
	alarm[1] = 4/0.4
	sprite_index = spr_idle
	image_index = 0
}


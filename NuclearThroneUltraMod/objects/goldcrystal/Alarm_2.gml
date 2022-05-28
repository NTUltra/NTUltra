///@description Fire
if ammo > 0
{
	if ammo == maxAmmo
	{
		gunangle -= (5*(maxAmmo*0.5));
	}
	ammo -= 1
	alarm[2] = 3
	snd_play(sndLaserUpg,0.01,true)
	sprite_index = spr_fire
	with instance_create(x,y,EnemyLaser)
	{
		image_yscale += 0.2;
		image_angle = other.gunangle+random(6)-3
		team = other.team
		event_perform(ev_alarm,0)
	}
	with instance_create(x,y,EnemyLaser)
	{
		image_yscale += 0.2;
		image_angle = other.gunangle+90+random(6)-3
		team = other.team
		event_perform(ev_alarm,0)
	}
	with instance_create(x,y,EnemyLaser)
	{
		image_yscale += 0.2;
		image_angle = other.gunangle+180+random(6)-3
		team = other.team
		event_perform(ev_alarm,0)
	}
	with instance_create(x,y,EnemyLaser)
	{
		image_yscale += 0.2;
		image_angle = other.gunangle+270+random(6)-3
		team = other.team
		event_perform(ev_alarm,0)
	}
	gunangle += 5;
}
else
{
sprite_index = spr_idle
}


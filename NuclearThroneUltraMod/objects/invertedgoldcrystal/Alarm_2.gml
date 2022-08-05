///@description Fire
if ammo > 0
{
	if ammo == maxAmmo
	{
		gunangle -= (5*(maxAmmo*0.5));
	}
	ammo -= 1
	alarm[2] = 4
	snd_play(sndLightning1,0.1)
	sprite_index = spr_fire;
	var am = 6;
	var angStep = 360/am;
	var ang = gunangle+(angStep*0.5);
	repeat(am)
	{
		with instance_create(x,y,Lightning)
		{
			image_angle = ang;
			team = other.team
			ammo = 6
			event_perform(ev_alarm,0)
			visible = 0
			with instance_create(x,y,LightningSpawn)
			image_angle = other.image_angle
		}
		ang += angStep;
	}
	with instance_create(x,y,Lightning)
	{
		image_angle = other.gunangle
		team = other.team
		ammo = 11
		event_perform(ev_alarm,0)
		visible = 0
		with instance_create(x,y,LightningSpawn)
		image_angle = other.image_angle
	}
	with instance_create(x,y,Lightning)
	{
		image_angle = other.gunangle+90
		team = other.team
		ammo = 11
		event_perform(ev_alarm,0)
		visible = 0
		with instance_create(x,y,LightningSpawn)
		image_angle = other.image_angle
	}
	with instance_create(x,y,Lightning)
	{
		image_angle = other.gunangle+180
		team = other.team
		ammo = 11
		event_perform(ev_alarm,0)
		visible = 0
		with instance_create(x,y,LightningSpawn)
		image_angle = other.image_angle
	}
	with instance_create(x,y,Lightning)
	{
		image_angle = other.gunangle+270
		team = other.team
		ammo = 11
		event_perform(ev_alarm,0)
		visible = 0
		with instance_create(x,y,LightningSpawn)
		image_angle = other.image_angle
	}
	gunangle += 5;
}
else
{
sprite_index = spr_idle
}


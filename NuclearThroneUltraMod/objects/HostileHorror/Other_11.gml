/// @description Lightning Attack
snd_play(choose(sndSpark1,sndSpark2))
with instance_create(x,y,Lightning)
{
	image_angle = other.gunangle;
	team = other.team
	ammo = 9
	event_perform(ev_alarm,0)
	with instance_create(x,y,LightningSpawn)
	{
		sprite_index=sprHorrorBeamSpawn
		image_angle = other.image_angle
	}
}

with instance_create(x,y,Lightning)
{
	image_angle = other.gunangle + 20;
	team = other.team
	ammo = 7
	event_perform(ev_alarm,0)
	with instance_create(x,y,LightningSpawn)
	{
		sprite_index=sprHorrorBeamSpawn
		image_angle = other.image_angle
	}
}

with instance_create(x,y,Lightning)
{
	image_angle = other.gunangle - 20;
	team = other.team
	ammo = 7
	event_perform(ev_alarm,0)
	with instance_create(x,y,LightningSpawn)
	{
		sprite_index=sprHorrorBeamSpawn
		image_angle = other.image_angle
	}
}
/// @description Lightning Attack
snd_play(choose(sndSpark1,sndSpark2))
var l = lightingLength;
with instance_create(x,y,Lightning)
{
	image_angle = other.gunangle;
	team = other.team
	ammo = l
	event_perform(ev_alarm,0)
	with instance_create(x,y,LightningSpawn)
	{
		sprite_index=sprHorrorBeamSpawn
		image_angle = other.image_angle
	}
}
l -= 2;
with instance_create(x,y,Lightning)
{
	image_angle = other.gunangle + 20;
	team = other.team
	ammo = l
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
	ammo = l
	event_perform(ev_alarm,0)
	with instance_create(x,y,LightningSpawn)
	{
		sprite_index=sprHorrorBeamSpawn
		image_angle = other.image_angle
	}
}
///@description Fire
if ammo > 0
{
	if ammo == maxAmmo
	{
		snd_play(sndLightning1,0.1)
	}
	else
	{
		snd_play(choose(sndSpark1,sndSpark2),0.01,true)
	}
	ammo -= 1
	alarm[2] = 2
	sprite_index = spr_fire
	var ang = random(360);
	var am = 6;
	var angStep = 360/am;
	var l = length;
	repeat(am)
	{
		with instance_create(x,y,Lightning)
		{
			image_angle = ang;
			team = other.team
			ammo = l;
			event_perform(ev_alarm,0)
			visible = 0
			with instance_create(x,y,LightningSpawn)
			image_angle = other.image_angle
		}
		ang += angStep;
	}
}
else
{
sprite_index = spr_idle
}


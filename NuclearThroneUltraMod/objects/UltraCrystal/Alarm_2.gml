///@description Fire
if ammo > 0
{
	var gunangleOffset = 4 * (maxAmmo - ammo)
	with instance_create(x,y,EnemyLaser)
	{
		image_angle = other.gunangle+gunangleOffset+random(6)-3
		team = other.team
		event_perform(ev_alarm,0)
	}
	if ammo < maxAmmo
	{
		with instance_create(x,y,EnemyLaser)
		{
			image_angle = other.gunangle-gunangleOffset+random(6)-3
			team = other.team
			event_perform(ev_alarm,0)
		}
	}
	ammo -= 1
	alarm[2] = 3
	snd_play(sndLaser,0.01,true)
	sprite_index = spr_fire
	
}
else
{
	sprite_index = spr_idle
}


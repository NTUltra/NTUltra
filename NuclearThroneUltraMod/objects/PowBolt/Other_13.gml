/// @description STOP
if !fired
{
	fired = true;
	if ammo > 1
		snd_play(sndDoubleShotgun);
	else
		snd_play(sndShotgun);
	with instance_create(x,y,FlakExploBurst)
	{
		team = other.team;
		ammo = other.ammo;
		totalAmmo = ammo;
		time = other.time;
		ang = other.direction;
		team = other.team
		event_perform(ev_alarm,0)
	}
	sprite_index = sprPowBoltDone;
}
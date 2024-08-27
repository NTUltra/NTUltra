/// @description Revive popo
instance_destroy();
snd_play(sndFreakPopoRevive);
with myCorpse
{
	instance_destroy();
	with instance_create(x,y,ReviveFX) {
		sprite_index = sprPopoRevive;
	}
	snd_play(choose(sndSpark1,sndSpark2),0.1)
	var ls = GetPlayerLoops()
	if ls > 11
	{
		var ang = random(360);
		var am = min(ls-9,8);
		var angStep = 360/am;
		var l = min(ls-5,14);
		repeat(am)
		{
			with instance_create(x,y,Lightning)
			{
				image_angle = ang;
				team = 4;
				ammo = l;
				event_perform(ev_alarm,0)
				with instance_create(x,y,LightningSpawn)
				image_angle = other.image_angle
			}
			ang += angStep;
		}
	}
}
with instance_create(x,y,IDPDFreak)
{
	hasDoneVenomizer = other.hasDoneVenomizer;
	alarm[1] *= 0.5;
	scrSleepyPopo()
	lifes = other.lifes;
	countKill = false;
}

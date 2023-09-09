/// @description Lightning
with instance_create(tx,ty,ReviveFX)
	sprite_index = sprInvertedGoldRevive;
with instance_create(tx,ty,choose(InvertedFreak,InvertedExploFreak))
{
	droprate = 5;
	raddrop = 0;
	countKill = false;
	existTime = 30;
	alarm[1] *= 0.5;
	snd_play(choose(sndSpark1,sndSpark2),0.1)
	var ang = random(360);
	var am = 4;
	var angStep = 360/am;
	var l = 6;
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
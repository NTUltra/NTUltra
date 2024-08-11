///scrAmbidexturous();
// /@description
///@param weapon
function scrAmbidexturous(wp){
	var loader = wep_load[wp];
	var slapped = noone;
	var theChance = 65;
	var heals = 0;
	while (loader > 0)
	{
		if (random(theChance) < loader &&
		random(100)< ((wep_cost[wep]/typ_ammo[wep_type[wep]]) * 1.25) * 100)
		{
			heals += 1;
		}
		loader -= theChance;
	}
	if heals > 0
	{
		with instance_create(x,y-16,FxOnOwner)
		{
			owner = other.id;
			sprite_index = sprAmbidexturous;
			yOffset = -16;
		}
		snd_play(sndBloodlustProc);
		if heals > 2
			snd_play(sndSteroidsUpg);
		scrHeal(heals);
	}
}
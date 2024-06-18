/// @description EAT
with Player
{
	if scrCanArmourHeal()
	{
		if armour == maxarmour
		{
			freeArmourStrike = true;	
		}
		else
		{
			armour += 1;
		}
		snd_play_2d(sndArmourHeal);
		var t = wep_type[wep]
		if t == 1
		{
			ammo[t] -= 127;
		}
		else
		{
			ammo[t] -= 27;	
		}
	}
}
instance_destroy();
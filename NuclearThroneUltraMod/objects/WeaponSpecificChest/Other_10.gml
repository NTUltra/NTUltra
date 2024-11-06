/// @description opening Chest
with Player {
	nochest = 0;
	if (scrIsCrown(20))
	{
		if (canCrownOfProtection > 3)
		{
			canCrownOfProtection = 0;
			scrArmourPickup(1);
		}
		else
		{
			canCrownOfProtection += 1;	
		}
	}
}
repeat(1+mediumchest) {
	var al = array_length(wep);
	for (var i = 0; i < al; i++)
	{
		with instance_create(x,y,WepPickup)
		{
			scrWeapons()
			wep = other.wep_target[other.wep[i]];
			name = wep_name[wep]
			ammo = other.ammoGet;
			type = wep_type[wep]
			curse = 0
			sprite_index = wep_sprt[wep]
		}
	}
	/*
	if heavyHeart
	{
		with instance_create(x,y,WepPickup)
		{
			scrWeapons()
			wep = other.wep[1];
			name = wep_name[other.wep]
			ammo = other.ammoGet;
			type = wep_type[other.wep]
			curse = 0
			sprite_index = wep_sprt[other.wep]
		}
	}
	*/
}
snd_play(sndWeaponChest);
instance_destroy()
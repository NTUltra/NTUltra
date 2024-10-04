if !instance_exists(Player){exit;}
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
scrChestOpenMindReload(Player);
repeat(1+Player.ultra_got[25]){//ROIDS ULTRA A DOUBLE WEPS
	if !oneweponly
	{
		with instance_create(x-8,y,WepPickup)
		{
			scrWeapons()
			wep=other.wep[0];
			scrAddNewWeaponDrop(wep);
			name = wep_name[wep]
			ammo = other.ammoGet
			curse = other.curse;
			type = wep_type[wep]
			sprite_index = wep_sprt[wep]
		}
		if heavyHeart
		{
			with instance_create(x+8,y,WepPickup)
			{
				scrWeapons()
				wep=other.wep[1];
				scrAddNewWeaponDrop(wep);
				name = wep_name[wep]
				ammo = other.ammoGet
				curse = other.curse;
				type = wep_type[wep]
				sprite_index = wep_sprt[wep]
			}	
		}
	}
	else
		instance_create(x,y,AmmoPickup);
}

if !oneweponly
	snd_play(sndBigWeaponChest);
else
	snd_play(sndAmmoChest);
instance_destroy()


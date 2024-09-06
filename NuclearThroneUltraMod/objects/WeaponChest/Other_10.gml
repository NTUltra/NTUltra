/// @description Open chest
if !instance_exists(GenCont) && instance_exists(Player)
{
	if curse 
		snd_play(sndCursedChest);
	scrChestOpenMindReload(Player);
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
	if !oneweponly
	{
		repeat(1+mediumchest){
			with instance_create(x,y,WepPickup)
			{
				scrWeapons()
				wep = other.wep[0];
				name = wep_name[wep]
				ammo = other.ammoGet
				type = wep_type[wep]
				curse = other.curse
				sprite_index = wep_sprt[wep]
			}
			if heavyHeart
				with instance_create(x,y,WepPickup)
				{
					scrWeapons()
					wep = other.wep[1];
					name = wep_name[wep]
					ammo = other.ammoGet
					type = wep_type[wep]
					curse = other.curse
					sprite_index = wep_sprt[wep]
				}
		}
	snd_play(sndWeaponChest)
	}
	else
	{
		repeat(1+mediumchest){
			instance_create(x,y,AmmoPickup);
		}
		snd_play(sndAmmoChest);
	}
	instance_destroy()
}
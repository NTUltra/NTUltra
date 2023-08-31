/// @description Open chest
if !instance_exists(GenCont)
{
	if curse 
		snd_play(sndCursedChest);
	with Player {
		nochest = 0;
		scrChestOpenMindReload(Player);
	}
	if !oneweponly
	{
		repeat(1+mediumchest){
			with instance_create(x,y,WepPickup)
			{
				scrWeapons()
				wep = other.wep;
				name = wep_name[wep]
				ammo = 50
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
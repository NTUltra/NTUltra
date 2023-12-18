if !instance_exists(GenCont)
{
	scrChestOpenMindReload(other);
	scrRaddrop(30);
	with instance_create(x,y,WepPickup)
	{
		scrWeapons()
		wep = other.weps[0];
		name = wep_name[wep]
		ammo = 50
		type = wep_type[wep]
		curse = 0
		sprite_index = wep_sprt[wep]
		hspeed = 1;
	}
	with instance_create(x,y,WepPickup)
	{
		scrWeapons()
		wep = other.weps[1];
		name = wep_name[wep]
		ammo = 50
		type = wep_type[wep]
		curse = 0
		sprite_index = wep_sprt[wep]
		hspeed = -1;
	}
	snd_play(sndWeaponChest)
	instance_destroy()
}
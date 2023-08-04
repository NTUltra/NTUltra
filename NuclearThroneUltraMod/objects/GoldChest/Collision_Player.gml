if !instance_exists(GenCont)
{
	scrChestOpenMindReload(other);

with instance_create(x,y,WepPickup)
{
	scrWeapons()
	wep = other.wep;
	name = wep_name[other.wep]
	ammo = 50
	type = wep_type[other.wep]
	curse = 0
	sprite_index = wep_sprt[other.wep]
}
if aditionalwep != 0
{
	with instance_create(x,y,WepPickup)
	{
		scrWeapons()
		wep = other.aditionalwep;
		name = wep_name[other.aditionalwep]
		ammo = 50
		type = wep_type[other.aditionalwep]
		curse = 0
		sprite_index = wep_sprt[other.aditionalwep]
	}
}

snd_play(sndWeaponChest)
instance_destroy()
}


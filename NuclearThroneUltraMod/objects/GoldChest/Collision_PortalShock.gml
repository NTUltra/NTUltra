with instance_create(x,y,WepPickup)
{
	scrWeapons()
	wep=other.wep[0];
	name = wep_name[other.wep]
	type = wep_type[other.wep]
	curse = 0
	ammo = other.ammoGet
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
if heavyHeart
{
	with instance_create(x+4,y,WepPickup)
	{
		scrWeapons()
		wep = other.wep[1];
		name = wep_name[other.wep]
		ammo = other.ammoGet
		type = wep_type[other.wep]
		curse = 0
		sprite_index = wep_sprt[other.wep]
	}	
}
if instance_exists(Player)
{
	scrChestOpenMindReload(Player);	
}
snd_play(sndWeaponChest)
instance_destroy()


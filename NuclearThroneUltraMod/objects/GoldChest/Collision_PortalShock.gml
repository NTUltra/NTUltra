with instance_create(x,y,WepPickup)
{
	scrWeapons()
	wep=other.wep;
	name = wep_name[other.wep]
	type = wep_type[other.wep]
	curse = 0
	ammo = 50
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
if instance_exists(Player)
{
	scrChestOpenMindReload(Player);	
}
snd_play(sndWeaponChest)
instance_destroy()


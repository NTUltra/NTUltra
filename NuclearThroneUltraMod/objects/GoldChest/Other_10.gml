/// @description OPEN CHEST
with instance_create(x,y,WepPickup)
{
	scrWeapons()
	wep = other.wep[0];
	scrAddNewWeaponDrop(wep);
	name = wep_name[wep]
	ammo = other.ammoGet
	type = wep_type[wep]
	curse = 0
	sprite_index = wep_sprt[wep]
}
if aditionalwep != 0
{
	with instance_create(x,y,WepPickup)
	{
		scrWeapons()
		wep = other.aditionalwep;
		scrAddNewWeaponDrop(wep);
		name = wep_name[wep]
		ammo = other.ammoGet
		type = wep_type[wep]
		curse = 0
		sprite_index = wep_sprt[wep]
	}
}
if heavyHeart
{
	with instance_create(x+4,y,WepPickup)
	{
		scrWeapons()
		wep = other.wep[1];
		scrAddNewWeaponDrop(wep);
		name = wep_name[wep]
		ammo = other.ammoGet
		type = wep_type[wep]
		curse = 0
		sprite_index = wep_sprt[wep]
	}	
}

snd_play(sndWeaponChest);
instance_destroy();
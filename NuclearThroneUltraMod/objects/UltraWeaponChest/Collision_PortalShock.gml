with instance_create(x+2,y,WepPickup)
{
	scrWeapons()
	wep = other.weps[0];
	name = wep_name[wep]
	ammo = other.ammoGet
	type = wep_type[wep]
	curse = 0
	sprite_index = wep_sprt[wep]
	hspeed = 1;
}
with instance_create(x-2,y,WepPickup)
{
	scrWeapons()
	wep = other.weps[1];
	name = wep_name[wep]
	ammo = other.ammoGet
	type = wep_type[wep]
	curse = 0
	sprite_index = wep_sprt[wep]
	hspeed = -1;
}
if heavyHeart
{
	with instance_create(x,y,WepPickup)
	{
		scrWeapons()
		wep = other.weps[1];
		name = wep_name[wep]
		ammo = other.ammoGet
		type = wep_type[wep]
		curse = 0
		sprite_index = wep_sprt[wep]
		hspeed = -1;
	}
}
scrRaddrop(30);
snd_play(sndWeaponChest)
instance_destroy()


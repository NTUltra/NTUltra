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

snd_play(sndWeaponChest)
instance_destroy()


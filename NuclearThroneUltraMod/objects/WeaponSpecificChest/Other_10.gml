/// @description opening Chest
repeat(1+mediumchest) {
	with instance_create(x,y,WepPickup)
	{
		scrWeapons()
		wep = other.wep[0];
		name = wep_name[other.wep]
		ammo = other.ammoGet;
		type = wep_type[other.wep]
		curse = 0
		sprite_index = wep_sprt[other.wep]
	}
	if heavyHeart
	{
		with instance_create(x,y,WepPickup)
		{
			scrWeapons()
			wep = other.wep[1];
			name = wep_name[other.wep]
			ammo = other.ammoGet;
			type = wep_type[other.wep]
			curse = 0
			sprite_index = wep_sprt[other.wep]
		}
	}
}
snd_play(sndWeaponChest);
instance_destroy()
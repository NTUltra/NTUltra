if !instance_exists(Player){exit;}
Player.nochest = 0

repeat(1+Player.ultra_got[25]){//ROIDS ULTRA A DOUBLE WEPS
	if !oneweponly
		with instance_create(x-8,y,WepPickup)
		{
		scrWeapons()
		wep=other.wep;
		name = wep_name[wep]
		ammo = 50
		curse = other.curse;
		type = wep_type[wep]
		sprite_index = wep_sprt[wep]
		}
	else
		instance_create(x,y,AmmoPickup);
}

if !oneweponly
	snd_play(sndBigWeaponChest);
else
	snd_play(sndAmmoChest);
instance_destroy()


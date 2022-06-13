if !instance_exists(Player){exit;}

repeat(1+Player.ultra_got[25]){//ROIDS ULTRA A DOUBLE WEPS
	if !oneweponly
		with instance_create(x-8,y,WepPickup)
		{
			scrWeapons()
			wep=other.wep;
			name = wep_name[wep]
			ammo = 50
			curse = 0
			type = wep_type[wep]
			curse = other.curse;
			sprite_index = wep_sprt[wep]
		}
	else
		instance_create(x,y,AmmoPickup);
}

if curse = 1
{
repeat(10)
instance_create(x+random(16)-8,y+random(16)-8,Curse)
}
if !oneweponly
	snd_play(sndWeaponChest);
else
	snd_play(sndAmmoChest);
instance_destroy()


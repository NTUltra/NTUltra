Player.nochest = 0
SetSeedWeapon();
var al = array_length(weps)
for (var i = 0; i < al; i++)
{
	with instance_create(x+random(32)-16,y+random(32)-16,WepPickup)
	{
		scrWeapons()
		wep = other.weps[i];
		name = wep_name[wep]
		scrAddNewWeaponDrop(wep);
		ammo = 50
		curse = 0
		type = wep_type[wep]
		sprite_index = wep_sprt[wep]
	}
}
SetSeed();

snd_play(sndBigWeaponChest)
instance_destroy()


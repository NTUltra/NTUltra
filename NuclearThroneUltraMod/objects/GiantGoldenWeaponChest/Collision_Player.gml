if !instance_exists(GenCont)
{

	Player.nochest = 0
	var al = array_length(weps)
	for (var i = 0; i < al; i++)
	{
		with instance_create(x+random(32)-16,y+random(32)-16,WepPickup)
		{
			scrWeapons()
			wep = other.weps[i];
			name = wep_name[wep]
			ammo = 50
			curse = 0
			type = wep_type[wep]
			sprite_index = wep_sprt[wep]
		}
	}
	snd_play(sndBigWeaponChest)
	snd_play(Player.snd_chst)
	Sleep(50);
	instance_destroy()
}


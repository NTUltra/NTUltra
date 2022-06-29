/// @description Open the chest
if !instance_exists(GenCont)
{
	var mr = 9999;
	
	if KeyCont.key_pick[Player.p] = 1 && Player.maxhealth > 0
	{
		
		with Player
			mr = floor(GetPlayerMaxRad()*0.25);
		if Player.rad >= mr
		{
			Player.rad -= mr;
			snd_play(sndUltraGrenadeSuck);
			KeyCont.key_pick[Player.p] = 2;
			Player.nochest = 0;
			snd_play(Player.snd_chst)
			if !oneweponly
			{
				var al = array_length(weps);
				var i = 0;
				repeat(al){
					with instance_create(x,y,WepPickup)
					{
						scrWeapons()
						wep=other.weps[i];
						name = wep_name[wep]
						ammo = 50
						type = wep_type[wep]
						curse = 0;
						sprite_index = wep_sprt[wep]
					}
					i++;
				}
				snd_play(sndBigWeaponChest)
			}
			snd_play(sndAmmoChest);
			instance_destroy();
			instance_create(x,y,HPPickup);
		}
		else if !audio_is_playing(sndUltraEmpty)
		{
			snd_play(sndUltraEmpty);
			with instance_create(x,y,PopupText)
			{
				mytext = "NOT ENOUGH RADS"
				theColour=c_red;
			}
		}
	}
}


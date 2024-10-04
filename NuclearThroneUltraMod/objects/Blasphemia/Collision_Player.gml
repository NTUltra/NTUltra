/// @description Get Weapon
if !instance_exists(Player)
	exit;
with Player
	isOnInteractable = true;
if KeyCont.key_pick[other.p] == 1
{
	if (scrMeleeWeapons(Player.wep))
	{
		var ang = random(360);
		repeat(6)
		{
			with instance_create(x,y,Dust) {
				motion_add(ang,3);	
			}
			ang += 60;
		}
		ang += 30;
		repeat(6)
		{
			with instance_create(x,y,Dust) {
				motion_add(ang,5);	
			}
			ang += 60;
		}
		snd_play_2d(sndVenuz);
		sprite_index = sprYVExcaliburPedestalTaken;
		KeyCont.key_pick[Player.p] = 2;
		mask_index = mskPickupThroughWall;
		BackCont.shake += 50;
		Sleep(50);
		with instance_create(x,y,WepPickup)
		{
			scrWeapons()
			wep = 311
			scrAddNewWeaponDrop(wep);
			name = wep_name[wep]
			ammo = 0
			type = wep_type[wep]
			curse = 0
			sprite_index = wep_sprt[wep]
		}
		with other
		{
			wep = 0;
			if ultra_got[29] && altUltra && bwep != 0//ROBOT EXCLUSIVE TASTE
			{
				maxhealth += 4;
			}
			scrSwapWeps();
		}
	}
	else if !audio_is_playing(sndMutant6No)
	{
		BackCont.shake += 5;
		snd_play(sndMutant6No);
		with instance_create(x,y,PopupText)
		{
			mytext = "NOT A MELEE WEAPON!"
			theColour = c_red;
		}
	}
}
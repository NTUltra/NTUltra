/// @description Open the chest
if !instance_exists(GenCont)
{
	var cost = 279//45% on level 10//310;//50% on level 10
	if Player.skill_got[23]//Open mind
		cost -= 62;//248//40%
	if Player.race == 20
		cost -= 62;
	var mr = 620;
	with Player
		mr = GetPlayerMaxRad();
	name = string((cost/mr)*100)+actionName;
	if KeyCont.key_pick[Player.p] = 1 && Player.maxhealth > 0
	{
		KeyCont.key_pick[Player.p] = 2;
		if Player.rad >= cost
		{
			Player.rad -= cost;
			snd_play(sndThunder);
			with instance_create(x,y,UltraLightning)
			{
				image_angle = 180-30
				team = 2
				ammo = 5
				event_perform(ev_alarm,0)
				visible = 0
				with instance_create(x,y,LightningSpawn)
					image_angle = other.image_angle
			}
			with instance_create(x,y,UltraLightning)
			{
				image_angle = 180
				team = 2
				ammo = 7
				event_perform(ev_alarm,0)
				visible = 0
				with instance_create(x,y,LightningSpawn)
					image_angle = other.image_angle
			}
			with instance_create(x,y,UltraLightning)
			{
				image_angle = 180+30
				team = 2
				ammo = 5
				event_perform(ev_alarm,0)
				visible = 0
				with instance_create(x,y,LightningSpawn)
					image_angle = other.image_angle
			}
			with instance_create(x,y,UltraLightning)
			{
				image_angle = -30
				team = 2
				ammo = 5
				event_perform(ev_alarm,0)
				visible = 0
				with instance_create(x,y,LightningSpawn)
					image_angle = other.image_angle
			}
			with instance_create(x,y,UltraLightning)
			{
				image_angle = 0
				team = 2
				ammo = 7
				event_perform(ev_alarm,0)
				visible = 0
				with instance_create(x,y,LightningSpawn)
					image_angle = other.image_angle
			}
			with instance_create(x,y,UltraLightning)
			{
				image_angle = 30
				team = 2
				ammo = 5
				event_perform(ev_alarm,0)
				visible = 0
				with instance_create(x,y,LightningSpawn)
					image_angle = other.image_angle
			}
			snd_play(sndUltraGrenadeSuck);
			Player.nochest = 0;
			snd_play(Player.snd_chst)
			BackCont.shake += 20;
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
			//Give primary ammo
			if other.wep_type[other.wep] = 0 or other.ammo[other.wep_type[other.wep]] = other.typ_amax[other.wep_type[other.wep]]
				type = choose(1,2,3,4,5)
			else
				type = other.wep_type[other.wep]

			other.ammo[type] += other.typ_ammo[type]*3
			if other.ammo[type] > other.typ_amax[type]
				other.ammo[type] = other.typ_amax[type]

			if (UberCont.opt_ammoicon)
			{
				dir = instance_create(x,y,PopupText)
				dir.sprt = sprAmmoIconsPickup
				dir.ii = type-1;
				dir.mytext = "+"+string(other.typ_ammo[type]*2)
				if other.ammo[type] = other.typ_amax[type]
				dir.mytext = "MAX"
			}
			else
			{
				dir = instance_create(x,y,PopupText)
				dir.mytext = "+"+string(other.typ_ammo[type]*2)+" "+string(other.typ_name[type])
				if other.ammo[type] = other.typ_amax[type]
				dir.mytext = "MAX "+string(other.typ_name[type])
			}
			//Give secondary ammo
			if other.wep_type[other.bwep] = 0 or other.ammo[other.wep_type[other.bwep]] = other.typ_amax[other.wep_type[other.bwep]]
				type = choose(1,2,3,4,5)
			else
				type = other.wep_type[other.bwep]

			other.ammo[type] += other.typ_ammo[type]*3
			if other.ammo[type] > other.typ_amax[type]
				other.ammo[type] = other.typ_amax[type]

			if (UberCont.opt_ammoicon)
			{
				dir = instance_create(x,y,PopupText)
				dir.sprt = sprAmmoIconsPickup
				dir.ii = type-1;
				dir.mytext = "+"+string(other.typ_ammo[type]*2)
				if other.ammo[type] = other.typ_amax[type]
				dir.mytext = "MAX"
			}
			else
			{
				dir = instance_create(x,y,PopupText)
				dir.mytext = "+"+string(other.typ_ammo[type]*2)+" "+string(other.typ_name[type])
				if other.ammo[type] = other.typ_amax[type]
				dir.mytext = "MAX "+string(other.typ_name[type])
			}
			//Give tertiary
			if other.ultra_got[31]
			{
				if other.wep_type[other.cwep] = 0 or other.ammo[other.wep_type[other.cwep]] = other.typ_amax[other.wep_type[other.cwep]]
					type = choose(1,2,3,4,5)
				else
					type = other.wep_type[other.cwep]

				other.ammo[type] += other.typ_ammo[type]*3
				if other.ammo[type] > other.typ_amax[type]
					other.ammo[type] = other.typ_amax[type]

				if (UberCont.opt_ammoicon)
				{
					dir = instance_create(x,y,PopupText)
					dir.sprt = sprAmmoIconsPickup
					dir.ii = type-1;
					dir.mytext = "+"+string(other.typ_ammo[type]*2)
					if other.ammo[type] = other.typ_amax[type]
					dir.mytext = "MAX"
				}
				else
				{
					dir = instance_create(x,y,PopupText)
					dir.mytext = "+"+string(other.typ_ammo[type]*2)+" "+string(other.typ_name[type])
					if other.ammo[type] = other.typ_amax[type]
					dir.mytext = "MAX "+string(other.typ_name[type])
				}
			}
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


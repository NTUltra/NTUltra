/// @description Go to Factory
if my_health > 0
{
	if KeyCont.key_pick[other.p] = 1
	{
		spr_idle = sprFactoryEntranceActive;
		spr_hurt = sprFactoryEntranceActiveHurt;
		sprite_index = sprFactoryEntranceActive;
		KeyCont.key_pick[Player.p] = 2;
		mask_index = mskPickupThroughWall;
		with instance_create(x,y,WantBoss)
		{
			event_perform(ev_alarm,0) 
		}
		with Player {
			area = 130;
			subarea = 0;
			//If one exists from previous loop
			with WeaponDeposit {
				with instance_create(other.x,other.y,WepPickup)
				{
					scrWeapons()
					wep = other.wep;
					wepmod1 = other.wepmod1;
					wepmod2 = other.wepmod2;
					wepmod3 = other.wepmod3;
					wepmod4 = other.wepmod4;
					name = wep_name[wep]
					ammo = 0
					type = wep_type[wep]
					curse = 0
					sprite_index = wep_sprt[wep]
				}
				instance_destroy();
			}
			with instance_create(x,y,WeaponDeposit)
			{
				wep = other.wep;
				wepmod1 = other.wepmod1
				wepmod2 = other.wepmod2;
				wepmod3 = other.wepmod3;
				wepmod4 = other.wepmod4;
			}
			if curse {
				snd_play_2d(sndCursedReminder);
				repeat(12)
				{
					with instance_create_depth(other.x,other.y,depth - 1, Curse)
					{
						motion_add(random(360),1 + random(2));	
					}
				}
				area = 132;
			}
			else if scrCheckGold(wep_name[wep])
			{
				snd_play_2d(sndGold);
				repeat(6)
				{
					with instance_create_depth(other.x,other.y,depth - 1, CaveSparkle)
					{
						motion_add(random(360),1 + random(2));	
					}
				}
				area = 133
			} else if scrCheckUltra(wep) {
				snd_play_2d(sndUltraGrenadeSuck);
				repeat(8)
				{
					with instance_create_depth(other.x,other.y,depth - 1, PlutoFX)
					{
						motion_add(random(360),1 + random(2));	
					}
				}
				area = 134
			}
			wep = 0;
			scrSwapWeps();
			snd_play(choose(snd_lowa,snd_lowh));
		}
		with instance_create(x,y,Portal)
		{
			type = 1
			pullstrength = 3;
			alarm[1] = 1;
		}
	}
}
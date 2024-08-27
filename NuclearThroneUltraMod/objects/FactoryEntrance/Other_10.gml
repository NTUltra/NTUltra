/// @description Go to Factory
if my_health > 0 && !used
{
	if KeyCont.key_pick[Player.p] = 1 && !instance_exists(AssassinBoss) && !instance_exists(InvertedAssassinBoss) && !instance_exists(WantBoss)
	{
		used = true;
		spr_idle = sprFactoryEntranceActive;
		spr_hurt = sprFactoryEntranceActiveHurt;
		sprite_index = sprFactoryEntranceActive;
		KeyCont.key_pick[Player.p] = 2;
		mask_index = mskPickupThroughWall;
		with Player {
			/*
			if wep == 370
			{
				wep = 0;
				scrSwapWeps();
				instance_create(x,y,You);
				exit;
			}
			*/
			area = 130;
			subarea = 0;
			//If one exists from previous loop
			with WeaponDeposit {
				with instance_create(other.x,other.y,WepPickup)
				{
					scrWeapons()
					isPermanent = other.isPermanent;
					visitedPortals = 0;
					hasBeenEaten = other.hasBeenEaten;
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
				isPermanent = other.isPermanent;
				visitedPortals = 0;
				hasBeenEaten = other.hasBeenEaten;
				wep = other.wep;
				wepmod1 = other.wepmod1
				wepmod2 = other.wepmod2;
				wepmod3 = other.wepmod3;
				wepmod4 = other.wepmod4;
			}
			if wep == 375
			{
				inverted = true;
				area = 131;
			}
			else if curse {
				snd_play_2d(sndCursedReminder);
				repeat(12)
				{
					with instance_create_depth(other.x,other.y,depth - 1, Curse)
					{
						motion_add(random(360),1 + random(2));	
					}
				}
				inverted = false;
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
				inverted = false;
				area = 133
			} else if scrCheckUltra(wep_name[wep]) {
				snd_play_2d(sndUltraGrenadeSuck);
				inverted = false;
				area = 134
				repeat(8)
				{
					with instance_create_depth(other.x,other.y,depth - 1, PlutoFX)
					{
						motion_add(random(360),1 + random(2));	
					}
				}
			}
			wep = 0;
			if ultra_got[29] && altUltra && bwep != 0//ROBOT EXCLUSIVE TASTE
			{
				maxhealth += 4;
			}
			scrSwapWeps();
			with ChargeWeapons
			{
				instance_destroy();	
			}
			snd_play(choose(snd_lowa,snd_lowh));
			lastarea = area;
			lastsubarea = subarea;
		}
		with instance_create(x,y,Portal)
		{
			type = 1
			pullstrength = 3;
			x = other.x;
			y = other.y;
			scrForcePosition60fps();
			with Player
			{
				lockout = true;
				x = other.x;
				y = other.y;
				scrForcePosition60fps();
			}
			alarm[1] = 1;
		}
		with enemy
		{
			my_health = 0;
			prevhealth = 0;
		}
		with instance_create(x,y,PortalEnviromentReplacer)
		{
			area = Player.area;
			prevArea = 9;
		}
	}
}
else
{
	isInteractableNow = false;
}
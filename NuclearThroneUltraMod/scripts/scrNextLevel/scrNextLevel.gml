/// @description areas regular
function scrNextLevel(skipping = false) {
	if instance_exists(VoidDetour)
	{
		if VoidDetour.goneIn
		{
			area = VoidDetour.lastarea;
			subarea = VoidDetour.lastsubarea;
			inverted = VoidDetour.inverted;
			with VoidDetour
			{
				instance_destroy();	
			}
		}
		else
		{
			VoidDetour.goneIn = true;
			exit;
		}
	}
	if !skipping
	{
		with UberCont
		{
			if !scrIsCrown(44)
				portalEssence += 1 * scrGetPortalEssenceBoost();
		}
		scrAddArea(area);
		scrAddToRoute(area);
		if scrIsCrown(34)
		{
			if skill_got[5]
				rewinds = 2;
			else
				rewinds = 1;
			with TimeRewinder
			{
				other.rewinds = rewinds;
				instance_destroy();
			}
			if rewinds > 0
			{
				if  area != 140 && area != 139
					with PitNavigation
					{
						alarm[0] = 90;
						alarm[1] = 0;
						other.area = 125;
						other.subarea = 1;
					}
				with instance_create(x,y,TimeRewinder) {
					rewinds = other.rewinds;
					my_health = other.my_health;
					maxhealth = other.maxhealth;
					ammo = other.ammo;
					area = other.area;
					lastarea = other.lastarea;
					lastsubarea = other.lastsubarea;
					subarea = other.subarea;
					baseWeaponTier = other.baseWeaponTier;
					gameDifficulty = other.gameDifficulty;
					oasis = other.oasis;
					inverted = other.inverted;
					freeAmmoRound = other.freeAmmoRound;
					fromCribToVault = other.fromCribToVault;
				}
			}
		}
		freeAmmoRound = max(0,freeAmmoRound-1);
		if  area = 104//YV CRIB
		{
			if fromCribToVault
			{
				area = 100;
				fromCribToVault = false;
				exit;
			}
			else
			{
				area = lastarea;
				subarea = lastsubarea;
			}
		}
		if (race == 6 || race == 12) {//Yv's Crib? Yun cuz aswell
			if level >= 10
			{
			    if (visitedCrib==false)
				{
					if area == 100 || area == 128 || area == 129
					{
						if !instance_exists(CrownPed)
						{
							//Next level should be crown
							fromCribToVault = true;
						}
					}
					else
					{
						lastarea = area;
						lastsubarea = subarea;
					}
				    area = 104;
					with PitNavigation
						currentArea = 104;
				    visitedCrib = true;
					/*
					if scrIsCrown(24)
						hard += 1;
					else*/
						baseWeaponTier -= 1;
						gameDifficulty -= 1;
			    }
			}
		}
	}
	var prevHard = baseWeaponTier;
	if !skipping && scrIsGamemode(25)//Survival
	{
		area = 116;
		subarea ++;
		gameDifficulty += 1;
		if subarea < 6
		{
			baseWeaponTier += 1.25;
		}
		else
		{
			baseWeaponTier += 0.75;
		}
		exit;
	}
	//show_message("inverted: "+ string(inverted)+"#area :"+string(area));
	lastsubarea = subarea;
	if instance_exists(PitNavigation)
	{
		scrNextLevelPitRoute();	
	}
	else
	{
		if area == 137
		{
			lastarea = area;
			lastsubarea = subarea;
			if instance_exists(RegalNavigation)
			{
				if subarea < 1
				{
					subarea = 1;
					with UberCont
					{
						if !scrIsCrown(44)
							portalEssence += 4 * scrGetPortalEssenceBoost();
					}
				}
				else
				{
					area = 9;
					subarea = 1;
					lastarea = 9;
					lastsubarea = 1;
					inverted = false;
					baseWeaponTier -= 1;
					gameDifficulty -= 1;
					baseWeaponTier = max(baseWeaponTier,0);
					gameDifficulty = max(gameDifficulty,0);
					with RegalNavigation
					{
						instance_destroy();	
					}
				}
			}
			else if instance_exists(SecretSheepNavigation)
			{
				
				debug("SHEEP NAVIGATION");
				if subarea < 1
				{
					subarea = 1;
				}
				else
				{
					baseWeaponTier -= 1;
					gameDifficulty -= 1;
					baseWeaponTier = max(baseWeaponTier,0);
					gameDifficulty = max(gameDifficulty,0);
					with SecretSheepNavigation
					{
						other.lastarea = lastarea;
						other.inverted = inverted;
						other.lastsubarea = lastsubarea;
						instance_destroy();	
					}
					scrExitCrownVault();
				}
			}
			else
			{
				//WE LOOP HERE!
				looping = true;
				area=1;
				subarea=1;
				lastarea = 1;
				lastsubarea = 1;
				inverted = false;
				baseWeaponTier -= 1;
				gameDifficulty -= 1;
				baseWeaponTier = max(baseWeaponTier,0);
				gameDifficulty = max(gameDifficulty,0);
			}
			scrAddArea(area);
			scrAddToRoute(area);
			scrSaveLastArea(area, subarea);
			exit;
		}
		//TO INVERTED AREAS
		if inverted
		{
			scrNavigateToInvertedArea();
		}
		else if area < 100
		{
			lastarea = area
		}
		else if area == 119 || area == 120
		{
			area = 137;//VOID
		}
		//Out of order normal navigation
		else if area == 126 && subarea > 0//Graveyard
		{
			area = 3;
			subarea = 0;
		}
		else if area = 103 && subarea > 0//YV mansion
		{
			area = 3
			subarea = 2;
		}
		//Jungle
		else if area == 114 && subarea > 1
		{
			// To caves
			if (curse || bcurse || ccurse)
			{
				area = 115;
				subarea = 0;
			}
			else
			{
				area = 4;
				subarea = 0;
			}
		}
		//Factory
		else if ((area == 130 || area == 131 || area == 132 || area == 133 || area == 134) && subarea > 1)
		{
			// To inv palace
			area = 118;
			subarea = 1;
			inverted = false;
		}
		//Ultra scrapyard
		else if area == 136 && subarea > 2
		{
			area = 4;
			subarea = 0;
			lastarea = area;
			lastsubarea = subarea;
		}
		//Pipe World
		else if area == 142 && subarea > 1
		{
			//to Labs
			area = 6;
			subarea = 0;
		}
		//Radiation sludge
		else if area == 144 && subarea > 0
		{
			//to palace
			area = 9;
			subarea = 0;
		}
		//Blood land
		else if area == 146 && subarea > 0
		{
			//to frozen city
			area = 5;
			subarea = 0;
		}
		//OASIS
		else if area == 101 && subarea > 2
		{
			//Oasis to vulcano
			area = 7
			subarea = 0;
			oasis = false;
		}
		//Mushroom
		else if area == 117 && subarea > 0
		{
			//To jungle
			area = 114
			subarea = 0;
		}
		else if area == 102 && subarea > 0//Pizza to oasis boss
		{
			area = 101;
			subarea = 2;
		}
		else if area == 115 && subarea > 0
		{
			area = 4;
			subarea = 1;
		}
		else /*if area = 105 || area = 106 || area = 107 || area = 101 || area = 110 || area = 111 || area = 112 || area = 103 || area = 109 || area = 113 || area == 114 || area = 108 || area == 115 || area == 117 || area == 118
		|| area == 121 || area == 122 || area == 123 || area == 124 || area == 125 || area == 126 || area == 128 || area == 129 || area == 130 || area == 131 || area == 132 || area == 133 || area == 134 || area == 135 || area == 136 || area == 142*/
		{
			//NAVIGATION IN INVERTED AREAS!
			scrNavigationInsideInvertedAreas(skipping);
		}
		//INCREASE SUBAREA!?
		if inverted && area != 100 && area != 135 && area != 104 && area != 137 && area != 128 && area != 129
		{
			inverted = false;
		}
		else if ( area == 1 && oasis )
		{
			area = 101;
			subarea = 1;
			inverted = false;
			oasis = false;
		}
		else if area == 3 && subarea > 2
		{
			//Swap labs and caves
			area = 6
			subarea = 1;
		}
		else if area == 4 && subarea > 1
		{
			area = 9
			subarea = 1;
		}
		else if area == 5 && subarea > 2
		{
			//Frozen cityy to caves
			if (curse || bcurse || ccurse)
			{
				area = 115;
			}
			else
			{
				area = 4;
			}
			subarea = 1;
		}
		else if area == 6 && subarea > 1
		{
			area = 5;
			subarea = 1;
		}
		else if area == 8 && subarea > 2
		{
			//Wonderland 3 to cave
			subarea = 1;
			if (curse || bcurse || ccurse)
			{
				area = 115;
			}
			else
			{
				area = 4;
			}
		}
		else if area == 10 && subarea > 2//Savanna to Jungle
		{
			area = 117;
			subarea = 1;
			if !skipping
				hard += 1;
		}
		else if area == 9 && subarea > 2
		{
			//Palace to throne
			area = 119;
			subarea = 1;
		}
		else if (subarea == 0 || (subarea < 3 and area != 2// and area != 105 and area != 106
		&& !(area = 6 && subarea > 1)//Labs has 2 areas
		&& !(area = 4 && subarea > 1) //Caves has 2 areas
		&& !(area = 114 && subarea > 1) ))//Jungle has 2 areas
		{
			subarea += 1
		}
		else if area < 9//Normal area increase
		{
			area += 1
			subarea = 1
		}    
		if !skipping
		{
			if (area=105 || area=106|| area=107 || area = 108 || area = 109 || area = 110
			|| area = 111 || area = 112 || area == 121 || area == 122 || area == 123
			|| area == 124 || area == 125)//&&subarea<2//inverted
			{
				if area == 112//Inv labs normal labs skips one
				{
					/*
					if scrIsCrown(24)
						hard -= 1;
					else
					*/
						baseWeaponTier += 1;
				}
				else
				{
					/*
					if scrIsCrown(24)
						hard -= 1.5;
					else
					*/
						baseWeaponTier += 1.25;
						gameDifficulty += 1.25;
				}
			}
			else if area == 10 && subarea < 2
			{
				/*
				if scrIsCrown(24)
					hard -= 2;
				else
				*/
					baseWeaponTier += 2;
					gameDifficulty += 2;
			}
			else if (
			//!(area = 7 && subarea == 1) //Vulcano 1
			!(area = 6 && subarea == 2) //Labs 2
			&& !(area == 4 && subarea == 1)//Caves 1
			&& !(area == 9 && subarea == 2)//Palace 2
			&& !(area == 9 && subarea == 3)//Throne 1
			&& !(area == 119)//Throne 2
			&& !(area == 5 && subarea == 1)//Frozen city 1
			)
			{
				if area == 100 || area == 128 || area == 129
				{
					/*
					if scrIsCrown(24)
						hard -= 0.5;
					else
					*/
						baseWeaponTier += 0.25;
						gameDifficulty += 0.25;
				}
				else
				{
					/*
					if scrIsCrown(24)
						hard -= 1;
					else
					*/
						baseWeaponTier += 1;
						gameDifficulty += 1;
				}
			}
			if loops > 0 && baseWeaponTier - prevHard > 0
			{
				baseWeaponTier -= 0.25;
				gameDifficulty -= 0.5;
			}
			if scrIsCrown(10)
			{
				baseWeaponTier += 0.5;
				gameDifficulty += 0.5;
			}
			if scrIsGamemode(34)//HARD
			{
				baseWeaponTier += 0.1;
				gameDifficulty += 0.15;
			}
			baseWeaponTier = max(0,baseWeaponTier);
			gameDifficulty = max(0,gameDifficulty);
		}
	}
	if loops < 1
	{
		if scrIsCrown(10)
			baseWeaponTier = min(18,baseWeaponTier);
		else
			baseWeaponTier = min(12,baseWeaponTier);	
	}
	if !skipping
	{
		scrAddArea(area);
		scrAddToRoute(area);
		scrSaveLastArea(area, subarea);
	}
}

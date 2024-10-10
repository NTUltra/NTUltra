/// @description areas regular
function scrNextLevel(skipping = false) {
	if !skipping
	{
		with UberCont
		{
			portalEssence += 1;
			if voidChallengeGoing[0]
				portalEssence += 1;
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
					hard = other.hard;
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
				    visitedCrib = true;
					/*
					if scrIsCrown(24)
						hard += 1;
					else*/
						hard -= 1;
			    }
			}
		}
	}
	var prevHard = hard;
	if !skipping && scrIsGamemode(25)//Survival
	{
		area = 116;
		subarea ++;
		if subarea < 8
			hard+=1.25;
		else
		{
			hard += 0.75;
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
			if instance_exists(RegalNavigation)
			{
				if subarea < 1
				{
					subarea = 1;
					with UberCont
					{
						portalEssence += 4;
						if voidChallengeGoing[0]
							portalEssence += 4;
					}
				}
				else
				{
					area = 9;
					subarea = 1;
					lastarea = 9;
					lastsubarea = 1;
					inverted = false;
					hard -= 1;
					hard = max(hard,0);
					with RegalNavigation
					{
						instance_destroy();	
					}
				}
			}
			else if instance_exists(SecretSheepNavigation)
			{
				if subarea < 1
				{
					subarea = 1;
				}
				else
				{
					hard -= 1;
					hard = max(hard,0);
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
				hard -= 1;
				hard = max(hard,0);
			}
			exit;
		}
		if area < 100
		{
			lastarea = area
		}
		else if subarea == 1 || area = 105 || area = 106 || area = 107 || area = 101 || area = 110 || area = 111 || area = 112 || area = 103 || area = 109 || area = 113 || area == 114 || area = 108 || area == 115 || area == 117 || area == 118
		|| area == 121 || area == 122 || area == 123 || area == 124 || area == 125 || area == 126 || area == 128 || area == 129 || area == 130 || area == 131 || area == 132 || area == 133 || area == 134 || area == 135 || area == 136
		{
			//Inverted savanna
			if area = 121//bring to inverted mushroom
		    {
				//TODO
		        if inverted && area == 121 &&subarea<3
		        {
		        //inverted big vulture
		        area = 121
				lastarea = 121;
		        subarea=3;
		        inverted=true;
		        exit;
		        }
		        else
		        {
		        area = 124
				lastarea = 124;
		        subarea = 1;
				inverted=true
				/*
				if scrIsCrown(24)
					hard -= 1;
				else
				*/
				if !skipping
					hard += 1;
		        exit;
		        }
		    }
			if area == 124//Inv mushroom
			{
				//Jungle 2
				area = 114
				lastarea = 114;
				subarea = 1;
				inverted = false;
				exit;
			}
			if area == 127//Inv Graveyard
			{
				//Inv scrapyard
				area = 106
				lastarea = 106;
				subarea = 2;
				inverted = true;
				exit;
			}
			if area == 125//Inv Mansion
			{
				//To Labs
				area = 6
				lastarea = 6;
				subarea = 1;
				inverted = false;
				exit;
			}
			//Inverted Oasis
			if area = 122
		    {
				//TODO
		        if inverted && area == 122 &&subarea < 3
		        {
		        //inverted big Fish
		        area = 122
		        subarea=3;
				lastarea = 122;
		        inverted = false;
		        exit;
		        }
		        else
		        {
		        area = 7
		        subarea = 2
				lastarea = 7;
				inverted = false
		        exit;
		        }
		    }
			//Inverted Jungle
			if area = 123
		    {
				//TODO
		        if inverted && area == 123 &&subarea<2
		        {
			        //inverted big bush box
			        area = 123
			        subarea=2;
			        inverted = false;
			        exit;
		        }
		        else
		        {
					//To big bad bat
			        area = 4
					lastarea = 4;
			        subarea = 1
					inverted = false;
			        exit;
		        }
		    }
			if area == 118
			{
				if inverted && subarea<3
		        {
			        //inverted chesire
			        area = 118
			        subarea = 3;
					lastarea = 118;
			        exit;
		        }
		        else//inv palace to throne 2
		        {
					area=120;
			        subarea=0;
					exit;
					/*
					//LOOP
			        area=1;
			        subarea=1;
					inverted = false;
					looping=true;
			        exit;*/
		        }
			}
		    if area = 113 && subarea > 1//banditland
		    {
		        area = 8//chesire cat
				lastarea = 8;
		        subarea=3;
				inverted = false;
		        exit;
		    }
			//Jungle
			if area == 114 && subarea > 1
			{
				// To caves
				if (curse || bcurse || ccurse)
				{
					area = 115;
					subarea = 1;
					inverted = false;
				}
				else
				{
					area = 4;
					lastarea = 4;
					subarea = 1;
					inverted = false;
				}
				exit;
			}
			//Courtyard
			if (area == 128 || area == 129) && subarea > 1
			{
				// Back to vault
				area = 100;
				exit;
			}
			//Graveyard
			if area == 126 && subarea > 0 && !inverted
			{
				// To scrapyard
				area = 3;
				lastarea = 3;
				subarea = 1;
				inverted = false;
				exit;
			}
			//Factory
			if ((area == 130 || area == 131 || area == 132 || area == 133 || area == 134) && subarea > 0 && (!inverted || area == 131))
			{
				// To inv palace
				area = 118;
				lastarea = 118;
				subarea = 2;
				inverted = true;
				exit;
			}
			//Ultra scrapyard
			if area == 136 && subarea > 2
			{
				// To Inv mushroom
				area = 124;
				lastarea = 124;
				subarea = 0;
				inverted = true;
				exit;
			}
			if area == 117 && subarea > 0 && !inverted//Mushroom
			{
				//To jungle
				area = 114
				subarea = 0;
			}
		    if area = 103 && subarea > 0 && !inverted//YV mansion
		    {
		        area = 3
		        subarea = 2;
		    }
			if area == 102//Pizza to oasis boss
			{
				area = 101;
				subarea = 2;
				inverted = false;
			}
		    if area = 105//bring to scrapyard inv desert or pizza
		    {
				//TODO
		        if inverted && area = 105 &&subarea<3
		        {
					if ( oasis )
					{
						area=101;
						lastarea = 101;
						subarea=1;
						inverted = false;
					}
					else
					{
					    //inverted big bandit
					    area = 105
					    subarea=3;
					    inverted = false;
					}
		        exit;
		        }
		        else
		        {
		        area = 3
		        subarea = 1
				inverted = false;
		        exit;
		        }
		    }
    
		    if area = 106//inverted scrapyard
		    {
				//TODO
		        if inverted && subarea<3
		        {
		        //inverted big dog
		        area = 106
		        subarea = 3;
		        inverted = false;
		        exit;
		        }
		        else//inv scrap to vulcano
		        {
		        area=7;
		        subarea=1;
				lastarea = 7;
				inverted = false;
		        exit;
		        }
    
		    }
    
		    if area = 107//inv frozen citybring to lill cunter
		    {
				//TODO
		        if inverted && subarea<3
		        {
		        //inverted lil hunter
		        area = 107
		        subarea = 3;
		        inverted = false;
		        exit;
		        }
		        else//Inv frozen city to wonderland
		        {
		        area=8;
				lastarea = 8;
				lastsubarea = 2;
		        subarea=2;
				inverted = false;
		        exit;
		        }
    
		    }
    
		    if area = 108//inv vulcano bring to dragon
		    {
				//TODO
		        if inverted && subarea<3
		        {
		        //inverted purple dragon
		        area = 108
		        subarea = 3;
		        inverted = false;
		        exit;
		        }
		        else//Inverted vulcano bring to frozen city
		        {
		        area = 5;
		        subarea = 2;
				lastarea = 5;
				inverted = false;
		        exit;
		        }
    
		    }
    
		    if area = 109//inv wonderland
		    {
				//TODO
		        if inverted && subarea<3
		        {
		        area = 109
		        subarea = 3;
		        inverted = false;
		        exit;
		        }
		        else//go to crystal caves
		        {
			       if (curse || bcurse || ccurse)
					{
						area = 115;
						subarea = 1;
						inverted = false;
					}
					else
					{
						area = 4;
						lastarea = 4;
						subarea = 1;
						inverted = false;
					}
		        }
        
		    }
    
		    if area = 110//inv sewers bring from sewers to mansion?
		    {
			    area=103;
			    subarea=1;
			    lastarea=3;
			    inverted = false;
		    exit;
		    }
    
		    if area = 111//inv crystal cavesbring from caves to lil hunter
		    {
				if inverted && subarea<2
				{
					area = 111;
					subarea = 2;
					inverted = false;
				}
				else//Skip one palace
				{
					area = 9;
					lastarea = 9;
					subarea = 2;
					inverted = false;
				}
		    exit;
		    }
    
		    if area = 112//inv labs
		    {
				if inverted && subarea<2
		        {
        
			        area = 112
			        subarea = 2;
			        inverted = false;
			        exit;
		        }
		        else//Inv labs to wonderlands 1
		        {
					area=8
					lastarea = 8;
					subarea=1;
					inverted = false;
					exit;
		        }
    
		    }

		    if area=101 && subarea=3
		    {
				//Oasis to vulcano
			    area=7
			    subarea=1
			    oasis=false
				inverted = false;
		    exit;
		    }
			//Cursed caves to caves 2
			if area == 115
			{
				area = 4;
				subarea = 2;
				inverted = false;
				exit;
			}
			/*
			if area == 135//HQ I guess its impossible really
			{
				if lastarea != 135
					area = lastarea;
				else
					area = 1;
				subarea = 1;
			}*/
		}
		else if area == 119 || area == 120
		{
			//inverted = false;
			/*
			if area == 120
			{
				UberCont.extraVan = -1;
				with instance_create(x,y,Explainer)
					name = "ONE LESS VAN THIS LOOP";
			}
			else
				UberCont.extraVan = 0;
			*/
			area = 137;
		}
		if ( subarea < 3 and area != 2 and area != 105 and area != 106
		&& !(area = 6 && subarea > 1)//Labs has 2 areas
		&& !(area = 4 && subarea > 1) //Caves has 2 areas
		&& !(area = 114 && subarea > 1) )//Jungle has 2 areas
			subarea += 1
		else if area < 100// && area=2 && area=4
		{
			if area < 9
			{
			    if inverted == false
			    {
					if area == 3
					{
						//Swap labs and caves
						area = 6
						subarea = 1;
					}
					else if area == 4 && subarea == 2
					{
						area = 9
						subarea = 1;
					}
					else if area == 5 && (curse || bcurse || ccurse)
					{
						area = 115;
						subarea = 1;
					}
					else if area == 5
					{
						if (curse || bcurse || ccurse)
						{
							area = 115;
							subarea = 1;
						}
						else
						{
							area = 4;
							subarea = 1;
						}
					}
					else if area == 6 && subarea == 2
					{
						area = 5;
						subarea = 1;
					}
					else if area == 8 && subarea == 3
					{
						//Wonderland 3 to cave
						if (curse || bcurse || ccurse)
						{
							area = 115;
							subarea = 1;
						}
						else
						{
							area = 4;
							subarea = 1;
						}
					}
					else
					{
					    area += 1
					    subarea = 1
					}
			    }
			}
			else if area == 10//Savanna to Jungle
			{
				area = 117;
				subarea = 1;
				/*
				if scrIsCrown(24)
					hard -= 1;
				else
				*/
				if !skipping
					hard += 1;
			}
			else if area == 9
			{
				area = 119;	
			}
		}    
		//TO INVERTED AREAS
		if ( area=1 && inverted )//inv desert
		{area=105
		lastarea=105;
		}

		if ( area=1 && oasis )
		{area=101;
		lastarea = 101;
		subarea=1;
		inverted = false;}

		if ( area=3 && inverted )//inv scrap
		{area=106;
		lastarea=106;
		}//in case of crownvault

		if ( area=4 && inverted )//inv crystal caves
		{area=111;
		subarea=1;
		lastarea=111;}//in case of crownvault

		if ( area=5 && inverted )//inv frozen city
		{area=107;
		lastarea=107;
		}//in case of crownvault

		if ( area=6 && inverted )//inv labs
		{area=112;
		subarea=1;
		lastarea=112;}//in case of crownvault

		if ( area=7 && inverted )//inv vulcano
		{area=108;
		lastarea=108;}//in case of crownvault

		if ( area=8 && inverted )//inv wonderland
		{area=109;
		lastarea = 109
		}//in case of crownvault
	
		if ( area == 9 && inverted )//inv Palace
		{area=118;
		lastarea = 118
		}//in case of crownvault

		if ( area == 2 && inverted )//inv sewers
		{area=110;
		subarea=1;
		lastarea=110;}
	
		if ( area == 10 && inverted )//inv Savanna
		{area=121;
		lastarea=121;
		}
		if ( area == 117 && inverted )//inv Mushroom
		{area=124;
		lastarea=124;
		subarea = 0;
		}
		if ( area == 126 && inverted )//inv Graveyard
		{area=127;
		lastarea=127;
		subarea = 1;
		}
		if ( inverted && (area == 130 || area == 132 || area == 133 || area == 134) )//to inv factory
		{
			area=131;
			lastarea=131;
			subarea = 1;
		}
		if ( area == 114 && inverted )//inv Mushroom
		{
			area=123;
			lastarea=123;
			subarea = 1;
		}
		if ( area == 103 && inverted ) //Iv mansion
		{
			area = 125;
			lastarea = 125;
			subarea = 0;
		}
		if ( area==101 && inverted )//inv Oasis
		{area=122;
		lastarea=122;
		}
		if !skipping
		{
			if (area=105 || area=106|| area=107 || area = 108 || area = 109 || area = 110 || area = 111 || area = 112 || area == 121 || area == 122 || area == 123 || area == 124 || area == 125)&&subarea<2//inverted
			{
				if area == 112//Inv labs normal labs skips one
				{
					/*
					if scrIsCrown(24)
						hard -= 1;
					else
					*/
						hard += 1;
				}
				else
				{
					/*
					if scrIsCrown(24)
						hard -= 1.5;
					else
					*/
						hard += 1.25;
				}
			}
			else if area == 10 && subarea < 2
			{
				/*
				if scrIsCrown(24)
					hard -= 2;
				else
				*/
					hard += 2;
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
						hard += 0.25;
				}
				else
				{
					/*
					if scrIsCrown(24)
						hard -= 1;
					else
					*/
						hard += 1;
				}
			}
			if loops > 0 && hard - prevHard > 0
			{
				hard -= 0.25;
			}
			if scrIsCrown(10)
				hard += 0.5;
			if scrIsGamemode(34)//HARD
				hard += 0.1;
			hard = max(0,hard);
		}
	}
	if loops < 1
	{
		if scrIsCrown(10)
			hard = min(18,hard);
		else
			hard = min(12,hard);	
	}
	if !skipping
	{
		scrAddArea(area);
		scrAddToRoute(area);
	}
}

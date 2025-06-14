///scrNavigationInsideInvertedAreas();
// /@description
///@param
function scrNavigationInsideInvertedAreas(skipping){
	lastarea = area;
	lastsubarea = subarea;
	//Inverted savanna
	if area = 121
	{
		if subarea > 2
		{
			//bring to mushroom
			area = 117
			lastarea = area;
			subarea = 0;
			lastsubarea = subarea;
			//if !skipping
			//	hard += 1;
		}
	}
	else if area == 124//Inv mushroom
	{
		//Jungle 2
		area = 114
		subarea = 0;
	}
	else if area == 127//Inv Graveyard
	{
		//scrapyard
		area = 3
		subarea = 0;
	}
	else if area == 125//Inv Mansion
	{
		//To scrap 3
		area = 3
		subarea = 2;
	}
	//Inverted Oasis
	else if area = 122 && subarea > 2
	{
		area = 7
		subarea = 0
	}
	//Inverted Jungle
	else if area = 123 && subarea > 2
	{
		//To caves 1
		area = 4
		subarea = 0
	}
	else if area == 118 && subarea > 2//Inverted palace to inverted throne 2
	{
		area = 120;
		subarea = 0;
	}
	else if area = 113 && subarea > 1//banditland
	{
		area = 8//chesire cat
		subarea = 2;
	}
	
	//Courtyard
	else if (area == 128 || area == 129) && subarea > 1
	{
		// Back to vault
		area = 100;
	}
	else if area == 131
	{
		area = 118;
		subarea = 1;
	}
	//Inverted pipeworld
	else if area == 143
	{
		//to Labs
		area = 6;
		subarea = 1;
	}
	else if area == 102//Pizza to oasis boss
	{
		area = 101;
		subarea = 2;
		inverted = false;
	}
	else if area = 105//bring to scrapyard inv desert or pizza
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
			scrAddArea(area);
			scrAddToRoute(area);
			exit;
		}
		else
		{
			area = 2
			subarea = 1
			inverted = false;
			scrAddArea(area);
			scrAddToRoute(area);
			exit;
		}
	}
    
	else if area = 106//inverted scrapyard
	{
		//TODO
		if inverted && subarea<3
		{
		//inverted big dog
		area = 106
		subarea = 3;
		inverted = false;
		scrAddArea(area);
		scrAddToRoute(area);
		exit;
		}
		else//inv scrap to labs
		{
		area=6;
		subarea=1;
		lastarea = 6;
		inverted = false;
		scrAddArea(area);
		scrAddToRoute(area);
		exit;
		}
    
	}
    
	else if area = 107//inv frozen citybring to lill cunter
	{
		//TODO
		if inverted && subarea<3
		{
		//inverted lil hunter
		area = 107
		subarea = 3;
		inverted = false;
		scrAddArea(area);
		scrAddToRoute(area);
		exit;
		}
		else//Inv frozen city to Caves
		{
		area=4;
		lastarea = 4;
		lastsubarea = 1;
		subarea=1;
		inverted = false;
		scrAddArea(area);
		scrAddToRoute(area);
		exit;
		}
    
	}
    
	else if area = 108//inv vulcano bring to dragon
	{
		//TODO
		/* inverted && subarea<3
		{
			//inverted purple dragon
			area = 108
			subarea = 3;
			inverted = false;
			scrAddArea(area);
			scrAddToRoute(area);
			exit;
		}
		else */if subarea > 2//Inverted vulcano bring to wonderland
		{
			area = 8;
			subarea = 1;
			lastarea = 8;
			inverted = false;
			scrAddArea(area);
			scrAddToRoute(area);
			exit;
		}
    
	}
    
	else if area = 109//inv wonderland
	{
		//TODO
		if inverted && subarea<3
		{
			area = 109
			lastarea = 109;
			subarea = 3;
			inverted = false;
			scrAddArea(area);
			scrAddToRoute(area);
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
    
	else if area = 110//inv sewers bring from sewers to mansion?
	{
		area=3;
		subarea=1;
		lastarea=3;
		inverted = false;
		scrAddArea(area);
		scrAddToRoute(area);
	exit;
	}
    
	else if area = 111//inv crystal cavesbring from caves to lil hunter
	{
		if inverted && subarea<2
		{
			area = 111;
			lastarea = 111;
			subarea = 2;
			inverted = false;
		}
		else//inv caves to palace
		{
			area = 9;
			lastarea = 9;
			subarea = 1;
			inverted = false;
		}
	}
    
	else if area = 112//inv labs
	{
		if inverted && subarea<2
		{
        
			area = 112
			subarea = 2;
		}
		else//Inv labs to frozen cityy
		{
			area=5
			lastarea = 5;
			subarea=1;
		}
    
	}

	else if area=101 && subarea == 3 && !inverted
	{
		//Oasis to vulcano
		area = 7
		subarea = 1
		oasis = false
	}
	//Cursed caves to caves 2
	else if area == 115
	{
		area = 4;
		subarea = 2;
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
	if area != 100 && area != 135
	{
		lastarea = area;
		lastsubarea = subarea;
	}
}
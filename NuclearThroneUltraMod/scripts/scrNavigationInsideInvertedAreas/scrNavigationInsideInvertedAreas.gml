///scrNavigationInsideInvertedAreas();
// /@description
///@param
function scrNavigationInsideInvertedAreas(skipping){
	//Keep in mind this code rruns before the subarea increases
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
	else if area = 123 && subarea > 1
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
		subarea = 0;
	}
	//Inverted radiation sludge
	else if area == 145
	{
		//to Palace
		area = 9;
		subarea = 0;
	}
	//Inverted Blood
	else if area == 147
	{
		//to frozen city
		area = 5;
		subarea = 0;
	}
	//Inverted desert
	else if area = 105
	{
		if ( oasis )
		{
			//Inverted oasis
			area = 122;
			lastarea = 122;
			subarea = 0;
			inverted = true;
		}
		else if subarea > 2
		{
			area = 2
			subarea = 0
		}
	}
	//inverted scrapyard
	else if area = 106 && subarea > 2
	{
		area = 6;
		subarea = 0;
	}
    //Inverted Frozen city
	else if area = 107 && subarea > 2
	{
		area = 4;
		subarea = 0;
	}
    //Inverted Volcano
	else if area = 108 && subarea > 2
	{
		area = 8;
		subarea =0;
	}
    //Inv wonderland
	else if area = 109 && subarea > 2
	{
		//to crystal caves 1
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
    //Inverted Sewers
	else if area = 110
	{
		//To scrap
		area = 3;
		subarea = 0;
	}
    //Inverted Crystal caves
	else if area = 111 && subarea > 1
	{
		area = 9;
		subarea = 0;
	}
    //inv labs
	else if area = 112 && subarea > 1
	{
		area = 5
		subarea = 0;
	}
}
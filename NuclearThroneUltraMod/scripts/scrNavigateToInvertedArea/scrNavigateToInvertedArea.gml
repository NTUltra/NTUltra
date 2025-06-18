///scrNavigateToInvertedArea();
// /@description
///@param
function scrNavigateToInvertedArea(){
	//Keep in mind this code rruns before the subarea increases
	//And subarea increment will also be controlled by this script when you're switching to an inverted area
	if ( area == 1)//inv desert
	{
		area = 105
		subarea += 1;
		if subarea > 3
		{
			area = 	110;
			subarea = 1;
		}
	}
	else if ( area == 3)//inv scrap
	{
		area = 106;
		subarea += 1;
		if subarea > 3
		{
			area = 112;
			subarea = 1;
		}
	}//in case of crownvault
	else if ( area == 4)//inv crystal caves
	{
		area = 111;
		subarea += 1;
		if subarea > 2
		{
			area = 118;
			subarea = 1;
		}
	}//in case of crownvault
	else if ( area == 5)//inv frozen city
	{
		area = 107;
		subarea += 1;
		if subarea > 3
		{
			area = 111;
			subarea = 1;
		}
	}//in case of crownvault
	else if ( area == 6)//inv labs
	{
		area = 112;
		subarea += 1;
		if subarea > 2
		{
			area = 107;
			subarea = 1;
		}
	}//in case of crownvault
	else if ( area == 7)//inv vulcano
	{
		area = 108;
		subarea += 1;
		if subarea > 3
		{
			area = 109;
			subarea = 1;
		}
	}//in case of crownvault
	else if ( area == 8)//inv wonderland
	{
		area = 109;
		subarea += 1;
		if subarea > 3
		{
			area = 118;
			subarea = 1;
		}
	}//in case of crownvault
	else if ( area == 9)//inv Palace
	{
		subarea += 1;
		area = 118;
	}
	else if ( area == 10)//inv Savanna
	{
		subarea += 1;
		area = 121;
		if subarea > 3
		{
			area = 124;
			subarea = 1;
		}
	}
	else if ( area == 2)//inv sewers
	{
		area = 110;
		subarea = 1;
	}
	else if ( area == 117)//inv Mushroom
	{
		area = 124;
		subarea = 1;
	}
	else if ( area == 126)//inv Graveyard
	{
		area = 127;
		subarea = 1;
	}
	else if ( area == 142)//inv pipeworld
	{
		area = 143;
		subarea = 1;
	}
	else if (area == 130 || area == 132 || area == 133 || area == 134) //to inv factory
	{
		area = 131;
		subarea = 1;
	}
	else if ( area == 114)//inv Jungle
	{
		subarea += 1;
		area = 123;
		if subarea > 2
		{
			area = 111;
			subarea = 1;
			if (curse || bcurse || ccurse)
			{
				area = 115;
			}
		}
	}
	else if ( area == 103) //Iv mansion
	{
		area = 125;
		subarea = 1;
	}
	else if ( area == 101)//inv Oasis
	{
		area = 122;
		subarea += 1;
		if subarea > 3
		{
			area = 108;
			subarea = 1;
		}
	}
	if area != 100 && area != 135 && area != 104 && area != 137 && area != 128 && area != 129
	{
		lastarea = area;
		lastsubarea = subarea;
	}
}
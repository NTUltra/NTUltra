///scrNavigateToInvertedArea();
// /@description
///@param
function scrNavigateToInvertedArea(){
	inverted = false;
	if ( area == 1)//inv desert
	{
		area=105
		lastarea=105;
		if subarea > 2
		{
			area = 	110;
			lastarea = 110;
			subarea = 1;
		}
	}
	else if ( area == 3)//inv scrap
	{
		area=106;
		lastarea=106;
		if subarea > 2
		{
			area = 112;
			lastarea = 112;
			subarea = 1;
		}
	}//in case of crownvault
	else if ( area == 4)//inv crystal caves
	{
		area=111;
		lastarea=111;
		if subarea > 1
		{
			area = 118;
			lastarea = 118;
			subarea = 1;
		}
	}//in case of crownvault
	else if ( area == 5)//inv frozen city
	{
		area=107;
		lastarea=107;
		if subarea > 2
		{
			area = 111;
			lastarea = 111;
			subarea = 1;
		}
	}//in case of crownvault
	else if ( area == 6)//inv labs
	{
		area=112;
		lastarea=112;
		if subarea > 1
		{
			area = 107;
			lastarea = 107;
			subarea = 1;
		}
	}//in case of crownvault
	else if ( area == 7)//inv vulcano
	{
		area=108;
		lastarea=108;
		if subarea > 2
		{
			area = 109;
			lastarea = 109;
			subarea = 1;
		}
	}//in case of crownvault
	else if ( area == 8)//inv wonderland
	{
		area=109;
		lastarea = 109
		if subarea > 2
		{
			area = 118;
			lastarea = 118;
			subarea = 1;
		}
	}//in case of crownvault
	else if ( area == 9)//inv Palace
	{
		area=118;
		lastarea = 118
		exit;
		/*
		if subarea > 2
		{
			area = 120;
			lastarea = 120;
			subarea = 1;
		}*/
	}//in case of crownvault
	else if ( area == 2)//inv sewers
	{
		area=110;
		subarea=1;
		lastarea=110;
	}
	else if ( area == 10)//inv Savanna
	{
		area=121;
		lastarea=121;
		if subarea > 2
		{
			area = 124;
			lastarea = 124;
			subarea = 1;
		}
	}
	else if ( area == 117)//inv Mushroom
	{
		area=124;
		lastarea=124;
		subarea = 0;
	}
	else if ( area == 126)//inv Graveyard
	{
		area=127;
		lastarea=127;
		subarea = 1;
	}
	else if (area == 130 || area == 132 || area == 133 || area == 134) //to inv factory
	{
		area=131;
		lastarea=131;
		subarea = 1;
	}
	else if ( area == 114)//inv Jungle
	{
		area=123;
		lastarea=123;
		if subarea > 1
		{
			area = 111;
			lastarea = 111;
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
		lastarea = 125;
		subarea = 0;
	}
	else if ( area==101)//inv Oasis
	{
		area=122;
		lastarea=122;
		if subarea > 2
		{
			area = 108;
			lastarea = 108;
			subarea = 1;
		}
	}
}
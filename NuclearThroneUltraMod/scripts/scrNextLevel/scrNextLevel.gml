/// @description areas regular
function scrNextLevel() {
	if UberCont.opt_gamemode == 25//Survival
	{
		area = 116;
		subarea ++;
		hard+=1.25;
		exit;
	}

	if area = 104//YV CRIB
	{
		area = lastarea;
		if looping
		{
			debug("LOOPING",lastarea);
			room_restart();
			exit;
		}
		subarea = lastsubarea;
		//if subarea==1&&area!=9//LAST AREA
		//	area+=1;
	}
	//show_message("inverted: "+ string(inverted)+"#area :"+string(area));
	lastsubarea = subarea;
	if area < 100
	{
		lastarea = area
	}
	else if subarea = 1 || area = 105 || area = 106 || area = 107 || area = 101 || area = 110 || area = 111 || area = 112 || area = 103 || area = 109 || area = 113 || area == 114 || area = 108 || area == 115 || area == 117 || area == 118
	{
		if area == 118
		{
			if inverted && subarea<3
	        {
		        //inverted big dog
		        area = 118
		        subarea = 3;
		        inverted=false;
		        exit;
	        }
	        else//inv palace to loop desert
	        {
				//LOOP
		        area=1;
		        subarea=1;
				inverted=false
				looping=true;
		        exit;
	        }
		}
		
	    if area = 113// && subarea > 1//banditland
	    {
	        area = 8//chesire cat
	        subarea=3;
			inverted=false;
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
				inverted=false;
			}
			else
			{
				area = 4;
				subarea = 1;
				inverted=false;
			}
			exit;
		}
		if area == 117 && subarea > 0//Mushroom
		{
			//To jungle
			area = 114
			subarea = 0;
			inverted=false;
		}
	    if area = 103 && subarea > 0//YV mansion
	    {
	        area = 3
	        subarea = 2;
			inverted=false;
	    }
		if area == 102//Pizza to oasis boss
		{
			area = 101;
			subarea = 2;
			inverted=false;
		}
	    if area = 105//bring to scrapyard inv desert or pizza
	    {
			//TODO
	        if inverted && area = 105 &&subarea<3
	        {
	        //inverted big bandit
	        area = 105
	        subarea=3;
	        inverted=false;
	        exit;
	        }
	        else
	        {
	        area = 3
	        subarea = 1
			inverted=false
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
	        inverted=false;
	        exit;
	        }
	        else//inv scrap to vulcano
	        {
	        area=7;
	        subarea=1;
			inverted=false
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
	        inverted=false;
	        exit;
	        }
	        else//Inv frozen city to wonderland
	        {
	        area=8;
	        subarea=2;
			inverted=false
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
	        inverted=false;
	        exit;
	        }
	        else//Inverted vulcano bring to banditland
	        {
	        area=113;
	        subarea=1;
			inverted=false
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
	        inverted=true;
	        exit;
	        }
	        else//Skip one palace
	        {
	        area=9;
	        subarea=1;
			inverted=false
	        }
        
	    }
    
	    if area = 110//inv sewers bring from sewers to mansion?
	    {
		    area=103;
		    subarea=1;
		    lastarea=3;
		    inverted=false;
	    exit;
	    }
    
	    if area = 111//inv crystal cavesbring from caves to lil hunter
	    {
			if inverted && subarea<2
			{
				area = 111;
				subarea = 2;
				inverted=false;
			}
			else//Skip one palace
			{
				area=9
				subarea=2;
				inverted=false;
			}
	    exit;
	    }
    
	    if area = 112//inv labs
	    {
			if inverted && subarea<2
	        {
        
		        area = 112
		        subarea = 2;
		        inverted=false;
		        exit;
	        }
	        else//Inv labs to wonderlands 1
	        {
				area=8
				subarea=1;
				inverted=false
	        }
    
	    }

	    if area=101 && subarea=3
	    {
			//Oasis to vulcano
		    area=7;
		    subarea=1;
		    oasis=false
			inverted=false;
	    exit;
	    }
	    hard+=1;
		
		//Cursed caves to caves 2
		if area == 115
		{
			area = 4;
			subarea = 2;
			inverted=false;
			exit;
		}

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
		    if inverted=false
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
					area = 4
					subarea = 1;
				}
				else if area == 6 && subarea == 2
				{
					area = 5;
					subarea = 1;
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
		}
		else//WE LOOP HERE!
		{
			looping=true;
		}
	}    
	//TO INVERTED AREAS
	if ( area=1 && inverted )//inv desert
	{area=105
	lastarea=105;
	}

	if ( area=1 && oasis )
	{area=101;
	subarea=1;}

	if ( area=3 && inverted )//inv scrap
	{area=106;
	lastarea=106;
	}//in case of crownvault

	if ( area=4 && inverted )//inv crystal caves
	{area=111;
	subarea=1;
	lastarea=5;}//in case of crownvault

	if ( area=5 && inverted )//inv frozen city
	{area=107;
	lastarea=107;
	}//in case of crownvault

	if ( area=6 && inverted )//inv labs
	{area=112;
	subarea=1;
	lastarea=7;}//in case of crownvault

	if ( area=7 && inverted )//inv vulcano
	{area=108;
	subarea=1;
	lastarea=7;}//in case of crownvault

	if ( area=8 && inverted )//inv wonderland
	{area=109;
	lastarea = 109
	lastarea=8;}//in case of crownvault
	
	if ( area=9 && inverted )//inv wonderland
	{area=118;
	lastarea = 118
	lastarea=9;}//in case of crownvault

	if ( area=2 && inverted )//inv sewers
	{area=110;
	subarea=1;
	lastarea=3;}


	if race=6||race=12{//Yv's Crib? Yun cuz aswell
	if level>=10
	{
	    if (visitedCrib==false)
	    {
	    area=104;
		
		debug("lastsubarea ",lastsubarea);
	    visitedCrib=true;
	    hard -= 1;
		debug("GO CRIB");
	    }
	}
	}

	if (area=105 || area=106|| area=107 || area = 108 || area = 109 | area = 110 || area = 111 || area = 112)&&subarea<2//inverted curse
	{
		hard+=1.5
	}
	else if area == 10 && subarea < 2
		hard += 2
	else if (!(area = 7 && subarea == 1) && !(area = 5 && subarea == 1) && !(area = 4 && subarea == 1))//Labs 1 and Vulcano 1 don't increase hard
		hard += 1




}

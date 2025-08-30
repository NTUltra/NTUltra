
function scrMakeFloor(limiter) {
	with UberCont
	{
		var a = loops;
		if instance_exists(Player)
		{
			a = Player.loops;
			a += Player.area;
			a += Player.subarea;
		}
		if (useSeed)
		{
			random_set_seed(seed+a+limiter)
		}
	}
	limiter++;
	area = 0
	subarea=1;
	var fc = 0;
	with Floor{
		if canCount
			fc ++;
	}
	if instance_exists(Player)
	{
	area = Player.area
	subarea=Player.subarea;}
	if area = 1|| area = 105 || area = 113{ if random(3) < 1
	{instance_create(x,y,Floor)
	instance_create(x+32,y,Floor)
	instance_create(x+32,y+32,Floor)
	instance_create(x,y+32,Floor)
	}else instance_create(x,y,Floor)}

	if area=101 || area == 122{ if random(2) < 1.4
	{instance_create(x,y,Floor)
	instance_create(x+32,y,Floor)
	instance_create(x+32,y+32,Floor)
	instance_create(x,y+32,Floor)
	}else instance_create(x,y,Floor)} 

	if area = 0 or area = 2 or area = 102 or area = 6 or area = 110 or area = 112
	{
		if !place_meeting(x,y,Floor)
			instance_create(x,y,Floor)
	}
	if area == 119 || area == 120
	{
		instance_create(x,y,Floor)
		instance_create(x,y+32,Floor)
		instance_create(x+32,y,Floor)
		instance_create(x+32,y+32,Floor)
		instance_create(x,y-32,Floor)
		instance_create(x-32,y,Floor)
		instance_create(x-32,y-32,Floor)
	}
	if area = 3 || area = 106 || area == 136 { if random(9) < 1 || ( subarea=3&&random(5)<1 )//random 8 scrapyard
	{
		instance_create(x,y,Floor)
		instance_create(x+32,y,Floor)
		instance_create(x+32,y+32,Floor)
		instance_create(x,y+32,Floor)
		instance_create(x,y-32,Floor)
		instance_create(x-32,y,Floor)
		instance_create(x+32,y-32,Floor)
		instance_create(x-32,y-32,Floor)
		instance_create(x-32,y+32,Floor)
	}else instance_create(x,y,Floor)} 

	if area = 4|| area = 111 || area = 115//caves?
	instance_create(x,y,Floor)
	
	if area = 144 || area = 145//RADIATION SLUDGE LAND
	{
		if !place_meeting(x,y,Floor)
			instance_create(x,y,Floor)
	}
	if area = 146 || area = 147//BLOOD LAND
	{
		instance_create(x,y,Floor)
		instance_create(x+32,y,Floor)
		instance_create(x+32,y+32,Floor)
		instance_create(x,y+32,Floor)
		instance_create(x,y-32,Floor)
		instance_create(x-32,y,Floor)
		instance_create(x+32,y-32,Floor)
		instance_create(x-32,y-32,Floor)
		instance_create(x-32,y+32,Floor)
	}

	if area = 5 || area = 107 
	{ if ( (subarea != 3 &&random(10) < 1) || (subarea == 3 && random(20)<1 ) )//frozzen city 11
	{
		if random(2) < 1
		{
			instance_create(x+32,y,Floor)
			instance_create(x+32,y+32,Floor)
			instance_create(x,y+32,Floor)
			instance_create(x,y-32,Floor)
			instance_create(x-32,y,Floor)
			instance_create(x+32,y-32,Floor)
			instance_create(x-32,y-32,Floor)
			instance_create(x-32,y+32,Floor)
		}
		else
		{
			instance_create(x+64,y-64,Floor)
			instance_create(x+64,y-32,Floor)
			instance_create(x+64,y,Floor)
			instance_create(x+64,y+32,Floor)
			instance_create(x+64,y+64,Floor)

			instance_create(x-64,y-64,Floor)
			instance_create(x-64,y-32,Floor)
			instance_create(x-64,y,Floor)
			instance_create(x-64,y+32,Floor)
			instance_create(x-64,y+64,Floor)

			instance_create(x,y-64,Floor)
			instance_create(x-32,y-64,Floor)
			instance_create(x+32,y-64,Floor)

			instance_create(x,y+64,Floor)
			instance_create(x-32,y+64,Floor)
			instance_create(x+32,y+64,Floor)
		}
	}else {instance_create(x,y,Floor)}
	} 


	if area == 6 && subarea == 2 && !instance_exists(BigMachine) && !instance_exists(BigDisc) && !instance_exists(InvertedBigDisc)//LABS BOSS
	{
	//if(fc>=goal){

	var xx;
	var yy;
	    for(xx=0;xx<8;xx+=1){
	    instance_create(x+32*xx,y,Floor);//BOSS BIG MACHINE/////////////////////////////<------------
        
	        for(yy=-1;yy<10;yy+=1){
        
				if xx==4 && yy==0
				{
					if scrIsGamemode(44) {
						with instance_create(x+32*xx,y+32*yy,BigDisc)//the boss
						{
							maxSpeed -= 2;
							acc -= 0.5;
						}
						with instance_create(x+32*xx,y+32*yy,PermanentDisc)
						{
							speed = 2;
							direction = -10;
							fire = true;
						}
						with instance_create(x+32*xx,y+32*yy,PermanentDisc)
						{
							speed = 2;
							direction = 170;
							fire = true;
						}
					}
					else {
						instance_create(x+32*xx,y+32*yy,BigMachine);//the boss
						with instance_nearest(x,y,WeaponChest)
						{
							x = BigMachine.x;
							y = BigMachine.y - 64;
							friction = 2;
							speed = 0;
						}
					}
				}
        
		        if xx==0 && yy==0
		        {
		        instance_create(x+32*xx+16,y+32*yy+16,BigMachineLaser);
		        }
        
        
		        if xx==7 && yy==9
		        {
		        with instance_create(x+32*xx+16,y+32*yy-16,BigMachineLaser)
		        image_xscale=-1;
		        }
        
		        if instance_exists(Player)
		        {
		        if Player.loops>0
		        {//LOOP
		        if xx==7 && yy==0
		        {
		        with instance_create(x+32*xx+16,y+32*yy-16,BigMachineLaser)
		        image_xscale=-1;
		        }
		        }
		        if Player.loops>1
		        {//LOOP 2
		        if xx==0 && yy==9
		        {
		        instance_create(x+32*xx+16,y+32*yy-16,BigMachineLaser)
        
		        }
		        }
        
		        if Player.loops>3
		        {//LOOP 3
		        if xx==0 && yy==4
		        {
		        instance_create(x+32*xx+16,y+32*yy-16,BigMachineLaser)
        
		        }
		        if xx==7 && yy==4
		        {
		        with instance_create(x+32*xx+16,y+32*yy-16,BigMachineLaser)
		        image_xscale=-1;
		        }
		        }
		        }
        
        
        
		        with instance_create(x+32*xx,y+32*yy,Floor)
		        {styleb=1;
		        event_inherited();
		        }
        
        
		        if xx==0 && yy==-1
		        instance_create(x+32*xx,y+32*yy+16,LabTrap);
        
		        if xx==7 && yy==-1
		        instance_create(x+32*xx+16,y+32*yy+16,LabTrap)
        
        
	        }
	    }
    
	    //}
	}

	if area = 112 && subarea = 2 && !instance_exists(InvertedBigMachine)//INVERTED LABS BOSS
	{
	//if(fc>=goal){

	var xx;
	var yy;
	    for(xx=0;xx<6;xx+=1){
	    instance_create(x+32*xx,y,Floor);//BOSS INVERTED! BIG MACHINE/////////////////////////////<------------
        
	        for(yy=-1;yy<8;yy+=1){
        
        
        
	        if xx==3 && yy==0
	        instance_create(x+32*xx,y+32*yy,InvertedBigMachine);//the boss
        
        
	        if xx==0 && yy==0
	        {
	        instance_create(x+32*xx+16,y+32*yy+16,InvertedBigMachineLaser);
	        }
        
	        if xx==3 && yy==7
	        {
	        with instance_create(x+32*xx+16,y+32*yy+16,InvertedBigMachineLaser)
	        {horizontal=true
	        image_angle=90;}
	        }
        
        
	        if xx==7 && yy==7
	        {
	        with instance_create(x+32*xx+16,y+32*yy-16,InvertedBigMachineLaser)
	        image_xscale=-1;
	        }
 
	        if instance_exists(Player)
	        {
	        if Player.loops>0
	        {//LOOP
	        if xx==5 && yy==0
	        {
	        with instance_create(x+32*xx+16,y+32*yy-16,InvertedBigMachineLaser)
	        image_xscale=-1;
	        }
	        }
	        if Player.loops>1
	        {//LOOP 2
	        if xx==0 && yy==7
	        {
	        instance_create(x+32*xx+16,y+32*yy-16,InvertedBigMachineLaser)
        
	        }
	        }
        
	        if Player.loops>3
	        {//LOOP 3
	        if xx==0 && yy==3
	        {
	        instance_create(x+32*xx+16,y+32*yy-16,InvertedBigMachineLaser)
        
	        }
	        if xx==5 && yy==4
	        {
	        with instance_create(x+32*xx+16,y+32*yy-16,InvertedBigMachineLaser)
	        image_xscale=-1;
	        }
	        }
	        }
        
        
        
	        with instance_create(x+32*xx,y+32*yy,Floor)
	        {styleb=1;
	        event_inherited();
	        }
        
        
	        if xx==0 && yy==-1
	        instance_create(x+32*xx,y+32*yy+16,LabTrap);
        
	        if xx==5 && yy==7
	        with instance_create(x+32*xx+16,y+32*yy+16,LabTrap)
	        loop=true;
        
	        }
	    }
    
	    //}
	}





	if area = 7||area=104||area=108 { //VULCANO
		instance_create(x,y,Floor)
		instance_create(x + lengthdir_x(32,direction),y + lengthdir_y(32,direction),Floor)
		if(random(11)<1)
		{
		instance_create(x,y,Floor)
		instance_create(x,y-lengthdir_y(32,direction),Floor)
		instance_create(x+lengthdir_x(32,direction),y-lengthdir_y(32,direction),Floor)
		instance_create(x+lengthdir_x(64,direction),y-lengthdir_y(32,direction),Floor)
		instance_create(x-lengthdir_x(32,direction),y-lengthdir_y(32,direction),Floor)
		instance_create(x-lengthdir_x(64,direction),y-lengthdir_y(32,direction),Floor)
		instance_create(x-lengthdir_x(64,direction),y-lengthdir_y(64,direction),Floor)
		instance_create(x+lengthdir_x(64,direction),y-lengthdir_y(64,direction),Floor)
		instance_create(x+lengthdir_x(64,direction),y-lengthdir_y(96,direction),Floor)
		instance_create(x-lengthdir_x(64,direction),y-lengthdir_y(96,direction),Floor)
		instance_create(x-lengthdir_x(64,direction),y-lengthdir_y(128,direction),Floor)
		instance_create(x+lengthdir_x(64,direction),y-lengthdir_y(128,direction),Floor)
		}
		else if(random(12)<1){
		instance_create(x,y+32,Floor)
		instance_create(x+32,y,Floor)
		instance_create(x-32,y,Floor)
		instance_create(x,y-32,Floor)
		instance_create(x+32,y+32,Floor)
		instance_create(x-32,y-32,Floor)
		instance_create(x+32,y-32,Floor)
		instance_create(x-32,y+32,Floor)
		}
		else if(random(11))<1{
		if random(2)<1{
		instance_create(x,y+32,Floor)
		instance_create(x,y-32,Floor)}
		else{
		instance_create(x+32,y,Floor)
		instance_create(x-32,y,Floor)
		}
		}
		else if random(2)<1{
		instance_create(x,y+32,Floor);
		instance_create(x,y-32,Floor);
		}
	

	}

	if area = 8 || area = 109{ if random(11) < 1//WONDERLAND
	{instance_create(x,y,Floor)
	instance_create(x+32,y,Floor)
	instance_create(x+32,y+32,Floor)
	instance_create(x,y+32,Floor)
	instance_create(x+64,y,Floor)
	instance_create(x+64,y+64,Floor)
	instance_create(x+64,y+32,Floor)
	instance_create(x,y+64,Floor)

	}
	else if random(10) < 1
	{instance_create(x,y,Floor)
	instance_create(x-32,y,Floor)
	instance_create(x-32,y-32,Floor)
	instance_create(x,y-32,Floor)
	instance_create(x-64,y,Floor)
	instance_create(x-64,y-64,Floor)
	instance_create(x-64,y-32,Floor)
	instance_create(x,y-64,Floor)
	}
	else if random(9)<1{
	instance_create(x,y,Floor)
	instance_create(x+32,y,Floor)
	instance_create(x-32,y,Floor)
	instance_create(x-64,y,Floor)
	instance_create(x+64,y,Floor)
	instance_create(x-96,y,Floor)
	instance_create(x+96,y,Floor)
	instance_create(x-96,y+32,Floor)
	instance_create(x+96,y+32,Floor)
	instance_create(x-96,y+64,Floor)
	instance_create(x+96,y+64,Floor)
	}
	else if random(8)<1 {
	instance_create(x,y,Floor)
	instance_create(x,y+32,Floor)
	instance_create(x+32,y,Floor)
	instance_create(x+32,y+32,Floor)
	}
	else
	instance_create(x,y,Floor);
	}
	//Palace
	if area == 9 || area == 118{
		if subarea < 3
		{
			if random(9) < 1
			{
				instance_create(x,y,Floor)
				instance_create(x+32,y,Floor)
				instance_create(x-32,y,Floor)
				instance_create(x,y+32,Floor)
				instance_create(x,y-32,Floor)
				instance_create(x+32,y+32,Floor)
				instance_create(x+32,y-32,Floor)
				instance_create(x-32,y-32,Floor)
				instance_create(x-32,y+32,Floor)
				x += lengthdir_x(32,direction)
				y += lengthdir_y(32,direction)
			}
			else {
				instance_create(x,y,Floor)
				instance_create(x,y+32,Floor)
				/*
				if random(2) < 1
				{
					if choose(true,false)
					{
						instance_create(x,y,Floor)
						instance_create(x,y+32,Floor)
					}
					else
					{
						instance_create(x,y,Floor)
						instance_create(x,y-32,Floor)
					}
				}
				else
				{
					if choose(true,false)
					{
						instance_create(x+32,y,Floor)
						instance_create(x,y,Floor)
						instance_create(x,y+32,Floor)
					}
					else
					{
						instance_create(x,y,Floor)
						instance_create(x-32,y,Floor)
						instance_create(x,y+32,Floor)
					}
				}*/
			}
		}
		else
		{
			//Oke lets go guys throne room
			instance_create(x,y,Floor)
			instance_create(x+32,y,Floor)
			instance_create(x-32,y,Floor)
			instance_create(x+64,y,Floor)
			instance_create(x-64,y,Floor)
			instance_create(x+96,y,Floor)
			instance_create(x-96,y,Floor)
			instance_create(x+128,y,Floor)
			instance_create(x-128,y,Floor)
		}
	} 
	
	//Factory
	if area == 130 || area == 131 || area == 132 || area == 133 || area == 134 {
		instance_create(x,y,Floor)
		instance_create(x,y + 32,Floor);
		instance_create(x,y - 32,Floor);
		instance_create(x + 32,y,Floor);
		instance_create(x - 32,y,Floor);
		
		instance_create(x + 32,y + 32,Floor);
		instance_create(x - 32,y + 32,Floor);
		instance_create(x + 32,y - 32,Floor);
		instance_create(x - 32,y - 32,Floor);
	}
	//CLOUD LAND
	if area == 138 || area == 140{
		instance_create(x,y,Floor);
		if random(3) < 1
		{
			instance_create(x+lengthdir_x(32,direction+90),y+lengthdir_y(32,direction+90),Floor)
			instance_create(x+lengthdir_x(32,direction-90),y+lengthdir_y(32,direction-90),Floor)
		}
		/*
		instance_create(x+32,y,Floor)
		instance_create(x-32,y,Floor)
		instance_create(x,y + 32,Floor)
		instance_create(x,y - 32,Floor)
		instance_create(x + 32,y + 32,Floor)
		instance_create(x - 32,y - 32,Floor)
		instance_create(x - 32,y + 32,Floor)
		instance_create(x + 32,y - 32,Floor)*/
	}
	//SEWER PIPE NETWORK
	if area == 142 || area == 143 {
		instance_create(x,y,Floor);
	}
	//THE PIT
	if area == 139 {
		var bigger = choose(false,false,true);
		instance_create(x,y,Floor);
		instance_create(x,y+32,Floor)
		with instance_create(x+30,y,PlayerGhostTeleporter)
		{
			direction = 0;
		}
		instance_create(x+32,y+32,Floor)
		instance_create(x+32,y+64,Floor)
		instance_create(x+64,y+64,Floor)
		instance_create(x+64,y+96,Floor)
		instance_create(x+96,y+96,Floor)
		instance_create(x+96,y+128,Floor)
		instance_create(x+128,y+128,Floor)
		if bigger
		{	
			instance_create(x+96,y+64,Floor)
			instance_create(x+128,y+64,Floor)
		}
		/*
		with instance_create(x+128,y+128,PlayerGhostTeleporter)
		{
			direction = 270;
			image_angle = 90;
		}*/
		instance_create(x+128,y+96,Floor)
		instance_create(x+160,y+96,Floor)
		instance_create(x+160,y+64,Floor)
		instance_create(x+192,y+64,Floor)
		instance_create(x+192,y+32,Floor)
		instance_create(x+224,y+32,Floor)
		instance_create(x+224,y,Floor)
		with instance_create(x+210,y,PlayerGhostTeleporter)
		{
			direction = 180;
		}
		instance_create(x,y-32,Floor)
		instance_create(x+32,y-32,Floor)
		instance_create(x+32,y-64,Floor)
		instance_create(x+64,y-64,Floor)
		instance_create(x+64,y-96,Floor)
		instance_create(x+96,y-96,Floor)
		instance_create(x+96,y-128,Floor)
		instance_create(x+128,y-128,Floor)
		if bigger
		{
			instance_create(x+96,y-64,Floor)
			instance_create(x+128,y-64,Floor)
		}
		/*
		with instance_create(x+128,y-128,PlayerGhostTeleporter)
		{
			direction = 90;
			image_angle = 90;
		}
		*/
		instance_create(x+128,y-96,Floor)
		instance_create(x+160,y-96,Floor)
		instance_create(x+160,y-64,Floor)
		instance_create(x+192,y-64,Floor)
		instance_create(x+192,y-32,Floor)
		instance_create(x+224,y-32,Floor)
		var wantHorizontal = choose(true,false);
		var wantFlipped = choose(1,1,-1);
		var w = 224;
		var h = 256;
		if wantHorizontal
		{
			if !place_meeting(x + w * wantFlipped, y, Floor)
			{
				x += w * wantFlipped;
			}
			else if !place_meeting(x - w * wantFlipped, y,Floor)
			{
				x += -w * wantFlipped;
			}
			else
			{
				wantHorizontal = false;	
			}
		}
		if !wantHorizontal
		{
			if !place_meeting(x, y + h * wantFlipped, Floor)
			{
				y += h * wantFlipped;
			}
			else if !place_meeting(x, y - h * wantFlipped,Floor)
			{
				y += -h * wantFlipped;
			}
			else
			{
				if choose(true,false)
				{
					x += w * choose(1,-1);	
				}
				else
				{
					y += h * choose(1,-1);
				}
			}
		}
	}
	//savanna
	if area = 10 || area == 121{ 
		if random(5) < 2
		{
			instance_create(x,y,Floor)
			instance_create(x+32,y,Floor)
			instance_create(x-32,y,Floor)
		}
		else 
		{
			instance_create(x,y,Floor)
			instance_create(x,y+32,Floor)
		}
	}
	
	//Acid Dream
	if area = 149 || area == 150{ 
		instance_create(x,y,Floor)
	}
	
	//jungle
	if area = 114 || area == 123{
		if random(8) < 1 && instance_number(Floor) % 5 == 0 && instance_number(Floor) < goal * 0.75
		{
			instance_create(x,y,Floor)
			instance_create(x+32,y,Floor)
			instance_create(x-32,y,Floor)
			instance_create(x,y+32,Floor)
			instance_create(x,y-32,Floor)
			instance_create(x+32,y+32,Floor)
			instance_create(x+32,y-32,Floor)
			instance_create(x-32,y-32,Floor)
			instance_create(x-32,y+32,Floor)
		} if random (3) < 1
		{
			instance_create(x,y,Floor)
			instance_create(x,y-32,Floor)
		}
		else 
		{
			instance_create(x,y,Floor)
			instance_create(x,y+32,Floor)
		}
	}
	
	//Mushroom swamp
	if area = 117 || area == 124 {
		if instance_number(Floor) < 2 || (instance_number(Floor) > 42 && random(11) < 1)
		{
			instance_create(x,y,Floor)
			instance_create(x+32,y,Floor)
			instance_create(x-32,y,Floor)
			instance_create(x,y+32,Floor)
			instance_create(x,y-32,Floor)
			instance_create(x+32,y+32,Floor)
			instance_create(x+32,y-32,Floor)
			instance_create(x-32,y-32,Floor)
			instance_create(x-32,y+32,Floor)
		} if (instance_number(Floor) > 30 && random (6) < 1)
		{
			instance_create(x,y,Floor)
			instance_create(x,y-32,Floor)
		} else if (instance_number(Floor) > 30 && random (6) < 1)
		{
			instance_create(x,y,Floor)
			instance_create(x,y+32,Floor)
		}
		else
		{
			instance_create(x,y,Floor);
		}
	}
	
	//Graveyard
	if area = 126 || area == 127{
		var r = random(4)
		if r < 1
		{
			//instance_create(x,y,Floor)
			instance_create(x+64,y,Floor)
			instance_create(x-64,y,Floor)
			instance_create(x,y+64,Floor)
			instance_create(x,y-64,Floor)
			
			instance_create(x+32,y+64,Floor)
			instance_create(x+64,y+32,Floor)
			instance_create(x+64,y+64,Floor)
			
			instance_create(x+32,y-64,Floor)
			instance_create(x+64,y-32,Floor)
			instance_create(x+64,y-64,Floor)
			
			instance_create(x-32,y-64,Floor)
			instance_create(x-64,y-32,Floor)
			instance_create(x-64,y-64,Floor)
			
			instance_create(x-32,y+64,Floor)
			instance_create(x-64,y+32,Floor)
			instance_create(x-64,y+64,Floor)
			
			instance_create(x+32,y,Floor)
			instance_create(x-32,y,Floor)
			instance_create(x,y+32,Floor)
			instance_create(x,y-32,Floor)
			instance_create(x+32,y+32,Floor)
			instance_create(x+32,y-32,Floor)
			instance_create(x-32,y-32,Floor)
			instance_create(x-32,y+32,Floor)
		}
		else if r < 2
		{
			//instance_create(x,y,Floor);
			instance_create(x+32,y,Floor)
			instance_create(x-32,y,Floor)
			instance_create(x,y+32,Floor)
			instance_create(x,y-32,Floor)
			instance_create(x+32,y+32,Floor)
			instance_create(x+32,y-32,Floor)
			instance_create(x-32,y-32,Floor)
			instance_create(x-32,y+32,Floor)
		}
		else
		{
			instance_create(x,y,Floor);
		}
	}
	//HQ
	if area == 135 || area == 148 {
		if subarea == 3
		{
			scrCreateCaptainArea();
		}
		else
		{
			if instance_number(Floor) < 2
			{
				instance_create(x,y,Floor)
				instance_create(x+32,y,Floor)
				instance_create(x-32,y,Floor)
				instance_create(x,y+32,Floor)
				instance_create(x,y-32,Floor)
				instance_create(x+32,y+32,Floor)
				instance_create(x+32,y-32,Floor)
				instance_create(x-32,y-32,Floor)
				instance_create(x-32,y+32,Floor)
			}
			else if random(4) < 1
			{
				instance_create(x+32,y,Floor)
				instance_create(x-32,y,Floor)
				instance_create(x,y+32,Floor)
				instance_create(x,y-32,Floor)
				instance_create(x+32,y+32,Floor)
				instance_create(x+32,y-32,Floor)
				instance_create(x-32,y-32,Floor)
				instance_create(x-32,y+32,Floor)
			}
			else
			{
				instance_create(x,y,Floor)
			}
		}
	}
	
	//Void
	if area == 137 {
		scrCreateVoidArea();
	}
	if scrIsGamemode(8)
	{
		instance_destroy();
		exit;
	}
	if scrIsGamemode(25) && !instance_exists(Vlambeer) && !instance_exists(MenuGen) && area != 0//Survival Arena
	{
		//instance_create(x,y,Floor)
		x = 0;
		y = 0;
		var xx = x;
		var yy = y;
		var circleHeight = 10;
		var circleWidth = 10;
		//Elementor thronebutt generate more cover
		var genExtraCover = false//instance_exists(Player) && Player.race == 24 && Player.skill_got[5];
		for (var iy = 0; iy < circleHeight; iy ++) {
			for (var ix = 0; ix < circleWidth; ix ++) {
				if !(iy == 0 && ix == 0) &&
				!(iy == circleHeight -1 && ix == circleWidth - 1) &&
				!(iy == circleHeight -1 && ix == 0) &&
				!(iy == 0 && ix == circleWidth - 1) &&
				(!genExtraCover || (
				//Extra cover
					!(iy == round(circleHeight*0.3) && ix == round(circleWidth*0.3)) &&
					!(iy == floor(circleHeight*0.7) && ix == round(circleWidth*0.3)) &&
					!(iy == floor(circleHeight*0.7) && ix == floor(circleWidth*0.7)) &&
					!(iy == round(circleHeight*0.3) && ix == floor(circleWidth*0.7)))
				)
				{
					instance_create(x + (32*ix),
					y + (32*iy),Floor);
					if (iy == circleHeight*0.5 && ix == circleWidth*0.5)
					{
						instance_create(x + (32*ix),y + (32*iy),SurvivalArenaStarter);
					}
				}
			}
		}
		instance_destroy();
		return limiter;
	}
	else if area = 100 { if random(8) < 1//CROWN VAULT
	{

	dir = choose(1,2)
	if dir = 1
	{
	instance_create(x+32,y,Floor)
	instance_create(x+64,y,Floor)
	instance_create(x,y,Floor)
	instance_create(x-32,y,Floor)
	instance_create(x-64,y,Floor)
	}
	else
	{
	instance_create(x,y+32,Floor)
	instance_create(x,y+64,Floor)
	instance_create(x,y,Floor)
	instance_create(x,y-32,Floor)
	instance_create(x,y-64,Floor)
	}
	}else instance_create(x,y,Floor)} 

	if area = 103 || area == 125{
	if round(fc/12) = fc/12 and fc != 0
	{
	x += lengthdir_x(32,direction)
	y += lengthdir_y(32,direction)
	instance_create(x+32,y,Floor)
	instance_create(x+32,y+32,Floor)
	instance_create(x,y+32,Floor)
	instance_create(x,y-32,Floor)
	instance_create(x-32,y,Floor)
	instance_create(x+32,y-32,Floor)
	instance_create(x-32,y-32,Floor)
	instance_create(x-32,y+32,Floor)
	} else instance_create(x,y,Floor)}


	//HOW high the chances are for a certain turn (or no turn)
	//if area = 1
	trn = choose(0,0,0,0,0,0,0,0,0,90,-90,90,-90,180)
	if area = 2 or area = 102 or area = 110
	trn = choose(0,0,0,0,0,0,0,0,90,-90,90,-90,180)
	else if area = 3 || area = 106 || area == 136
	trn = choose(0,0,0,0,90,-90)
	else if area = 4 || area = 111 || area = 115
	trn = choose(0,0,0,0,90,-90,180)
	else if area = 144 || area = 145//RADIATION SLUDGE LAND
	{
		if instance_number(Floor) > 10
			trn = choose(0,0,0,0,0,0,90,-90,180);
		else
			trn = 0;
	}
	else if area = 146 || area = 147//BLOOD LAND
	trn = choose(0,0,0,0,0,0,90,-90,180);
	else if area = 5 || area = 107
	trn = choose(0,0,0,0,180,180)//0 0 0 0 0 180
	else if area = 6 || area = 112
	trn = choose(0,0,0,0,0,0,0,0,0,0,0,90,-90,180)
	else if area = 7 || area = 108
	trn= choose(-90,0,0,0,0,0,0,0,180,0,90);
	else if area == 8 || area == 109
	trn = choose(0,0,0,0,0,180,0,0,90,90,-90,90,-90,180)
	else if ((area == 9 || area == 118) && subarea < 3)
	trn = choose(0,0,0,0,0,0,0,0,0,0,90,-90,90,-90)
	else if ((area == 9 || area == 118) && subarea == 3)
	trn = 0;
	else if area == 149 || area == 150
	{
		trn = 0;
		if myFloors > spiral
		{
			trn = 90;
			turnsTaken += 1;
			spiral = myFloors + turnsTaken;
		}
	}
	else if area == 100
	trn = choose(0,0,0,0,0,0,0,0,0,0,90,-90,180,180)
	else if area == 103 || area == 125
	trn = choose(0,0,0,90,-90,180)
	else if area == 114 || area == 123
	trn = choose(0,0,0,0,0,0,0,90,-90,180)
	else if area == 117 || area == 124
	trn = choose(0,0,0,0,0,0,90,-90,180)
	else if area == 119 || area == 120
	trn = choose(0,0,90,-90,90,-90,180)
	else if area == 126 || area == 127
	{
		if ( ((random(10) < 2 && fc > 30) || fc > 70) && !instance_exists(CantTurn))
		|| (instance_number(CantTurn) == 1 && fc > 110)
		{
			trn = 90;
			instance_create(x,y,CantTurn);
		}
		else
		trn = 0;
	} else if area == 130 || area == 131 || area == 132 || area == 133 || area == 134
	{
		trn = 0;	
	}
	else if area == 135 || area == 148
		trn = choose(0,0,0,0,0,0,0,0,0,0,90,-90)
	else if area == 139
	{
		trn = choose(0,0,0,0,0,0,180,90,-90);
	}
	else if area == 138 || area == 140
	{
		trn = 0;
		if myFloors > 6
		{
			trn = choose(0,0,0,0,0,0,0,90,90)
			if abs(trn) == 90
			{
				turnsTaken += sign(trn);
				if turnsTaken > 2 || place_meeting(x + lengthdir_x(32,direction + trn),y + lengthdir_y(32,direction + trn),Floor)
					trn = 0;
				else
				{
					instance_create(x+32,y,Floor)
					instance_create(x+32,y+32,Floor)
					instance_create(x,y+32,Floor)
					instance_create(x,y-32,Floor)
					instance_create(x-32,y,Floor)
					instance_create(x+32,y-32,Floor)
					instance_create(x-32,y-32,Floor)
					instance_create(x-32,y+32,Floor)
				}
			}
		}
	}
	else if area == 142 || area == 143
	{
		var maxTries = 9999;
		trn = 0;
		do {
			maxTries -= 1;
			trn = choose(0,0,0,0,0,0,0,0,0,90,-90)
		}
		until maxTries < 0 || !place_meeting(x+lengthdir_x(32,direction + trn),y+lengthdir_y(32,direction + trn),Floor)
		if trn == 0 && !place_meeting(x,y,Wall)
		{
			if direction == 0 || direction == 180
			{
				//Horizontal
				instance_create(x,y,Wall);
				instance_create(x + 16,y,Wall);
			}
			else if direction == 90 || direction == 270
			{
				//Vertical
				instance_create(x,y,Wall);
				instance_create(x,y + 16,Wall);
			}
		}
		else {
			instance_create(x,y,WallBreak);
		}
	}
	direction += trn
	if ((area=7||area=108) && subarea=3) || area=104
		direction=0;
	else if ((area == 9 || area == 118) && subarea == 3)
		direction = 90;
	
	//else if area == 118 && subarea == 3
	//	direction = 270;

	if abs(trn) = 90 and (area = 6 || area = 112) and random(2) < 1
	{
	instance_create(x+32,y,Floor)
	instance_create(x+32,y+32,Floor)
	instance_create(x,y+32,Floor)
	instance_create(x,y-32,Floor)
	instance_create(x-32,y,Floor)
	instance_create(x+32,y-32,Floor)
	instance_create(x-32,y-32,Floor)
	instance_create(x-32,y+32,Floor)
	if random(3) < 1 && area = 6
	{
	if random(4) < 3
	instance_create(x-16,y-16,Server)
	if random(4) < 3
	instance_create(x-16+64,y-16,Server)
	if random(4) < 3
	instance_create(x-16,y-16+64,Server)
	if random(4) < 3
	instance_create(x-16+64,y-16+64,Server)
	}
	else if area = 112 && random(3) < 1//inverted 
	{
	if random(4) < 3
	instance_create(x-16,y-16,InvertedServer)
	if random(4) < 3
	instance_create(x-16+64,y-16,InvertedServer)
	if random(4) < 3
	instance_create(x-16,y-16+64,InvertedServer)
	if random(4) < 3
	instance_create(x-16+64,y-16+64,InvertedServer)
	}

	}

	//instance_create(x,y,Floor)

	if !instance_exists(WeaponChest) && (trn = 180 or (abs(trn) = 90 and (area = 3 || area = 106 || area == 136 || area == 139 ||(area == 9 && subarea != 3)
	|| (area == 118 && subarea != 3)))) and point_distance(x,y,10016,10016) > 48 and area != 104 and area != 137{
	instance_create(x,y,Floor)
	instance_create(x+16,y+16,WeaponChest)}


	//BRANCHES
	if area = 1 || area = 105 || area = 101 || area == 10 || area == 114 || area == 121 || area == 122 || area == 123 || area == 136
	{
		if random(19+instance_number(FloorMaker)) > 20
		{
		instance_destroy()
		if !instance_exists(WeaponChest) && point_distance(x,y,10016,10016) > 48{
		instance_create(x+16,y+16,AmmoChest)
		instance_create(x,y,Floor)}
		}
		if random(8) < 1
		with instance_create(x,y,FloorMaker) { limiter = scrGenerateFloorMaker(limiter)};
	}
	if area == 138 || area == 140//CLOUD
	{
		if instance_number(FloorMaker) < 2 && instance_number(Floor) < 5 || ((subarea == 2 || instance_exists(PitNavigation)) && !instance_exists(MimicBossPlateau))
		{
			if ((subarea == 2 || instance_exists(PitNavigation)) && !instance_exists(MimicBossPlateau)) {
				instance_create(x+16,y+48,MimicBossPlateau);
				instance_create(x + 32,y + 32,Floor);
				instance_create(x - 32,y + 32,Floor);
				instance_create(x + 32,y - 32,Floor);
				instance_create(x - 32,y - 32,Floor);
				instance_create(x + 32,y + 64,Floor);
				instance_create(x - 32,y + 64,Floor);
			}
			var d = direction;
			repeat(3)
			{
				d += 90;
				with instance_create(x,y,FloorMaker) { 
					firstTry = false;
					if other.area == 140
						goal = 25;
					else
						goal = 17;
					styleb = other.styleb;
					direction = d;
					limiter = scrGenerateFloorMaker(limiter)
				};
			}
		}
	}
	if area == 130 || area == 131 || area == 132 || area == 133 || area == 134
	{
		if random(15+instance_number(FloorMaker)) > 16
		{
			instance_destroy()
			if !instance_exists(WeaponChest) && point_distance(x,y,10016,10016) > 48{
			instance_create(x+16,y+16,AmmoChest)
			instance_create(x,y,Floor)}
		}
		if random(3.5) < 1
		{
			with instance_create(x,y,FloorMaker) { 
				limiter = scrGenerateFloorMaker(limiter)
				while direction == other.direction
				{
					direction = choose(0,90,180,270);
				}
			};
		}
	}
	else if area == 128 || area == 129
	{
		if random(15+instance_number(FloorMaker)) > 16
		{
			instance_destroy()
			if !instance_exists(WeaponChest) && point_distance(x,y,10016,10016) > 48{
			instance_create(x+16,y+16,AmmoChest)
			instance_create(x,y,Floor)}
		}
		if random(8) < 1
		with instance_create(x,y,FloorMaker) { limiter = scrGenerateFloorMaker(limiter)};
	}
	//No branch but chest
	if area == 117 || area == 124
	{
		if random(19+instance_number(FloorMaker)) > 20
		{
		if !instance_exists(WeaponChest) && point_distance(x,y,10016,10016) > 48{
		instance_create(x+16,y+16,AmmoChest)
		instance_create(x,y,Floor)}
		}
	}

	if ((area == 9 || area == 118) && subarea < 3)
	{
	   if random(19+instance_number(FloorMaker)) > 20
	   {
		   // instance_destroy()
		   if !instance_exists(WeaponChest) && point_distance(x,y,10016,10016) > 48{
				if (random(4) <2)
				instance_create(x+16,y+16,WeaponChest)
				else
				instance_create(x+16,y+16,AmmoChest)
		   instance_create(x,y,Floor)}
		}
		if instance_exists(Floor) && fc > 100 && random(9) < 1
			with instance_create(x,y,FloorMaker) { limiter = scrGenerateFloorMaker(limiter)};
	}

	if area == 2 or area == 110
	{
		if random(14+instance_number(FloorMaker)) > 15
		{
		if !instance_exists(WeaponChest) && point_distance(x,y,10016,10016) > 48{
		instance_create(x+16,y+16,AmmoChest)
		instance_create(x,y,Floor)}
		instance_destroy()
		}
		if random(15) < 1
		with instance_create(x,y,FloorMaker) { limiter = scrGenerateFloorMaker(limiter)};
	}

	if (area == 3 || area == 106) && subarea !=3
	{
		if random(39+instance_number(FloorMaker)) > 40
		{
		if !instance_exists(WeaponChest) && point_distance(x,y,10016,10016) > 48
		{
		instance_create(x+16,y+16,AmmoChest)
		instance_create(x,y,Floor)}
		instance_destroy()
		}
		if random(25) < 1
		with instance_create(x,y,FloorMaker) { limiter = scrGenerateFloorMaker(limiter)};
	}
	if area = 4 || area = 111 || area == 115
	{
		if random(9+instance_number(FloorMaker)) > 10
		{
		instance_destroy()
		if !instance_exists(WeaponChest) && point_distance(x,y,10016,10016) > 48{
		instance_create(x+16,y+16,AmmoChest)
		instance_create(x,y,Floor)}
		}
		if random(4) < 1
		with instance_create(x,y,FloorMaker) { limiter = scrGenerateFloorMaker(limiter)};
	}
	//RADIATION SLUDGE LAND
	if area == 144 || area == 145
	{
		if random(9+instance_number(FloorMaker)) > 10
		{
			instance_destroy()
			if !instance_exists(WeaponChest) && point_distance(x,y,10016,10016) > 48{
			instance_create(x+16,y+16,AmmoChest)
			if !place_meeting(x,y,Floor)
				instance_create(x,y,Floor)
			}
		}
		if instance_number(Floor) > 10 && instance_number(FloorMaker) < 2 || random(4) < 1
			with instance_create(x,y,FloorMaker) { limiter = scrGenerateFloorMaker(limiter)};
	}
	//BLOOD LAND
	if area == 146 || area == 147
	{
		if random(9+instance_number(FloorMaker)) > 10
		{
			instance_destroy()
			if !instance_exists(WeaponChest) && point_distance(x,y,10016,10016) > 48{
			instance_create(x+16,y+16,AmmoChest)
			instance_create(x,y,Floor)}
		}
		if instance_number(Floor) > 10 && instance_number(FloorMaker) < 2 || random(4) < 1
			with instance_create(x,y,FloorMaker) { limiter = scrGenerateFloorMaker(limiter)};
	}
	if (area == 135 || area == 148) && instance_number(Floor) > 5 && Player.subarea != 3
	{
		if random(10-instance_number(FloorMaker)) > 7
		{
			//instance_destroy()
			direction -= trn;
			if !instance_exists(WeaponChest) && point_distance(x,y,10016,10016) > 48{
			instance_create(x,y,Floor)
			instance_create(x+16,y+16,AmmoChest)}
			with instance_create(x,y,FloorMaker) {
				firstTry = false;
				direction = other.direction + choose(90,-90);
				styleb = choose(0,0,0,0,0,0,1);
				goal = other.goal;
				limiter = scrGenerateFloorMaker(limiter)
			};
		}
	}
	if area = 5 || area = 107
	{
		if random(14+instance_number(FloorMaker)) > 15
		{
		instance_destroy()
		if !instance_exists(WeaponChest) && point_distance(x,y,10016,10016) > 48{
		instance_create(x,y,Floor)
		instance_create(x+16,y+16,AmmoChest)}
		}
		if random(22) < 1//25
		with instance_create(x,y,FloorMaker) { limiter = scrGenerateFloorMaker(limiter)};
	}
	if area = 6 || area = 112
	{
		if random(21+instance_number(FloorMaker)) > 22
		{
		instance_destroy()
		if !instance_exists(WeaponChest) && point_distance(x,y,10016,10016) > 48
		{
		instance_create(x,y,Floor)
		instance_create(x+16,y+16,AmmoChest)}
		}
		if random(20) < 1
		with instance_create(x,y,FloorMaker) { limiter = scrGenerateFloorMaker(limiter)};
	}

	if area = 7 || area=108//CUSTOM
	{
		if !instance_exists(WeaponChest) && random(14+instance_number(FloorMaker)) > 15
		{
		if point_distance(x,y,10016,10016) > 48{
		instance_create(x+16,y+16,AmmoChest)
		instance_create(x,y,Floor)}
		instance_destroy()
		}
		if subarea != 3 && random(30) < 5
			with instance_create(x,y,FloorMaker) { limiter = scrGenerateFloorMaker(limiter)};
	}

	if area = 8 || area = 109//WONDERLAND
	{

		if random(14) < 1
		with instance_create(x,y,FloorMaker) { limiter = scrGenerateFloorMaker(limiter)};

		if !instance_exists(WeaponChest) && point_distance(x,y,10016,10016) > 48{
		instance_create(x+16,y+16,AmmoChest)
		instance_create(x,y,Floor)}
	}


	if area = 102//pizza sewers
	{
		if random(9+instance_number(FloorMaker)) > 10
		{
		if !instance_exists(WeaponChest) && point_distance(x,y,10016,10016) > 48{
		instance_create(x+16,y+16,AmmoChest)
		instance_create(x,y,Floor)}
		instance_destroy()
		}
		if random(5) < 1
		with instance_create(x,y,FloorMaker) { limiter = scrGenerateFloorMaker(limiter)};
	}

	if area = 103 || area == 125//yv mansion
	{
		if !instance_exists(WeaponChest) && random(31+instance_number(FloorMaker)) > 32
		{
		instance_destroy()
		if point_distance(x,y,10016,10016) > 48{
		instance_create(x,y,Floor)
		instance_create(x+16,y+16,AmmoChest)}
		}
		if random(20) < 1
		with instance_create(x,y,FloorMaker) { limiter = scrGenerateFloorMaker(limiter)};
	}
	
	//Multi Crown
	if area = 128 || area == 129
	{ 
		if random(5) < 2
		{
			instance_create(x,y,Floor)
			instance_create(x+32,y,Floor)
			instance_create(x-32,y,Floor)
		}
		else 
		{
			instance_create(x,y,Floor)
			instance_create(x,y+32,Floor)
		}
	}

	x += lengthdir_x(32,direction);
	y += lengthdir_y(32,direction);
	
	if area == 146 || area == 147//Bloodland double step
	{
		x += lengthdir_x(32,direction);
		y += lengthdir_y(32,direction);
		instance_create(x,y,Floor);
		x += lengthdir_x(32,direction);
		y += lengthdir_y(32,direction);
	}

	return limiter;
}

function scrPopProps() {
	var ar = Player.area;
	if scrIsGamemode(45) && random(3) < 1
	{
		spawnarea = scrGetRandomArea();
	}
	if !place_meeting(x,y,Player) and !place_meeting(x,y,enemy) and !place_meeting(x,y,RadChest) and !place_meeting(x,y,AmmoChest) and !place_meeting(x,y,WeaponChest) and !place_meeting(x,y,MeleeFake) and !place_meeting(x,y,GatorSmoke) and !place_meeting(x,y,prop)
	{


	if scrIsGamemode(16) and !place_meeting(x,y,NOWALLSHEREPLEASE)
	{
	myx = x+choose(0,16)
	myy = y+choose(0,16)
	instance_create(myx,myy,SpikeTrap)
	instance_create(x,y,NOWALLSHEREPLEASE)
	}
	//walls near the player for safer spawn
	if random(5)<1  and !place_meeting(x,y,NOWALLSHEREPLEASE) && !place_meeting(x,y,hitme) && !place_meeting(x,y,chestprop) && !place_meeting(x,y,RadChest) && !place_meeting(x,y,prop)
	&& point_distance(x,y,Player.x,Player.y)<128 and Player.area != 100 and Player.area != 6 and Player.area != 112 and (Player.area !=5 or random(3) < 1) and Player.area != 102 and Player.area != 104 and !(Player.area = 8 && Player.subarea=3)
	and Player.area != 9 and Player.area != 118 and Player.area != 114 and Player.area != 116 and Player.area != 123
	{
		
	myx = x+choose(0,16)
	myy = y+choose(0,16)
	if !place_meeting(myx,myy,hitme) && !place_meeting(myx,myy,chestprop) && !place_meeting(myx,myy,RadChest) && !place_meeting(x,y,NOWALLSHEREPLEASE) && !place_meeting(myx,myy,prop)
	&& Player.area != 130 && Player.area != 131 and Player.area != 9 and Player.area != 118 and Player.area != 137
		instance_create(myx,myy,Wall)
	instance_create(x,y,NOWALLSHEREPLEASE)
	}
	if random(6) < 1 and !place_meeting(x,y,NOWALLSHEREPLEASE) && !place_meeting(x,y,hitme) && !place_meeting(x,y,chestprop) && !place_meeting(x,y,RadChest) && !place_meeting(x,y,hitme) && Player.area != 130 && Player.area != 131
	 && Player.area != 132 && Player.area != 133 && Player.area != 134
	and Player.area != 100 and Player.area != 6 and Player.area != 9 and Player.area != 118 and Player.area != 112  and (Player.area !=5 or random(3) < 1) and Player.area != 102 and Player.area != 104
	and !(Player.area = 8 && Player.subarea=3) and Player.area != 116 and Player.area != 137//lill walls
	{
		myx = x+choose(0,16)
		myy = y+choose(0,16)
		if !place_meeting(myx,myy,hitme) && !place_meeting(myx,myy,chestprop) && !place_meeting(myx,myy,RadChest) && !place_meeting(x,y,NOWALLSHEREPLEASE) && !place_meeting(myx,myy,prop)
			instance_create(myx,myy,Wall)
		
		instance_create(x,y,NOWALLSHEREPLEASE)
		if (point_distance(myx,myy,Player.x,Player.y) > 128 and (spawnarea = 3 || spawnarea == 121) && Player.subarea != 3) && (!instance_exists(Trap) || random(15 + instance_number(Trap)) < 2)
			instance_create(myx,myy,Trap)
	
		if (point_distance(myx,myy,Player.x,Player.y) > 128 and (spawnarea = 2 || spawnarea == 110) && Player.loops > 1) && (!instance_exists(ToxicTrap) || random(15 + instance_number(ToxicTrap)) < 2)
			instance_create(myx,myy,ToxicTrap)


		if (point_distance(myx,myy,Player.x,Player.y) > 128 and spawnarea = 7 &&Player.subarea!=2) && (!instance_exists(VulcanoTrap) || random(16 + instance_number(VulcanoTrap)) < 2)//RANDOM TRAP
			instance_create(myx,myy,VulcanoTrap)
		
		if  (point_distance(myx,myy,Player.x,Player.y) > 128 and spawnarea = 108 &&Player.subarea!=2) && (!instance_exists(FrostTrap) || random(16 + instance_number(FrostTrap)) < 2)//RANDOM TRAP
			instance_create(myx,myy,FrostTrap)

	}
	
	if random(4) < 1 && spawnarea = 114 && !place_meeting(x,y,Wall)//Jungle
		instance_create(x+16,y+16,choose(Bush,Bush,Bush,Bush,Bush,Bush,BigFlower))
	if random(4) < 1 && spawnarea = 123 && !place_meeting(x,y,Wall)// INV Jungle
		instance_create(x+16,y+16,choose(InvertedBush,InvertedBush,InvertedBush,InvertedBush,InvertedBush,InvertedBush,InvertedBigFlower))
	if (spawnarea == 9 && subarea != 3)
	{
		var mask = mask_index;
		mask_index = mskPalacePropChecker;
		if (random(7) < 1 && !place_meeting(x,y,Wall))
		{
			var ran = random(100);
			if (ran > 90)
			{
				instance_create(x,y,choose(Table1,Table2));
			}
			else if (ran > 80)
			{
				instance_create(x,y,FallenChair);
			}
			else if (ran > 70)
			{
				instance_create(x,y,Pillar);
			}
			else if (ran > 60)
			{
				instance_create(x,y,NuclearPillar);
			}
			else if (ran > 45)
			{
				instance_create(x,y,SmallGenerator);
			}
		}
		mask_index = mask;
	}
	else if (spawnarea == 118 && subarea != 3)//Inverted palace
	{
		var mask = mask_index;
		mask_index = mskPalacePropChecker;
		if (random(7) < 1 && !place_meeting(x,y,Wall))
		{
			var ran = random(100);
			if (ran > 85)
			{
				//instance_create(x,y,choose(Table1,Table2));
			}
			else if (ran > 70)
			{
				instance_create(x,y,InvertedNuclearPillar);
			}
			else if (ran > 45)
			{
				instance_create(x,y,InvertedSmallGenerator);
			}
		}
		mask_index = mask;
	}
	else if spawnarea = 101 && random(6) < 1 && !place_meeting(x,y,Wall)
	{
		var ran = random(100);
		if ran>90 && styleb = 0
		instance_create(x+16,y+16,SunkenCar);
		else if ran > 80
		instance_create(x+16,y+16,Anchor);
		else if ran > 70 and point_distance(x+16,y=16,Player.x,Player.y) > 64
		instance_create(x+16,y+16,WaterMine)
		else if ran > 65
		instance_create(x+16,y+16,OasisBarrel)
		else
		instance_create(x+16,y+16,WaterPlant)
	}
	else if spawnarea = 122 && random(6) < 1 && !place_meeting(x,y,Wall)
	{
		var ran = random(100);
		//if ran>90 && styleb = 0
		//instance_create(x+16,y+16,SunkenCar);
		if ran > 90
		instance_create(x+16,y+16,InvertedAnchor);
		else if ran > 80 and point_distance(x+16,y=16,Player.x,Player.y) > 64
		instance_create(x+16,y+16,InvertedWaterMine)
		else if ran > 65
		instance_create(x+16,y+16,InvertedOasisBarrel)
		else
		instance_create(x+16,y+16,InvertedWaterPlant)
	}
	else if random(12) < 1
	{

	if spawnarea = 1 && !place_meeting(x,y,Wall)
	{
	//if random(60) < 1
	//instance_create(x+16,y+16,BigSkull)
	//else
	instance_create(x+16,y+16,Cactus)
	}
	if spawnarea = 2
	{
	if random(3)<1&&instance_exists(Player) && !place_meeting(x,y,Wall)
	{
	if point_distance(x+16,y+16,Player.x,Player.y)>128
	instance_create(x+16,y+16,ToxicBarrel)
	}
	else if !place_meeting(x,y,Wall)
	instance_create(x+16,y+16,Pipe)

	}
	if spawnarea = 0 || spawnarea = 113 || spawnarea == 119 && !place_meeting(x,y,Wall)
	instance_create(x+16,y+16,NightCactus)
	if (spawnarea = 4 || spawnarea == 115) && !place_meeting(x,y,Wall)
	instance_create(x+16,y+16,choose(Crystal,Crystal,Cocoon))
	if spawnarea = 3||spawnarea = 106 && !place_meeting(x,y,Wall)
	instance_create(x+16,y+16,choose(Tires,Car))
	if spawnarea = 5||spawnarea = 107
	{
	if random(35) < 1 && !place_meeting(x,y,Wall)
	instance_create(x+16,y+16,choose(SnowMan,SodaMachine))
	else if random(3) < 1
	{
	repeat(3) 
	instance_create(x+16,y+16,StreetLight)
	}
	else if !place_meeting(x,y,Wall)
	instance_create(x+16,y+16,choose(Hydrant,Car))
	}
	if spawnarea == 6 and random(4) < 1 && !place_meeting(x,y,Wall)
	instance_create(x+16,y+16,choose(Tube,Tube,Tube,Tube,MutantTube))

	if spawnarea == 112 and random(4) < 1 && !place_meeting(x,y,Wall)
	instance_create(x+16,y+16,choose(InvertedTube,InvertedTube,InvertedTube,InvertedTube,InvertedMutantTube))

		if spawnarea == 126 && !place_meeting(x,y,Wall) { //CUSTOM
			instance_create(x+16,y+16,Gravestone);
		}
		if spawnarea == 127 && !place_meeting(x,y,Wall) { //CUSTOM
			instance_create(x+16,y+16,InvertedGravestone);
		}
		if spawnarea == 130 && !place_meeting(x,y,Wall) { //Factory
			if random(3) < 2
				instance_create(x,y,Conveyor);
			else
				instance_create(x+16,y+16,FactoryTerminal);
		}
		else if spawnarea == 131 && !place_meeting(x,y,Wall) { //Inverted Factory
			if random(3) < 2
				instance_create(x,y,InvertedConveyor);
			else
				instance_create(x+16,y+16,InvertedFactoryTerminal);
		}
		else if spawnarea == 132 && !place_meeting(x,y,Wall) { //Cursed Factory
			if random(3) < 2
				instance_create(x,y,CursedConveyor);
			else
				instance_create(x+16,y+16,CursedFactoryTerminal);
		}
		else if spawnarea == 133 && !place_meeting(x,y,Wall) { //Golden Factory
			if random(3) < 2
				instance_create(x,y,GoldenConveyor);
			else
				instance_create(x+16,y+16,GoldenFactoryTerminal);
		}
		else if spawnarea == 134 && !place_meeting(x,y,Wall) { //Ultra Factory
			if random(3) < 2
				instance_create(x,y,UltraConveyor);
			else
				instance_create(x+16,y+16,UltraFactoryTerminal);
		}
		
	    if spawnarea == 7 && !place_meeting(x,y,Wall){ //CUSTOM
		    if random(60) < 1{
				instance_create(x+16,y+16,BigSkull)
			}
		    else if random(13)<1{
				instance_create(x+16,y+16,Crystal)
		    } else if random(5) < 3
			{
				instance_create(x+16,y+16,VulcanoRock);
			}
		}
		else if spawnarea == 108
		{
			if random(60) < 1{
				instance_create(x+16,y+16,InvertedBigSkull)
			}
		    else if random(13)<1{
				instance_create(x+16,y+16,Crystal)
		    } else if random(5) < 3
			{
				instance_create(x+16,y+16,InvertedVulcanoRock);
			}
		}
	if spawnarea = 117//Mushroomland
	{
		if random(10)<1{
			instance_create(x+16,y+16,ToxicMushroom)
		} else if random(5) < 4
		{
			instance_create(x+16,y+16,choose(MushroomProp1,MushroomProp2));
		}
	}
	else if spawnarea = 124//INV Mushroomland
	{
		if random(8)<1{
			instance_create(x+16,y+16,InvertedToxicMushroom)
		} else if random(6) < 5
		{
			instance_create(x+16,y+16,choose(InvertedMushroomProp1,InvertedMushroomProp2));
		}
	}
	if spawnarea = 8 && !place_meeting(x,y,Wall){//CUSTOM
		if random(3)<2
			instance_create(x+16,y+16,Candy);
		else
			instance_create(x+16,y+16,Mushroom);
	}
	if spawnarea = 109 && !place_meeting(x,y,Wall){//CUSTOM
		instance_create(x+16,y+16,InvertedCandy);
	}
	if spawnarea = 100 && !place_meeting(x,y,Wall) && !place_meeting(x,y,TorchKiller)
	instance_create(x+16,y+16,Torch)
	if spawnarea = 116 && !place_meeting(x,y,Wall)
	instance_create(x+16,y+16,OldTorch)
	if spawnarea = 103 && !place_meeting(x,y,Wall)
	{
		if instance_exists(Player)&&random(6)<1
		{
			if point_distance(x,y,Player.x,Player.y)>64
				instance_create(x+16,y+16,GoldBarrel)
		}
		else
			instance_create(x+16,y+16,choose(MoneyPile,MoneyPile,MoneyPile,YVStatue,MoneyPile))
	}
	if spawnarea = 125 && !place_meeting(x,y,Wall)
	{
		if instance_exists(Player)&&random(6)<1
		{
			if point_distance(x,y,Player.x,Player.y)>64
				instance_create(x+16,y+16,InvertedGoldBarrel)
		}
		else
			instance_create(x+16,y+16,choose(InvertedMoneyPile,InvertedMoneyPile,InvertedMoneyPile,InvertedYVStatue,InvertedMoneyPile))
	}
	if spawnarea = 102 && !place_meeting(x,y,Wall)
	instance_create(x+16,y+16,PizzaBox)
	}
	}


	Player.area = ar;
}

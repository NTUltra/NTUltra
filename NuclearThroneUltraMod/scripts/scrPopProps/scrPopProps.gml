function scrPopProps() {
	if !place_meeting(x,y,Player) and !place_meeting(x,y,enemy) and !place_meeting(x,y,RadChest) and !place_meeting(x,y,AmmoChest) and !place_meeting(x,y,WeaponChest) and !place_meeting(x,y,MeleeFake) and !place_meeting(x,y,GatorSmoke) and !place_meeting(x,y,prop)
	{


	if UberCont.opt_gamemode=16  and !place_meeting(x,y,NOWALLSHEREPLEASE)
	{
	myx = x+choose(0,16)
	myy = y+choose(0,16)
	instance_create(myx,myy,SpikeTrap)
	instance_create(x,y,NOWALLSHEREPLEASE)
	}
	//walls near the player for safer spawn
	if random(5)<1  and !place_meeting(x,y,NOWALLSHEREPLEASE) && !place_meeting(x,y,hitme) && !place_meeting(x,y,chestprop) && !place_meeting(x,y,prop)
	&& point_distance(x,y,Player.x,Player.y)<128 and Player.area != 100 and Player.area != 6 and Player.area != 112 and (Player.area !=5 or random(3) < 1) and Player.area != 102 and Player.area != 104 and !(Player.area = 8 && Player.subarea=3)
	and Player.area != 9 and Player.area != 118 and Player.area != 114 and Player.area != 116
	{
		
	myx = x+choose(0,16)
	myy = y+choose(0,16)
	if !place_meeting(myx,myy,prop)
	instance_create(myx,myy,Wall)
	instance_create(x,y,NOWALLSHEREPLEASE)
	}//random(5)< 1


	if random(10)<1  and !place_meeting(x,y,NOWALLSHEREPLEASE) && !place_meeting(x,y,hitme) && !place_meeting(x,y,chestprop) && !place_meeting(x,y,prop) && Player.race = 24 && Player.skill_got[5]//Elementor more walls
	{
	myx = x+choose(0,16)
	myy = y+choose(0,16)

	if !place_meeting(myx,myy,prop)
	instance_create(myx,myy,Wall)
	instance_create(x,y,NOWALLSHEREPLEASE)
	}//random(5)< 1
	if random(6) < 1 and !place_meeting(x,y,NOWALLSHEREPLEASE) && !place_meeting(x,y,hitme) && !place_meeting(x,y,chestprop)  && !place_meeting(x,y,prop)
	and Player.area != 100 and Player.area != 6 and Player.area != 9 and Player.area != 118 and Player.area != 112  and (Player.area !=5 or random(3) < 1) and Player.area != 102 and Player.area != 104
	and !(Player.area = 8 && Player.subarea=3) and Player.area != 116//lill walls
	{
	myx = x+choose(0,16)
	myy = y+choose(0,16)

	instance_create(myx,myy,Wall)
	instance_create(x,y,NOWALLSHEREPLEASE)
	if random(15) < 1 and point_distance(myx,myy,Player.x,Player.y) > 128 and spawnarea = 3 && Player.subarea != 3
	instance_create(myx,myy,Trap)
	
	if random(15) < 1 and point_distance(myx,myy,Player.x,Player.y) > 128 and (spawnarea = 2 || spawnarea == 110) && Player.loops > 1
	instance_create(myx,myy,ToxicTrap)


	if random(4) < 1 and point_distance(myx,myy,Player.x,Player.y) > 64 and spawnarea = 7 //RANDOM LAVA
	instance_create(myx,myy,FloorExplo)
	if random(16) < 1 and point_distance(myx,myy,Player.x,Player.y) > 128 and spawnarea = 7 &&Player.subarea!=2//RANDOM TRAP
	instance_create(myx,myy,Trap)

	}
	if random(4) < 1 && spawnarea = 114 && !place_meeting(x,y,Wall)//Jungle
		instance_create(x+16,y+16,choose(Bush,Bush,Bush,Bush,Bush,Bush,BigFlower))
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
	else if ran > 60
	instance_create(x+16,y+16,OasisBarrel)
	else
	instance_create(x+16,y+16,WaterPlant)
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
	if spawnarea = 0 || spawnarea = 113 && !place_meeting(x,y,Wall)
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
	if spawnarea = 6 and random(4) < 1 && !place_meeting(x,y,Wall)
	instance_create(x+16,y+16,choose(Tube,Tube,Tube,Tube,MutantTube))

	if spawnarea = 112 and random(4) < 1 && !place_meeting(x,y,Wall)
	instance_create(x+16,y+16,choose(InvertedTube,InvertedTube,InvertedTube,InvertedTube,InvertedMutantTube))

	    if spawnarea = 7 && !place_meeting(x,y,Wall){ //CUSTOM
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
		else if spawnarea = 108
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
	if spawnarea = 8 && !place_meeting(x,y,Wall){//CUSTOM
	if random(2)<1
	instance_create(x+16,y+16,CandyCane);
	else
	instance_create(x+16,y+16,Mushroom);
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
	if spawnarea = 102 && !place_meeting(x,y,Wall)
	instance_create(x+16,y+16,PizzaBox)
	}
	}



}

function scrPopulate() {
	//setting area and spawning some enemies
	if UberCont.opt_gamemode == 25 || UberCont.opt_gamemode == 8
	return;
	
	var hard = Player.hard;
	if Player.crown == 24//Crown of sloth backup difficulty
		hard = max(8 + (Player.loops*3),hard);
    //setting area and spawning some enemies
    with Floor {
	if object_index != FloorExplo
	{
        subarea = Player.subarea;
        spawnarea = Player.area;
        /*
            if Player.area = 1 spawnarea = 1
            if Player.area = 2 spawnarea = 2
            if Player.area = 3 spawnarea = 3
            if Player.area = 4 spawnarea = 4
            if Player.area = 5 spawnarea = 5
            if Player.area = 6 spawnarea = 6
            if Player.area = 7 spawnarea = 7
            if Player.area = 8 spawnarea = 8
            if Player.area = 9 spawnarea = 9
            if Player.area = 100 spawnarea = 100
            if Player.area = 102 spawnarea = 102
            if Player.area = 103 spawnarea = 103
            if Player.area = 104 spawnarea = 104//crib
            if Player.area = 105 spawnarea = 105
            if Player.area = 106 spawnarea = 106//inverted scrapyard
            if Player.area = 107 spawnarea = 107
            if Player.area = 101 spawnarea = 101//oasis
            if Player.area = 108 spawnarea = 108//inverted vulcano
            if Player.area = 109 spawnarea = 109//inverted wonderland
            if Player.area = 110 spawnarea = 110//inverted sewers
            if Player.area = 111 spawnarea = 111//inverted caves
            if Player.area = 112 spawnarea = 112//inverted labs
            if Player.area = 113 spawnarea = 113//Banditland*/

        if (Player.area == 112 && Player.subarea == 2) {
            scrPopChests();
            exit;
        }
        if Player.area = 104 || (Player.area == 6 && Player.subarea == 2 && Player.loops > 0) {
            exit;
        }

        if random(10 + hard) < hard and point_distance(x, y, Player.x, Player.y) > 160 /*110*/ and!place_meeting(x, y, RadChest) and!place_meeting(x, y, AmmoChest) and!place_meeting(x, y, WeaponChest) and((x + 16 != Player.x and y + 16 != Player.y) or point_distance(x, y, Player.x, Player.y) > 300) //240
        {
            if ( ((spawnarea = 3 || spawnarea = 106) && Player.subarea = 3) || ((spawnarea = 5 || spawnarea = 112) && Player.subarea = 3) ) {
                if random(3) < 1.3 {
                    if UberCont.opt_gamemode = 9 //easy mode
                    {
                        if random(4) < 1
							scrPopEnemies()
						else if Player.loops > 0 && random(8) < Player.loops
							scrPopEnemies()
                    } else
                        scrPopEnemies()
                }
				
                //spawn some more enemies on loop 3
                if Player.loops > 0 && random(8) < Player.loops
					scrPopEnemies();
					
				if Player.loops > 8 && random(20) < Player.loops - 8
					scrPopEnemies();
				
				if UberCont.opt_gamemode == 34
				{
					var ran = random(100);
					if ran < 10
					{
						scrPopEnemies();
					}
					else if ran < 15
					{
						instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, UltraBandit);
					}
				}
				
            }
            else {
                if UberCont.opt_gamemode = 9 //easy mode
                {
                    if random(4) < 1 || !instance_exists(enemy)
                    scrPopEnemies()
					else if Player.loops > 0
						scrPopEnemies()
                } else { //normal procedure
                    scrPopEnemies()
					
					if UberCont.opt_gamemode == 34 && spawnarea != 100 && spawnarea != 104
					{
						var ran = random(100);
						if ran < 10
						{
							scrPopEnemies();
						}
						else if ran < 15
						{
							instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, UltraBandit);
						}
					}

                    //spawn some more enemies on loop
                    if Player.loops > 0 && random(15) < Player.loops
                    scrPopEnemies();

                    if Player.loops > 9 && random(20) < Player.loops - 9
					scrPopEnemies();
                }
            }

        }
	}
    }

    //COOL BONES
    with Floor {
	if object_index != FloorExplo
	{
		
		if spawnarea == 101
		{
			TopDecals();
			 GenBones();
            with Bones
				sprite_index = sprCoral;
			with TopDecal {
                sprite_index = sprOasisTopDecal;
            }
		}
		else if spawnarea == 122
		{
			TopDecals();
			GenBones();
            with Bones
				sprite_index = sprCoral;
			with TopDecal {
                sprite_index = sprCoral;
            }
		}
        else if spawnarea = 9 {
            if instance_exists(GenCont) {
                if !place_free(x - 32, y) and!place_free(x - 64, y) and place_free(x, y) and random(5) < 1 {
                    instance_create(x - 64 + 16, y + 16, TopDecal)
                }

                if !place_free(x + 32, y) and!place_free(x + 64, y) and place_free(x, y) and random(5) < 1 {
                    instance_create(x + 64 + 16, y + 16, TopDecal)
                }

                if !place_free(x, y + 32) and!place_free(x, y + 64) and place_free(x, y) and random(5) < 1 {
                    instance_create(x + 16, y + 64 + 16, TopDecal)
                }

                if !place_free(x, y - 32) and!place_free(x, y - 64) and place_free(x, y) and random(5) < 1 {
                    instance_create(x + 16, y - 64 + 16, TopDecal)
                }

            }
            with TopDecal {
                sprite_index = sprPalaceTopDecal;
            }
        }
        else if spawnarea = 114 //Jungle
        {
            GenBones();
            TopDecals();
            with TopDecal {
                sprite_index = sprJungleTopDecal;
            }
            with Bones {
                sprite_index = sprJungleDecal;
            }
        }
		else if spawnarea = 123 //Jungle
        {
            GenBones();
            TopDecals();
            with TopDecal {
                sprite_index = sprInvertedJungleTopDecal;
            }
            with Bones {
                sprite_index = sprInvertedJungleDecal;
            }
        } 
		else if spawnarea = 117 //Mushroom
        {
            GenBones();
            TopDecals();
            with TopDecal {
                sprite_index = sprMushroomTopDecal;
            }
            with Bones {
                sprite_index = sprMushroomDecal;
            }
        }
		else if spawnarea = 117 //Mushroom
        {
            GenBones();
            TopDecals();
            with TopDecal {
                sprite_index = sprInvertedMushroomTopDecal;
            }
            with Bones {
                sprite_index = sprInvertedMushroomDecal;
            }
        }
		else if spawnarea = 1 || spawnarea = 105 || spawnarea == 113 {
            if !place_free(x - 32, y) and!place_free(x + 32, y) and place_free(x, y) {
                instance_create(x, y, Bones)
                instance_create(x, y + 16, Bones)
                with instance_create(x + 32, y, Bones)
                image_xscale = -1
                with instance_create(x + 32, y + 16, Bones)
                image_xscale = -1
            }


            if instance_exists(GenCont) {
                if !place_free(x - 32, y) and!place_free(x - 64, y) and place_free(x, y) and random(5) < 1 {
                    instance_create(x - 64 + 16, y + 16, TopDecal)
                }

                if !place_free(x + 32, y) and!place_free(x + 64, y) and place_free(x, y) and random(5) < 1 {
                    instance_create(x + 64 + 16, y + 16, TopDecal)
                }

                if !place_free(x, y + 32) and!place_free(x, y + 64) and place_free(x, y) and random(5) < 1 {
                    instance_create(x + 16, y + 64 + 16, TopDecal)
                }

                if !place_free(x, y - 32) and!place_free(x, y - 64) and place_free(x, y) and random(5) < 1 {
                    instance_create(x + 16, y - 64 + 16, TopDecal)
                }

            }


            if spawnarea = 105 {
                with Bones
                sprite_index = sprBonesInverted;

                with TopDecal
                sprite_index = sprInvertedDesertTopDecal;
            }
            else if spawnarea == 113 {
                with Bones
                sprite_index = sprNightBones;

                with TopDecal
                sprite_index = sprNightDesertTopDecal;
            }

            //with Bones
            //sprite_index = sprSewerDecal

        }
        else if spawnarea == 10 {
            if !place_free(x - 32, y) and!place_free(x + 32, y) and place_free(x, y) {
                instance_create(x, y, Bones)
                instance_create(x, y + 16, Bones)
                with instance_create(x + 32, y, Bones)
                image_xscale = -1
                with instance_create(x + 32, y + 16, Bones)
                image_xscale = -1

                with Bones
                sprite_index = sprSavannaBones;
            }


            TopDecals();
            with TopDecal
            sprite_index = sprSavannaTopDecal;

        }
		else if spawnarea == 121 {
            if !place_free(x - 32, y) and!place_free(x + 32, y) and place_free(x, y) {
                instance_create(x, y, Bones)
                instance_create(x, y + 16, Bones)
                with instance_create(x + 32, y, Bones)
                image_xscale = -1
                with instance_create(x + 32, y + 16, Bones)
                image_xscale = -1

                with Bones
                sprite_index = sprInvertedSavannaBones;
            }


            TopDecals();
            with TopDecal
            sprite_index = sprInvertedSavannaTopDecal;

        }
        if spawnarea = 3 || spawnarea = 106 {
            if !place_free(x - 32, y) and!place_free(x + 32, y) and place_free(x, y) {
                if random(7) < 1
                instance_create(x, y, Bones)
                if random(7) < 1
                instance_create(x, y + 16, Bones)
                if random(7) < 1 {
                    with instance_create(x + 32, y, Bones)
                    image_xscale = -1
                }
                if random(7) < 1 {
                    with instance_create(x + 32, y + 16, Bones)
                    image_xscale = -1
                }
            }
            TopDecals();

            with TopDecal
            sprite_index = sprScrapTopDecal;
            with Bones
            sprite_index = sprScrapDecal
        }

        if spawnarea = 5 {
            if !place_free(x - 32, y) and!place_free(x + 32, y) and place_free(x, y) {
                if random(7) < 1
                instance_create(x, y, Bones)
                if random(7) < 1
                instance_create(x, y + 16, Bones)
                if random(7) < 1 {
                    with instance_create(x + 32, y, Bones)
                    image_xscale = -1
                }
                if random(7) < 1 {
                    with instance_create(x + 32, y + 16, Bones)
                    image_xscale = -1
                }
            }
			TopDecals();
            with Bones
				sprite_index = sprIceDecal;
			with TopDecal
                sprite_index = sprTopDecalCity;
        }
        if spawnarea = 4 // || spawnarea = 111
        {
            TopDecals();
            GenBones();
            with Bones
				sprite_index = sprCaveDecal;
            with TopDecal {
                sprite_index = sprTopDecalCave;
            }
        }
        if spawnarea = 115 {
            TopDecals();
            GenBones();
            with Bones
            sprite_index = sprCursedCaveDecal;
            with TopDecal {
                sprite_index = sprTopDecalCursedCave;
            }
        }
        if spawnarea = 2 {
            if !place_free(x - 32, y) and!place_free(x + 32, y) and place_free(x, y) and random(10) < 1 {
                instance_create(x, y + 16, Bones)
                with instance_create(x + 32, y + 16, Bones)
                image_xscale = -1
            }
            TopDecals();
            with TopDecal
            sprite_index = sprSewerTopDecal
            with Bones
            sprite_index = sprSewerDecal
        }
        if spawnarea = 7 || spawnarea = 108 //CUSTOM
        {
            if !place_free(x - 32, y) and!place_free(x + 32, y) and place_free(x, y) {
                instance_create(x, y, Bones)
                instance_create(x, y + 16, Bones)
                with instance_create(x + 32, y, Bones)
                image_xscale = -1
                with instance_create(x + 32, y + 16, Bones)
                image_xscale = -1
            }
			TopDecals();
			if spawnarea == 7
			{
	            with TopDecal
					sprite_index = sprVulcanoTopDecal
	            with Bones
					sprite_index = sprVulcanoBones
			}
			else
			{
				with TopDecal
					sprite_index = sprInvertedVulcanoTopDecal
	            with Bones
					sprite_index = sprInvertedVulcanoBones
			}
        }
	}
    }


    //making sure there are enough enemies and spawning props/lil walls

    with Floor {
	if object_index != FloorExplo
	{
        if instance_exists(Player) {
            if (spawnarea = 3 && Player.subarea = 3) || (spawnarea = 7 && Player.subarea = 3) //exceptions pls for bosses
            {
                if instance_number(enemy) < (3 + min(40,hard) * 0.65) and point_distance(x, y, Player.x, Player.y) > 80 and!place_meeting(x, y, RadChest) and!place_meeting(x, y, AmmoChest) and!place_meeting(x, y, WeaponChest) and((x + 16 != Player.x and y + 16 != Player.y) or point_distance(x, y, Player.x, Player.y) > 280) {
                    if random(5) < 1
                    scrPopEnemies()
                }
            } else {
                if instance_number(enemy) < (3 + min(40,hard) * 0.65) and point_distance(x, y, Player.x, Player.y) > 210 and!place_meeting(x, y, RadChest) and!place_meeting(x, y, AmmoChest) and!place_meeting(x, y, WeaponChest) and((x + 16 != Player.x and y + 16 != Player.y) or point_distance(x, y, Player.x, Player.y) > 280)
                scrPopEnemies()
            }
        }

        //CROWN OF BLOOD
        if instance_exists(Player) {
            if (Player.crown = 7 and random(8 + min(40,hard)) < min(30,hard) and point_distance(x, y, Player.x, Player.y) > 210 and!place_meeting(x, y, RadChest) and!place_meeting(x, y, AmmoChest) and!place_meeting(x, y, WeaponChest) and((x + 16 != Player.x and y + 16 != Player.y) or point_distance(x, y, Player.x, Player.y) > 280))
            {
				scrPopEnemies()
			}
				
            if (Player.crown = 17 and random(8 + min(40,hard)) < min(30,hard) and point_distance(x, y, Player.x, Player.y) > 64 and!place_meeting(x, y, RadChest) and!place_meeting(x, y, AmmoChest) and!place_meeting(x, y, WeaponChest) and((x + 16 != Player.x and y + 16 != Player.y) or point_distance(x, y, Player.x, Player.y) > 280))
            {    
				repeat(3)
					scrPopEnemies()
			}
			if UberCont.opt_gamemode == 6//Claustrophobia
			{
				if point_distance(x, y, Player.x, Player.y) > 110 and!place_meeting(x, y, RadChest) and!place_meeting(x, y, AmmoChest) and!place_meeting(x, y, WeaponChest) and((x + 16 != Player.x and y + 16 != Player.y) or point_distance(x, y, Player.x, Player.y) > 280)
				{
					//repeat(2)
						scrPopEnemies();
				}
			}
        }

        scrPopProps()
	}
    }

    with NOWALLSHEREPLEASE
    instance_destroy()

    //spawning chests
    scrPopChests()

    //spawn desert boss
    if Player.area = 1 and Player.subarea = 3 {
        repeat(clamp(Player.loops + 1,1,6))
        instance_create(x, y, WantBoss)
    }
	
	if Player.area = 4 and Player.subarea = 2 {
        instance_create(x, y, WantBoss)//Big bad bat
		if Player.loops > 11
			instance_create(x, y, WantBoss)
    }
	if Player.area = 111 and Player.subarea = 2 {
        instance_create(x, y, WantBoss)//Inverted big bad
		if Player.loops > 11
			instance_create(x, y, WantBoss)
    }
	
	//spawn SEWER FISH boss
    if (Player.area = 2 || Player.area == 110) and Player.subarea = 1 and Player.loops > 1 {
		instance_create(x, y, WantBoss)
    }

    //spawn INVERTED desert boss
    if Player.area = 105 and Player.subarea = 3 {
        repeat(clamp(Player.loops + 1,1,6))
        instance_create(x, y, WantBoss)
    }
	//Big vulture
	if ( (Player.area == 10 || Player.area == 121) and Player.subarea = 3 ) {
        repeat(ceil(max(1,Player.loops*0.5)))
			instance_create(x, y, WantBoss)
    }

    //spawn OASIS boss
    if (Player.area = 101 || Player.area == 122) and Player.subarea == 3 {
        repeat(ceil(max(1,Player.loops*0.5)))
        instance_create(x, y, WantBoss)
    }

    if (Player.area = 3 && Player.subarea = 1 && Player.loops > 0) { //SPAWN ASSASSINBOSS
        repeat(min(3,ceil(Player.loops*0.25)))
        instance_create(x, y, WantBoss);
    }

    if (Player.area = 106 && Player.subarea = 1 && Player.loops > 0) { //SPAWN ASSASSINBOSS
        repeat(min(3,ceil(Player.loops*0.25)))
        instance_create(x, y, WantBoss);
    }

    //venuz car
    if Player.area = 3 and Player.subarea = 1 {
        with instance_furthest(10016, 10016, Car) {
            instance_create(x, y, CarVenus)
            instance_change(Wind, false)
        }
		if !instance_exists(CarVenus)
		{
			with instance_furthest(10016, 10016,Floor)
			{
				instance_create(x+16, y+16, CarVenus)
			}
		}
    }
	if Player.area = 6 and Player.subarea = 1 {
        with instance_furthest(10016, 10016, Server) {
            instance_create(x, y, MushroomLandEntranceLabs)
            instance_change(Wind, false)
        }
		if !instance_exists(MushroomLandEntranceLabs)
		{
			with instance_furthest(10016, 10016,Floor)
			{
				instance_create(x+16, y+16, MushroomLandEntranceLabs)
			}
		}
    }

    if !((Player.area == 118 || Player.area == 9) && Player.subarea == 3) {
        if Player.area < 5 {
            with WeaponChest
            instance_create(x, y, Bandit)
            with RadChest
            instance_create(x, y, Bandit)
            with AmmoChest
            instance_create(x, y, Bandit)
        }
        else if Player.area != 101{
            with WeaponChest
            instance_create(x, y, Grunt)
            //with RadChest
            //instance_create(x,y,Grunt)
            with AmmoChest
            instance_create(x, y, Grunt)
        }
    }
    //populate pizza sewers
    if Player.area = 102 {

        with enemy
        instance_destroy()

        with instance_furthest(10016, 10016, Corpse) {
            repeat(4)
            instance_create(x + random(4) - 2, y + random(4) - 2, Turtle)
            instance_create(x, y, Rat)
        }
        with Rad
        instance_destroy()
        with AmmoPickup
        instance_destroy()
        with HPPickup
        instance_destroy()
        with Corpse
        instance_destroy()
    }

    //PIZZA SEWER ENTRANCE

    if Player.area = 2 {
        with Floor {
            if sprite_index = sprFloor2 and image_index = 1 or image_index = 5
            instance_create(x, y, PizzaEntrance)
        }
        do {
            with instance_nearest(10016 + random(240) - 120, 10016 + random(240) - 120, PizzaEntrance) instance_destroy()
        }
        until instance_number(PizzaEntrance) <= 1
    }
}

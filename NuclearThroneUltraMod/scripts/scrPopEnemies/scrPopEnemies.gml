function scrPopEnemies() {
	var loops = 0;
	if instance_exists(Player)
	{
		loops = Player.loops;
		if Player.ultra_got[114] && !scrIsInEnemyFreeArea()
		{
			//if random(100) < 30
			//{
				if Player.enemyAbyssIndex < array_length(Player.enemyAbyssCount) && Player.enemyAbyssCount[Player.enemyAbyssIndex] > 0
				{
					instance_create(x + 16, y + 16, Player.enemyTypeAbyss[Player.enemyAbyssIndex])
					Player.enemyAbyssCount[Player.enemyAbyssIndex] -= 1;
					if Player.enemyAbyssCount[Player.enemyAbyssIndex] <= 0 && Player.enemyAbyssIndex < array_length(Player.enemyAbyssCount)
					{
						Player.enemyAbyssIndex += 1;
					}
				}
				
			//}
		}
	}
	if scrIsHardMode()//HARD MODE
		loops ++;
		
	if scrIsGamemode(40)
	{
		return;
	}
	if scrIsGamemode(44)
	{
		scrPopEnemiesAlt();
		return;	
	}
	if scrIsGamemode(45) && random(3) < 1.25
	{
		if spawnarea != 100 || random(5) < 1
			spawnarea = scrGetRandomArea();
	}
    //DESERT
    if spawnarea = 1 or spawnarea = 0 // or spawnarea = 100
    {
		if loops > 0 {
	        if styleb = 1 {
	            instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(MaggotSpawn, BigMaggot, JungleFly, Maggot))
	        }
	        else {
	            if random(7) < 1
	            instance_create(x + 16, y + 16, choose(MaggotSpawn, Scorpion, JungleFly, MeleeBandit, Sniper))//ADD A TANK HERE
	            else {
	                if random(30) < 1 {
						instance_create(x,y,BigWallBreak);
	                    instance_create(x + 16, y + 16, Barrel)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, Bandit)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, BanditSquare)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, Bandit)
	                }
	                else
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(Bandit, Bandit, BanditSquare, Bandit, JungleFly, Maggot, Maggot, Maggot, Maggot, Scorpion))
	            }
	        }
		} else {
			var theBandit = Bandit;
	        if (subarea > 1) {
	            theBandit = choose(Bandit, Bandit, Bandit, BanditSquare);
	        }
	        if styleb = 1 {
	            instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(MaggotSpawn, BigMaggot, BigMaggot, Maggot))
	        }
	        else {
	            if random(7) < 1
	            instance_create(x + 16, y + 16, choose(MaggotSpawn, Scorpion))
	            else {
	                if random(30) < 1 {
						instance_create(x,y,BigWallBreak);
	                    instance_create(x + 16, y + 16, Barrel)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, Bandit)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, Bandit)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, Bandit)
	                }
	                else
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(theBandit, theBandit, theBandit, theBandit, theBandit, theBandit, Maggot, Scorpion))
	            }
	        }
		}
    }

    if spawnarea = 10 {
		if loops > 0
		{
			theBandit = choose(SavannaBandit, SavannaBandit, SavannaBandit, Bandit, BanditSquare);
	        if styleb = 1 {
	            instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(Vulture, SnowTank, FireBat, Vulture))
	        }
	        else {
	            if random(8) < 1
				{
					repeat(2)//Pack of hyenas
					{
						instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, Hyena)
					}
				}
	            else {
		                if random(30) < 1 {
							instance_create(x,y,BigWallBreak);
		                    instance_create(x + 16, y + 16, Barrel)
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, SavannaBandit)
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, Bandit)
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, SavannaBandit)
		                }
						else if random(25) < 1
						{
							repeat(2+irandom(2))
							{
								instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, Hyena)
							}
						}
		                else
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(theBandit, theBandit, Hyena, FireBat, GatorSmoke, Thief, Vulture, Vulture,SnowTank))
	            }
			}
		}
		else
		{
	        theBandit = choose(SavannaBandit, SavannaBandit, SavannaBandit, Bandit, BanditSquare);
	        if styleb = 1 {
	            instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(Vulture, Hyena, Hyena, Vulture))
	        }
	        else {
	            if random(8) < 1
				{
					repeat(2)//Pack of hyenas
					{
						instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, Hyena)
					}
				}
	            else {
		                if random(30) < 1 {
							instance_create(x,y,BigWallBreak);
		                    instance_create(x + 16, y + 16, Barrel)
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, SavannaBandit)
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, Bandit)
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, Bandit)
		                }
						else if random(25) < 1
						{
							repeat(2+irandom(2))
							{
								instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, Hyena)
							}
						}
		                else
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(theBandit, theBandit, theBandit, theBandit, GatorSmoke, Thief, Vulture, Vulture))
	            }
			}
        }
    }
	if spawnarea = 121 {//Inverted savanna
		if loops > 0
		{
			theBandit = choose(InvertedSavannaBandit, InvertedSavannaBandit, InvertedSavannaBandit, BanditInverted, InvertedBanditSquare);
	        if styleb = 1 {
	            instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(InvertedVulture, InvertedCardGuy,  InvertedVulture, InvertedCardGuy2))
	        }
	        else {
	            if random(8) < 1
				{
					repeat(2)//Pack of hyenas
					{
						instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, InvertedHyena)
					}
				}
	            else {
		                if random(30) < 1 {
		                    instance_create(x + 16, y + 16, Barrel)
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, InvertedSavannaBandit)
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, BanditInverted)
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, InvertedSavannaBandit)
		                }
						else if random(25) < 1
						{
							repeat(2+irandom(2))
							{
								instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, InvertedHyena)
							}
						}
		                else
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(theBandit, theBandit, InvertedSquareBat, InvertedCardGuy, InvertedGator, InvertedThief, InvertedVulture, InvertedVulture,InvertedCardGuy2))
	            }
			}
		}
		else
		{
	        theBandit = choose(InvertedSavannaBandit, InvertedSavannaBandit, InvertedSavannaBandit, BanditInverted, InvertedBanditSquare);
	        if styleb = 1 {
	            instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(InvertedVulture, InvertedHyena, InvertedHyena, InvertedVulture))
	        }
	        else {
	            if random(8) < 1
				{
					repeat(2)//Pack of hyenas
					{
						instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, InvertedHyena)
					}
				}
	            else {
		                if random(30) < 1 {
		                    instance_create(x + 16, y + 16, Barrel)
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, InvertedSavannaBandit)
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, BanditInverted)
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, BanditInverted)
		                }
						else if random(25) < 1
						{
							repeat(2+irandom(2))
							{
								instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, InvertedHyena)
							}
						}
		                else
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(theBandit, theBandit, theBandit, theBandit, InvertedGator, InvertedThief, InvertedVulture, InvertedVulture))
	            }
			}
        }
    }

    if spawnarea == 101 //Oasis
    {
		if loops > 0
		{
			if random(10) < 1
				instance_create(x + 16, y + 16, choose(Crab, Crab, Jock))
	        else
	            instance_create(x + 16, y + 16, choose(BoneFish, BoneFish, BoneFish, BoneFish, JellyFish, ScubaBandit, Turtle, Gator, Spider, ScubaBandit, Crab))
		}
		else
		{
	        if random(10) < 1
				instance_create(x + 16, y + 16, choose(Crab, Crab))
	        else
			{
				repeat(choose(1,1,1,1,1,2))
					instance_create(x + 16, y + 16, choose(BoneFish, BoneFish, BoneFish, BoneFish, JellyFish, JellyFish,ScubaBandit, ScubaBandit, Crab))
			}
		}

    }
	if spawnarea == 122 //Inverted oasis
    {
		if loops > 0
		{
			if random(10) < 1
				instance_create(x + 16, y + 16, choose(InvertedCrab, InvertedCrab, InvertedHyena))
	        else
	            instance_create(x + 16, y + 16, choose(InvertedBoneFish, InvertedBoneFish, InvertedBoneFish, InvertedBoneFish, InvertedJellyFish, InvertedScubaBandit, InvertedExploder, InvertedExploder, InvertedSpider, InvertedScubaBandit, InvertedCrab))
		}
		else
		{
	        if random(10) < 1
				instance_create(x + 16, y + 16, choose(InvertedCrab, InvertedCrab))
	        else
	            instance_create(x + 16, y + 16, choose(InvertedBoneFish, InvertedBoneFish, InvertedBoneFish, InvertedBoneFish, InvertedJellyFish, InvertedScubaBandit, InvertedScubaBandit, InvertedCrab))
		}

    }

    if spawnarea = 105 //inverted desert
    {
		if loops > 0
		{
			if styleb = 1 {
	            instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(BigMaggotInverted, BigMaggotInverted, InvertedJungleFly, MaggotInverted))
	        }
	        else {
	            if random(7) < 1
	            instance_create(x + 16, y + 16, choose(BigMaggotInverted, InvertedScorpion, InvertedJungleFly, InvertedNecromancer, InvertedNecromancer))
	            else {
	                if random(30) < 1 {
						instance_create(x,y,BigWallBreak);
	                    instance_create(x + 16, y + 16, Barrel)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, BanditInverted)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, InvertedBanditSquare)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, BanditInverted)
	                }
	                else
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(BanditInverted, BanditInverted, BanditInverted, InvertedBanditSquare, InvertedJungleFly, MaggotInverted, MaggotInverted, MaggotInverted, MaggotInverted, InvertedScorpion))
	            }
	        }
		}
		else
		{
	        if styleb = 1 {
	            instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(BanditInverted, BigMaggotInverted, BigMaggotInverted, BigMaggotInverted, BanditInverted, InvertedScorpion))
	        }
	        else {
	            if random(7) < 1
	            instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(BanditInverted, InvertedScorpion))
	            else {
	                if random(30) < 1 {
						instance_create(x,y,BigWallBreak);
	                    instance_create(x + 16, y + 16, Barrel)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, BanditInverted)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, InvertedBanditSquare)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, BanditInverted)
	                }
	                else if random(10) < 1 {
	                    instance_create(x + 16 + random(4), y + 16 + random(4), choose(BanditInverted, BanditInverted, BanditInverted, BanditInverted, BigMaggotInverted, BigMaggotInverted))
	                    instance_create(x + 16 + random(4), y + 16 + random(4), choose(BanditInverted, BanditInverted, BanditInverted, BanditInverted, BanditInverted, BigMaggotInverted))
	                }
	                if random(50) < 1 {
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(InvertedScorpion, InvertedGoldScorpion, BigMaggotInverted, InvertedScorpion, BigMaggotInverted))
	                }
	                instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(BanditInverted, BanditInverted, InvertedBanditSquare, BanditInverted, BigMaggotInverted, BanditInverted, BigMaggotInverted))
	            }
	        }
		}
    }
    //SEWERS
    if spawnarea = 2 {
		if loops > 0 {
	        if styleb = 1 {
	            instance_create(x + 16, y + 16, choose(Rat, Rat, Rat, Gator, Gator,BuffGator, Exploder))
	        }
	        else {
	            if random(9) < 1
	            instance_create(x + 16, y + 16, choose(Exploder, Ratking, Exploder, Ratking, Exploder, Ratking, MeleeFake, ToxicMushroomGuy, BuffGator, GatorSmoke))
	            else
	                instance_create(x + 16, y + 16, choose(Gator, Rat, Rat, Rat, Rat, Rat, Rat, Bandit))
	        }
		} else {
	        if styleb = 1 {
	            instance_create(x + 16, y + 16, choose(Rat, Rat, Rat, GatorSmoke, GatorSmoke, BuffGator, Exploder))
	        }
	        else {
	            if random(9) < 1
	            instance_create(x + 16, y + 16, choose(Exploder, Ratking, Exploder, Ratking, Exploder, Ratking, MeleeFake, GatorSmoke))
	            else
	                instance_create(x + 16, y + 16, choose(Rat, Rat, Rat, Rat, Rat, Rat, Rat, Bandit))
	        }
		}
    }

    //INVERTED SEWERS
    if spawnarea = 110 {
		if loops > 0 {
	        if styleb = 1 {
	            instance_create(x + 16, y + 16, choose(InvertedRat, InvertedRat, InvertedBoneFish, InvertedBanditSquare, InvertedExploder, InvertedGator, InvertedJellyFish, InvertedBuffGator))
	        }
	        else {
	            if random(9) < 1
	            instance_create(x + 16, y + 16, choose(InvertedExploder, InvertedRatking, InvertedExploder, InvertedRatking, InvertedExploder, InvertedRatking, InvertedJellyFish, InvertedBoneFish, InvertedBuffGator))
	            else
	                instance_create(x + 16, y + 16, choose(InvertedGator, InvertedRat, InvertedRat, InvertedRat, InvertedRat, InvertedRat, InvertedRat, BanditInverted))
	        }
		} else {
	        if styleb = 1 {
	            instance_create(x + 16, y + 16, choose(InvertedRat, InvertedRat, InvertedGator, InvertedGator, InvertedExploder, InvertedBuffGator))
	        }
	        else {
	            if random(9) < 1
	            instance_create(x + 16, y + 16, choose(InvertedExploder, InvertedRatking, InvertedExploder, InvertedRatking, InvertedExploder, InvertedRatking, InvertedMeleeFake, InvertedGator, InvertedBuffGator))
	            else
	                instance_create(x + 16, y + 16, choose(InvertedRat, InvertedRat, InvertedRat, InvertedRat, InvertedRat, InvertedRat, InvertedRat, BanditInverted))
	        }
		}
    }

    //SCRAPYARD
    if spawnarea = 3 {
		if loops > 0 {
			if styleb = 1 && random(2) < 1 {
				instance_create(x + 16, y + 16, choose(MeleeBandit, Thief, MeleeBandit, Salamander, Salamander, choose(BuffGator,Salamander)))
	        }
	        else {
				if random(35) < 1
				instance_create(x + 16, y + 16, SnowBot)
	            else if random(4) < 1
	            instance_create(x + 16, y + 16, choose(MeleeBandit, Sniper, Gator, Sniper, Gator, Sniper, choose(BuffGator,Sniper), Exploder, Thief))
	            else {
	                if random(10) < 1 {
	                    if random(8) < 1 instance_create(x + 16, y + 16, Car)
	                    //instance_create(x+16+random(4)-2,y+16+random(4)-2,Raven)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, Raven)
	                }
	                else
	                    instance_create(x + 16, y + 16, choose(Raven, Raven, Bandit, BanditSquare))
	            }
	        }
		} else {
			if styleb = 1 && random(2) < 1 {
				instance_create(x + 16, y + 16, choose(MeleeFake, Thief, MeleeFake, Salamander, Salamander))
	        }
	        else {
	            if random(4) < 1
	            instance_create(x + 16, y + 16, choose(MeleeBandit, Sniper, MeleeFake, Sniper, MeleeFake, Sniper, Sniper, Exploder, Thief))
	            else {
	                if random(10) < 1 {
	                    if random(8) < 1 instance_create(x + 16, y + 16, Car)
	                    //instance_create(x+16+random(4)-2,y+16+random(4)-2,Raven)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, Raven)
	                }
	                else
	                    instance_create(x + 16, y + 16, choose(Raven, Raven, Bandit, BanditSquare))
	            }
	        }
		}
    }

    //INVERTED SCRAPYARD
    if spawnarea = 106 {
		if loops > 0 {
			if styleb = 1 && random(2) < 1 {
				instance_create(x + 16, y + 16, choose(InvertedMeleeFake, InvertedThief, InvertedMeleeFake, InvertedSalamander, InvertedSalamander, choose(InvertedBuffGator,InvertedSalamander)))
	        }
	        else {
				if random(35) < 1
				instance_create(x + 16, y + 16, InvertedSnowBot)
	            else if random(4) < 1
	            instance_create(x + 16, y + 16, choose(InvertedMeleeBandit, InvertedSniper, InvertedDiscGuy, InvertedSniper, InvertedDiscGuy, InvertedSniper, choose(InvertedBuffGator,InvertedSniper), InvertedExploder, InvertedThief))
	            else {
	                if random(10) < 1 {
	                    if random(8) < 1 instance_create(x + 16, y + 16, Car)
	                    //instance_create(x+16+random(4)-2,y+16+random(4)-2,Raven)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, InvertedRaven)
	                }
	                else
	                    instance_create(x + 16, y + 16, choose(InvertedRaven, InvertedRaven, BanditInverted, InvertedBanditSquare))
	            }
	        }
		} else {
	        if styleb = 1 && random(2) < 1 {
	            instance_create(x + 16, y + 16, choose(InvertedMeleeFake, InvertedThief, InvertedMeleeFake, InvertedSalamander, InvertedSalamander))
	        }
	        else {
	            if random(4) < 1
	            instance_create(x + 16, y + 16, choose(InvertedMeleeFake, InvertedSniper, InvertedMeleeFake, InvertedSniper, InvertedMeleeFake, InvertedSniper, InvertedSniper, BanditInverted, InvertedThief))
	            else {
	                if random(10) < 1 {
	                    if random(8) < 1 instance_create(x + 16, y + 16, Car)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, InvertedRaven)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, InvertedThief)
	                }
	                else
	                    instance_create(x + 16, y + 16, choose(InvertedRaven, InvertedRaven, BanditInverted))
	            }
	        }
		}
    }
	//ULTRA SCRAPYARD
    if spawnarea = 136 {
		if loops > 0 && instance_number(enemy) < 2 || random(4) < 2{
			if styleb = 1 && random(2) < 1 {
				instance_create(x + 16, y + 16, choose(UltraMeleeFake, UltraSalamander, UltraSalamander, UltraSalamander, UltraSalamander, UltraSalamander, choose(PalaceGuardian,UltraSalamander)))
	        }
	        else {
				if random(35) < 1
				instance_create(x + 16, y + 16, PalaceGuardian)
	            else if random(4) < 1
	            instance_create(x + 16, y + 16, choose(UltraMeleeBandit, SmallUltraSniper, UltraMeleeFake, SmallUltraSniper, UltraMeleeFake, SmallUltraSniper, choose(PalaceGuardian,SmallUltraSniper), Exploder, UltraSalamander))
	            else {
	                if random(10) < 1 {
	                    if random(8) < 1 instance_create(x + 16, y + 16, Car)
	                    //instance_create(x+16+random(4)-2,y+16+random(4)-2,Raven)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, UltraRaven)
	                }
	                else
	                    instance_create(x + 16, y + 16, choose(UltraRaven, UltraRaven, Bandit, BanditSquare))
	            }
	        }
		} else if instance_number(enemy) < 2 || random(4) < 2{
			if styleb = 1 && random(2) < 1 {
				instance_create(x + 16, y + 16, choose(UltraMeleeFake, UltraSalamander, UltraSalamander, UltraSalamander, UltraSalamander, UltraSalamander))
	        }
	        else {
	            if random(4) < 1
	            instance_create(x + 16, y + 16, choose(UltraMeleeBandit, SmallUltraSniper, UltraMeleeFake, SmallUltraSniper, UltraMeleeFake, SmallUltraSniper, SmallUltraSniper, Exploder, UltraSalamander))
	            else {
	                if random(10) < 1 {
	                    if random(8) < 1 instance_create(x + 16, y + 16, Car)
	                    //instance_create(x+16+random(4)-2,y+16+random(4)-2,Raven)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, UltraRaven)
	                }
	                else
	                    instance_create(x + 16, y + 16, choose(UltraRaven, UltraRaven, Bandit, BanditSquare))
	            }
	        }
		}
    }
	//CLOUDLAND
    if spawnarea = 138 && (instance_number(enemy) < 2 || random(10) < 6) {
		if loops > 0  && (instance_number(enemy) < 2 || random(10) < 1) {
			if random(35) < 1
				instance_create(x + 16, y + 16, GraveyardSniper)
	        else if random(3) < 1
				instance_create(x + 16, y + 16, choose(CloudShooter,CloudKnifer,CloudShooter,CloudShooter,Raven,JungleFly))
	        else {
	            instance_create(x + 16, y + 16, choose(Bandit,CloudFlyer,CloudFlyer,CloudFlyer, CloudShooter,CloudKnifer))
	        }
		} else {
	        if random(3) < 1
				instance_create(x + 16, y + 16, choose(CloudShooter,CloudKnifer,CloudShooter,CloudShooter))
	        else {
	            instance_create(x + 16, y + 16, choose(Bandit,CloudFlyer, CloudFlyer, CloudFlyer, CloudShooter,CloudKnifer))
	        }
		}
    }
	//INVERTED CLOUDLAND
    if spawnarea = 140 && (instance_number(enemy) < 2 || random(10) < 6) {
		if loops > 0 {
			if random(35) < 1
				instance_create(x + 16, y + 16, InvertedGraveyardSniper)
	        else if random(3) < 1
				instance_create(x + 16, y + 16, choose(InvertedCloudShooter,InvertedCloudKnifer,InvertedCloudShooter,InvertedCloudShooter,InvertedRaven,InvertedJungleFly))
	        else {
	            instance_create(x + 16, y + 16, choose(BanditInverted,InvertedCloudFlyer,InvertedCloudFlyer,InvertedCloudFlyer, InvertedCloudShooter,InvertedCloudKnifer))
	        }
		} else {
	        if random(3) < 1
				instance_create(x + 16, y + 16, choose(InvertedCloudShooter,InvertedCloudKnifer,InvertedCloudShooter,InvertedCloudShooter))
	        else {
	            instance_create(x + 16, y + 16, choose(BanditInverted,InvertedCloudFlyer, InvertedCloudFlyer, InvertedCloudFlyer, InvertedCloudShooter,InvertedCloudKnifer))
	        }
		}
    }
	
	//THE PIT!
    if spawnarea = 139 {
		var n = instance_nearest(x,y,enemy);
		if loops > 0 {
			if random(30) < 1
				instance_create(x + 16, y + 16, choose(InvertedCardGuy, InvertedRaven, InvertedMeleeBandit,InvertedBuffGator,InvertedGator))
	        else 
				instance_create(x + 16, y + 16, choose(PitGhost,PitGhostLaser,PitGhostLaser,PitGhostSpawner, PitGhostExploder))
		} else if n == noone || (point_distance(x,y,n.x,n.y) > 50 || random(4) < 1){
	        instance_create(x + 16, y + 16, choose(PitGhost,PitGhostLaser,PitGhostLaser,PitGhostSpawner, PitGhostExploder))
		}
    }
    //CAVES
    if spawnarea = 4  && (subarea == 1 || random(2) < 1){
		var crystal = LaserCrystal
		if random(30) < 1//random 30
			crystal = LightningCrystal;
		if loops > 0 {
			if random(10) < 1
			{
				instance_create(x + 12, y + 16, SquareBat)
				instance_create(x + 20, y + 16, SquareBat)
			}
			else if random(11) < 1
			{
					instance_create(x + 16, y + 16, Spider)
					instance_create(x + 16, y + 16, choose(Spider,SquareBat,Spider,Spider,FireBat));
			}
	        else if random(12) < 1
				instance_create(x + 16, y + 16, choose(SquareBat, ExploFreak, RhinoFreak,FireBat,CloudFlyer))
	        else
	            instance_create(x + 16, y + 16, choose(Spider, Spider, Spider, Spider, crystal,Spider, Spider, Spider, Spider, crystal,SquareBat,FireBat))
		} else {
			if random(10) < 1
			{
				instance_create(x + 12, y + 16, SquareBat)
				instance_create(x + 20, y + 16, SquareBat)
			}
			else if random(10) < 1
			{
				instance_create(x + 16, y + 16, Spider)
				instance_create(x + 16, y + 16, choose(Spider,SquareBat,Spider,Spider,FireBat));
			}
	        else if instance_number(enemy) < 1 || random(10) < 8
	            instance_create(x + 16, y + 16, choose(Spider, Spider, Spider, Spider, crystal,
				Spider, Spider, Spider, Spider, crystal,SquareBat))
		}
       
    }
    //CHEESE CAVES
    if spawnarea = 115 {
		var crystal = CursedCrystal;
		if random(30) < 1
			crystal = LightningCrystal;
		else if random(9) < 1
		{
			repeat(2)
				instance_create(x + 16, y + 16, CursedSpider)
		}
        instance_create(x + 16, y + 16, choose(CursedSpider, CursedSpider, CursedSpider, CursedSpider, crystal))
    }


    //INVERTED CAVES
    if spawnarea = 111  && (subarea == 1 || random(2) < 1){
		var crystal = LightningCrystal
		if random(30) < 1//random 30
			crystal = LaserCrystal;
		if loops > 0 {
			if random(10) < 1
			{
				instance_create(x + 12, y + 16, InvertedSquareBat)
				instance_create(x + 20, y + 16, InvertedSquareBat)
			}
			else if random(12) < 1
			{
				instance_create(x + 16, y + 16, InvertedSpider)
				instance_create(x + 16, y + 16, choose(InvertedSpider,InvertedSquareBat,InvertedSpider,InvertedSpider,InvertedFireBat));
			}
	        else if random(12) < 1
				instance_create(x + 16, y + 16, choose(InvertedSpider, InvertedSniper, InvertedFireWorm, InvertedFireBat,InvertedCloudFlyer))
	        else
			{
	            instance_create(x + 16, y + 16, choose(InvertedSpider, InvertedSpider, InvertedSpider, InvertedSpider,InvertedFireBat,
				crystal, crystal,InvertedSpider, InvertedSpider, InvertedSpider, InvertedSpider, crystal,InvertedSquareBat))
			}
		} else {
			if random(10) < 1
			{
				instance_create(x + 12, y + 16, InvertedSquareBat)
				instance_create(x + 20, y + 16, InvertedSquareBat)
			}
			else if random(10) < 1
			{
				repeat(2)
					instance_create(x + 16, y + 16, InvertedSpider)
			}
	        else
	            instance_create(x + 16, y + 16, choose(InvertedSpider, InvertedSpider, InvertedSpider, InvertedSpider, crystal,
				InvertedSpider, InvertedSpider, InvertedSpider, InvertedSpider, crystal,InvertedSquareBat))
		}
       
    }

    //FROZEN CITY
    if spawnarea = 5 {
		if loops > 0 {
			if random(12) < 2
			instance_create(x + 16, y + 16, choose(ExploGuardian, GuardianDog, CubeGuardian, Necromancer,SnowTank))
			else if random(4) > 3
			instance_create(x + 16, y + 16, choose(SnowBot, SnowBot, SnowBot, SnowTank, Wolf, Wolf, DiscGuy, BanditSquare))
			else if instance_number(enemy) < 1
			{
				instance_create(x + 16, y + 16,DiscGuy);
			}
		} else {
			if random(3) > 1
				instance_create(x + 16, y + 16, choose(SnowBot, SnowBot, SnowBot, SnowTank, Wolf, Wolf, DiscGuy, BanditSquare))
			else if instance_number(enemy) < 1
			{
				instance_create(x + 16, y + 16,DiscGuy);
			}
		}
    }

    //INVERTED FROZEN CITY
    if spawnarea = 107 {
		
		if loops > 0 {
			if random(12) < 2
			instance_create(x + 16, y + 16, choose(InvertedPalaceGuardian, InvertedGuardianDog, InvertedGhostGuardian, InvertedNecromancer,InvertedSnowTank))
			else if random(4) > 3
			instance_create(x + 16, y + 16, choose(InvertedSnowBot, InvertedSnowBot, InvertedSnowBot, InvertedSnowTank, InvertedWolf, InvertedWolf, InvertedDiscGuy, InvertedBanditSquare))
			else if instance_number(enemy) < 1
			{
				instance_create(x + 16, y + 16,InvertedDiscGuy);
			}
		}
		else
		{
	        if random(4) < 2
				instance_create(x + 16, y + 16, choose(InvertedDiscGuy, InvertedSnowBot, InvertedSnowBot, InvertedSnowTank, InvertedWolf, InvertedWolf, InvertedDiscGuy))
			else if instance_number(enemy) < 1
			{
				instance_create(x + 16, y + 16,InvertedDiscGuy);
			}
		}
    }


    //LABS
    if spawnarea = 6 {
		if loops > 0 {
	        if subarea = 2 {
	            if random(22) < 1
	            instance_create(x + 16, y + 16, choose(Freak, Freak, Freak, Freak, Turret, RhinoFreak,LaserCrystal,Ratking));

	        } else {
	            var ran = random(100);
	            if ran > 80 {
	                repeat(6)//10
	                instance_create(x + 12 + random(8), y + 12 + random(8), choose(Freak, Freak, Freak, Freak, Freak, Freak, Freak, Freak, Freak, Freak, ExploFreak, ExploFreak, RhinoFreak, Freak, Freak, Freak))
	            }
	            else if ran > 70 {
	                instance_create(x + 16, y + 16, choose(Necromancer, Necromancer, Necromancer, ExploFreak, RhinoFreak, Necromancer, Necromancer))
	            }
	            else if ran > 60 && !place_meeting(x, y, Turret) {
	                instance_create(x + 16, y + 16, Turret);
	                instance_create(x + 16, y + 16, NOWALLSHEREPLEASE);
	            }
				else if ran > 55 {
					var crystal = LaserCrystal
					if random(40) < 1//random 30
						crystal = LightningCrystal;
					instance_create(x + 16, y + 16, choose(Ratking, crystal));
				}
				else if instance_number(enemy) < 1
				{
					instance_create(x + 16, y + 16,Necromancer);
				}
	        }
		} else {
	        if subarea = 2 {
	            if random(22) < 1
	            instance_create(x + 16, y + 16, choose(Freak, Freak, Freak, Freak, Turret, RhinoFreak));

	        } else {
	            var ran = random(110);
	            if ran > 80 {
	                repeat(choose(4,5))//Used to be 10
	                instance_create(x + 12 + random(8), y + 12 + random(8), choose(Freak, Freak, Freak, Freak, Freak, Freak, Freak, Freak, Freak, Freak, ExploFreak, ExploFreak, RhinoFreak, Freak, Freak, Freak))
	            }
	            else if ran > 70 {
	                instance_create(x + 16, y + 16, choose(Necromancer, Necromancer, Necromancer, ExploFreak, RhinoFreak, Necromancer, Necromancer))
	            }
	            else if ran > 60 && !place_meeting(x, y, Turret) {
	                instance_create(x + 16, y + 16, Turret);
	                instance_create(x + 16, y + 16, NOWALLSHEREPLEASE);
	            }
				else if instance_number(enemy) < 1
				{
					instance_create(x + 16, y + 16,Necromancer);
				}
	        }
		}

    }

    //INVERTED LABS
    if spawnarea = 112 {
		var r = 5;
		if instance_exists(PitNavigation)
			r -= 2;
		if loops > 0 {
			r += 1;
	        if subarea = 2 {
	            if random(22) < 1
	            instance_create(x + 16, y + 16, choose(InvertedFreak, InvertedFreak, InvertedFreak, InvertedFreak, InvertedTurret, InvertedRhinoFreak,InvertedCubeGuardian,InvertedRatking));

	        } else {
	            var ran = random(100);
	            if ran > 80 {
	                repeat(r)//10
	                instance_create(x + 12 + random(8), y + 12 + random(8), choose(InvertedFreak, InvertedFreak, InvertedFreak, InvertedFreak, InvertedFreak, 
					InvertedFreak, InvertedFreak, InvertedFreak, InvertedFreak, InvertedFreak, InvertedExploFreak, InvertedExploFreak, InvertedRhinoFreak, InvertedFreak, InvertedFreak, InvertedFreak))
	            }
	            else if ran > 70 {
	                instance_create(x + 16, y + 16, choose(InvertedNecromancer, InvertedNecromancer, InvertedNecromancer, InvertedExploFreak, 
					InvertedRhinoFreak, InvertedNecromancer, InvertedNecromancer))
	            }
	            else if ran > 60 && !place_meeting(x, y, InvertedTurret) {
	                instance_create(x + 16, y + 16, InvertedTurret);
	                instance_create(x + 16, y + 16, NOWALLSHEREPLEASE);
	            }
				else if ran > 55 {
					instance_create(x + 16, y + 16, choose(InvertedRatking, InvertedCubeGuardian));
				}
				else if instance_number(enemy) < 1
				{
					instance_create(x + 16, y + 16,InvertedNecromancer);
				}
	        }
		}
		else
		{
	        if subarea = 2 {
	            if random(24) < 1
	            instance_create(x + 16, y + 16, choose(InvertedFreak, InvertedFreak, InvertedFreak, InvertedFreak, InvertedTurret, InvertedRhinoFreak));

	        }
	        else {
	            var ran = random(100);
	            if ran > 80 {
	                repeat(r)
	                instance_create(x + 12 + random(8), y + 12 + random(8), choose(InvertedFreak, InvertedFreak, InvertedFreak, InvertedFreak, InvertedFreak, InvertedFreak,
	                    InvertedFreak, InvertedFreak, InvertedFreak, InvertedFreak, InvertedExploFreak, InvertedExploFreak, InvertedRhinoFreak, InvertedFreak, InvertedFreak, InvertedFreak))
	            }
	            else if ran > 70 {
	                instance_create(x + 16, y + 16, choose(InvertedNecromancer, InvertedNecromancer, InvertedNecromancer, InvertedExploFreak, InvertedRhinoFreak, InvertedNecromancer, InvertedNecromancer))
	            }
	            else if ran > 60 && !place_meeting(x, y, InvertedTurret) {
	                instance_create(x + 16, y + 16, InvertedTurret);
	                instance_create(x + 16, y + 16, NOWALLSHEREPLEASE);
	            }
				else if instance_number(enemy) < 1
				{
					instance_create(x + 16, y + 16,InvertedNecromancer);
				}
	        }
		}
    }

    //VULCANO
    if spawnarea = 7{
		if (instance_exists(Player) && Player.subarea != 3 || random(7) < 2)
		{
			if loops > 0
			{
				if styleb = 1 //b style
		        {
		            if random(4) < 1 {
		                instance_create(x + 12 + random(8), y + 12 + random(8), choose(LavaBallEnemy, FireWorm, FireWorm, LavaBallEnemy, Salamander,SuperFireBaller,Sniper))
		            }
		            else if random(7) < 2
		            instance_create(x + 16, y + 16, choose(FireBat, Thief, FireWorm, LavaBallEnemy, FireBat, Bandit, BanditSquare, FireBat, FireBaller,Sniper,ExploFreak))
					else if instance_number(enemy) < 1
					{
						instance_create(x + 16, y + 16,LavaBallEnemy);
					}
		        } else //a style
		        {
		            if random(5) < 1 {
		                repeat(1+irandom(1))
							instance_create(x + 12 + random(8), y + 12 + random(8), choose(FireBat, LavaBallEnemy, LavaBallEnemy, FireBat, LavaBallEnemy, Bandit, BanditSquare,LavaBallEnemy, FireWorm))
		            }
		            else if random(2) < 1
						instance_create(x + 16, y + 16, choose(FireBat, FireBat, LavaBallEnemy, LavaBallEnemy, Bandit, FireWorm, Salamander,SuperFireBaller,Sniper,ExploFreak))
					else if instance_number(enemy) < 1
					{
						instance_create(x + 16, y + 16,LavaBallEnemy);
					}
		        }
			}
			else
			{
		        if styleb = 1 //b style
		        {
		            if random(4) < 1 {
		                instance_create(x + 12 + random(8), y + 12 + random(8), choose(LavaBallEnemy, FireWorm, FireWorm, FireWorm, LavaBallEnemy, Salamander))
		            }
		            else if random(7) < 2
		            instance_create(x + 16, y + 16, choose(FireWorm, Thief, FireWorm, FireBat, FireBat, Bandit, BanditSquare, FireWorm, FireWorm))
					else if instance_number(enemy) < 1
					{
						instance_create(x + 16, y + 16,LavaBallEnemy);
					}
		        } else //a style
		        {
		            if random(5) < 1 {
						repeat(1 + irandom(1))
							instance_create(x + 12 + random(8), y + 12 + random(8), choose(FireBat, LavaBallEnemy, LavaBallEnemy, LavaBallEnemy, FireBat, LavaBallEnemy, Bandit, BanditSquare, FireWorm))
		            }
		            else if random(2) < 1
						instance_create(x + 16, y + 16, choose(FireBat, LavaBallEnemy, LavaBallEnemy, Bandit, FireWorm, Salamander, choose(FireWorm,SuperFireBaller)))
					else if instance_number(enemy) < 1
					{
						instance_create(x + 16, y + 16,LavaBallEnemy);
					}
		        }
			}
		}
		else if instance_number(enemy) < 1
		{
			instance_create(x + 16, y + 16,LavaBallEnemy);
		}
    }

    //INVERTED VULCANO
    if spawnarea = 108 {
		if (instance_exists(Player) && Player.subarea != 3 || random(7) < 1)
		{
	        if loops > 0
			{
				if styleb = 1 //b style
		        {
		            if random(4) < 1 {
		                instance_create(x + 12 + random(8), y + 12 + random(8), choose(InvertedLavaBallEnemy, InvertedFireWorm, InvertedFireWorm, InvertedWolf, InvertedLavaBallEnemy, InvertedSalamander,InvertedSuperFireBaller))
		            }
		            else if random(7) < 1
						instance_create(x + 16, y + 16, choose(InvertedFireWorm, Thief, InvertedFireWorm, InvertedFireBat, BanditInverted, InvertedBanditSquare, InvertedWolf, InvertedFireWorm,InvertedFireBaller,InvertedScubaBandit))
					else if instance_number(enemy) < 1
					{
						instance_create(x + 16, y + 16,InvertedLavaBallEnemy);
					}
		        } else //a style
		        {
		            if random(5) < 1 {
		                //repeat(1 + random(1))
		                instance_create(x + 12 + random(8), y + 12 + random(8), choose(InvertedFireBat, InvertedLavaBallEnemy, InvertedLavaBallEnemy, InvertedLavaBallEnemy, InvertedFireBat, InvertedLavaBallEnemy, 
						InvertedLavaBallEnemy, BanditInverted, InvertedBanditSquare, InvertedFireWorm))
		            }
		            else if random(2) < 1
						instance_create(x + 16, y + 16, choose(InvertedFireBat, InvertedLavaBallEnemy, InvertedLavaBallEnemy, BanditInverted, InvertedFireWorm, InvertedWolf, InvertedSalamander,InvertedSuperFireBaller,InvertedScubaBandit))
					else if instance_number(enemy) < 1
					{
						instance_create(x + 16, y + 16,InvertedLavaBallEnemy);
					}
		        }
			}
			else if !instance_exists(PitNavigation) || random(5) < 3
			{
		        if styleb = 1 //b style
		        {
		            if random(4) < 1 {
		                instance_create(x + 12 + random(8), y + 12 + random(8), choose(InvertedLavaBallEnemy, InvertedFireWorm, InvertedFireWorm, InvertedFireWorm, InvertedLavaBallEnemy, InvertedSalamander))
		            }
		            else if random(7) < 1
		            instance_create(x + 16, y + 16, choose(InvertedFireWorm, Thief, InvertedFireWorm, InvertedFireBat, BanditInverted, InvertedBanditSquare, InvertedFireWorm, InvertedFireWorm))
					else if instance_number(enemy) < 1
					{
						instance_create(x + 16, y + 16,InvertedLavaBallEnemy);
					}
		        } else //a style
		        {
		            if random(5) < 1 {
		                //repeat(1+irandom(1))
		                    instance_create(x + 12 + random(8), y + 12 + random(8), choose(InvertedFireBat, InvertedLavaBallEnemy, InvertedLavaBallEnemy, InvertedFireWorm, InvertedFireBat, InvertedSalamander, BanditInverted, InvertedBanditSquare))
		            }
		            else if random(2) < 1
						instance_create(x + 16, y + 16, choose(InvertedFireBat, InvertedLavaBallEnemy, InvertedLavaBallEnemy, InvertedFireWorm, InvertedSalamander, choose(InvertedFireWorm,InvertedSuperFireBaller)))
					else if instance_number(enemy) < 1
					{
						instance_create(x + 16, y + 16,InvertedLavaBallEnemy);
					}
		        }
			}
		}
		else if instance_number(enemy) < 1
		{
			instance_create(x + 16, y + 16,InvertedLavaBallEnemy);
		}
    }

    if spawnarea = 8 //Wonderland
    {
        if instance_exists(Player) {
            if Player.subarea = 3 && Player.area = 8 //WE LOVE BOSSES! in case loop make sure irght area
            {
                if !instance_exists(ChesireCat) {
                    instance_create(x + 16, y + 16, ChesireCat);
                }
				else if loops > 0 && random(8) < 1
				{
	                instance_create(x + 16, y + 16, choose(Sheep, ExplosiveSheep, TeaPot, CardGuy, CardGuy2, 
					Sheep, ExplosiveSheep, TeaPot, CardGuy, CardGuy2,
					GuardianDog, Hyena))
				}
				else if random(16) < 1
				{
					instance_create(x + 16, y + 16, choose(Sheep, ExplosiveSheep, TeaPot, CardGuy, CardGuy2, 
					Sheep, ExplosiveSheep, TeaPot, CardGuy, CardGuy2))
				}

            } else {
				if loops > 0
				{
					if styleb = 1 {
	                    if random(3) < 1
	                    instance_create(x + 16, y + 16, choose(CardGuy, CardGuy2, GuardianDog, CardGuy, CardGuy2, ExplosiveSheep, TeaPot, Hyena,Hyena,TeaPot,CubeGuardian))
	                }
	                else {
	                    if random(8) < 1
	                    instance_create(x + 16, y + 16, choose(TeaPot, ExplosiveSheep, TeaPot, TeaPot, TeaPot, CardGuy, CardGuy2,GuardianDog,Hyena,BuffGator))
	                    else if random(4) < 2.5 {
	                        instance_create(x + 16, y + 16, choose(TeaPot, CardGuy, CardGuy, CardGuy, CardGuy2, CardGuy2, CardGuy2, Sheep,Hyena,Hyena,GuardianDog,CubeGuardian))
	                    }
						else if instance_number(enemy) < 1
						{
							instance_create(x + 16, y + 16,CardGuy);
						}
	                }
				}
				else
				{
	                if styleb = 1 {
	                    if random(3) < 1
	                    instance_create(x + 16, y + 16, choose(CardGuy, CardGuy2, ExplosiveSheep, CardGuy, CardGuy2, ExplosiveSheep, TeaPot, TeaPot))
	                }
	                else {
	                    if random(8) < 1
	                    instance_create(x + 16, y + 16, choose(TeaPot, ExplosiveSheep, TeaPot, TeaPot, TeaPot, CardGuy, CardGuy2))
	                    else if random(4) < 2.5 {
	                        instance_create(x + 16, y + 16, choose(TeaPot, CardGuy, CardGuy, CardGuy, CardGuy2, CardGuy2, CardGuy2, Sheep))
	                    }
						else if instance_number(enemy) < 1
						{
							instance_create(x + 16, y + 16,CardGuy);
						}
	                }
				}
            }
        }
        else {
				if loops > 0
				{
					if styleb = 1 {
	                    if random(3) < 1
	                    instance_create(x + 16, y + 16, choose(CardGuy, CardGuy2, GuardianDog, CardGuy, CardGuy2, ExplosiveSheep, TeaPot, Hyena,Hyena,TeaPot,CubeGuardian))
	                }
	                else {
	                    if random(8) < 1
	                    instance_create(x + 16, y + 16, choose(TeaPot, ExplosiveSheep, TeaPot, TeaPot, TeaPot, CardGuy, CardGuy2,GuardianDog,Hyena,Hyena,BuffGator))
	                    else if random(4) < 2.5 {
	                        instance_create(x + 16, y + 16, choose(TeaPot, CardGuy, CardGuy, CardGuy, CardGuy2, CardGuy2, CardGuy2, Sheep,Hyena,Hyena,GuardianDog,CubeGuardian))
	                    }
						else if instance_number(enemy) < 1
						{
							instance_create(x + 16, y + 16,CardGuy);
						}
	                }
				}
				else
				{
		            if styleb = 1 {
		                if random(3) < 1
		                instance_create(x + 16, y + 16, choose(CardGuy, CardGuy2, ExplosiveSheep, CardGuy, Sheep, CardGuy2, Sheep, TeaPot, TeaPot))
		            }
		            else {
		                if random(8) < 1
		                instance_create(x + 16, y + 16, choose(TeaPot, ExplosiveSheep))
		                else if random(4) < 2.5 {
		                    instance_create(x + 16, y + 16, choose(TeaPot, CardGuy, CardGuy, CardGuy, CardGuy2, CardGuy2, CardGuy2, Sheep))
		                }
						else if instance_number(enemy) < 1
						{
							instance_create(x + 16, y + 16,CardGuy);
						}
		            }
				}
        }
    }

    if spawnarea = 109 //Inverted Wonderland
    {
        if instance_exists(Player) {
			if loops > 0
			{
				var normals = true;
				if Player.subarea = 3 && Player.area = 109 //WE LOVE BOSSES! in case loop make sure irght area
		        {
		            if !instance_exists(InvertedChesireCat) {
		                instance_create(x + 16, y + 16, InvertedChesireCat);
		            }
					normals = choose(true,true,false);
		        }
				if normals
				{
					if styleb = 1 {
		                if random(3) < 1
		                instance_create(x + 16, y + 16, choose(InvertedCardGuy, InvertedCardGuy2, InvertedGuardianDog, InvertedCardGuy, InvertedCardGuy2, ExplosiveSheep, InvertedTeaPot, InvertedMolesarge, InvertedMolefish,InvertedTeaPot,InvertedSnowTank))
		            }
		            else {
		                if random(8) < 1
		                instance_create(x + 16, y + 16, choose(InvertedTeaPot, ExplosiveSheep, InvertedTeaPot, InvertedTeaPot, InvertedTeaPot, InvertedCardGuy, InvertedCardGuy2,InvertedGuardianDog,InvertedMolefish,InvertedMolesarge))
		                else if random(4) < 2.5 {
		                    instance_create(x + 16, y + 16, choose(InvertedTeaPot, InvertedCardGuy, InvertedCardGuy, InvertedCardGuy, InvertedCardGuy2, InvertedCardGuy2, InvertedCardGuy2, Sheep,InvertedMolesarge,InvertedMolesarge,InvertedGuardianDog,InvertedSnowTank))
		                }
						else if instance_number(enemy) < 1
						{
							instance_create(x + 16, y + 16,InvertedCardGuy);
						}
		            }
				}
			}
			else
			{
		        if Player.subarea = 3 && Player.area = 109 //WE LOVE BOSSES! in case loop make sure irght area
		        {
		            if !instance_exists(InvertedChesireCat) {
		                instance_create(x + 16, y + 16, InvertedChesireCat);
		            }

		        } else {
		            if styleb = 1 {
		                if random(3) < 1
		                instance_create(x + 16, y + 16, choose(InvertedCardGuy, InvertedCardGuy2, ExplosiveSheep, ExplosiveSheep, InvertedCardGuy, InvertedCardGuy2, InvertedTeaPot, InvertedTeaPot))
		            }
		            else {
		                if random(8) < 1
		                instance_create(x + 16, y + 16, choose(InvertedTeaPot, InvertedTeaPot, InvertedTeaPot, ExplosiveSheep))
		                else if random(4) < 2.5 {
		                    instance_create(x + 16, y + 16, choose(InvertedTeaPot, InvertedCardGuy, InvertedCardGuy, InvertedCardGuy, InvertedCardGuy2, InvertedCardGuy2, InvertedCardGuy2))
		                }
						else if instance_number(enemy) < 1
						{
							instance_create(x + 16, y + 16,InvertedCardGuy);
						}
		            }
		        }
			}
        }
        else {
            if styleb = 1 {
                if random(3) < 1
                instance_create(x + 16, y + 16, choose(InvertedCardGuy, InvertedCardGuy2, ExplosiveSheep, ExplosiveSheep, InvertedCardGuy, InvertedCardGuy2, InvertedTeaPot, InvertedTeaPot))
            }
            else {
                if random(8) < 1
                instance_create(x + 16, y + 16, choose(InvertedTeaPot, InvertedTeaPot, InvertedTeaPot, ExplosiveSheep))
                else if random(4) < 2.5 {
                    instance_create(x + 16, y + 16, choose(InvertedTeaPot, InvertedCardGuy, InvertedCardGuy, InvertedCardGuy, InvertedCardGuy2, InvertedCardGuy2, InvertedCardGuy2))
                } else if instance_number(enemy) < 1
				{
					instance_create(x + 16, y + 16,InvertedCardGuy);
				}
            }
        }

    }

    //PIZZA SEWERS
    if spawnarea = 102 {
        instance_create(x + 16, y + 16, Turtle)
    }


    //VENUZ AIRHORN.WAV its OGG now..
    if spawnarea = 103 {
		if loops > 0
		{
			if random(5) < 1
	        instance_create(x + 16, y + 16, choose(FireBaller, Jock, FireBaller, Jock, FireBaller, SuperFireBaller,BuffMushroom))
	        else if random(4) < 1 {
	            if random(5) < 1 && instance_exists(Player) {
	                if point_distance(x, y, Player.x, Player.y) > 64
	                instance_create(x + 16, y + 16, GoldBarrel)
	            }
	            repeat(3)
	            instance_create(x + 16, y + 16, choose(Molefish, Molefish, Molefish, Molefish, Molesarge,GhostGuardian,JellyFish))
	        }
		}
		else
		{
	        if random(5) < 1
	        instance_create(x + 16, y + 16, choose(FireBaller, Jock, FireBaller, Jock, FireBaller, SuperFireBaller))
	        else if random(4) < 1 {
	            if random(5) < 1 && instance_exists(Player) {
	                if point_distance(x, y, Player.x, Player.y) > 64
	                instance_create(x + 16, y + 16, GoldBarrel)
	            }
	            repeat(3)
	            instance_create(x + 16, y + 16, choose(Molefish, Molefish, Molefish, Molefish, Molesarge))
	        }
		}
    }
	if spawnarea = 125 {
		if loops > 0
		{
			if random(5) < 1
	        instance_create(x + 16, y + 16, choose(InvertedFireBaller, InvertedJock, InvertedFireBaller, InvertedJock, InvertedFireBaller, InvertedSuperFireBaller, InvertedCardGuy2))
	        else if random(4) < 1 {
	            if random(5) < 1 && instance_exists(Player) {
	                if point_distance(x, y, Player.x, Player.y) > 64
	                instance_create(x + 16, y + 16, InvertedGoldBarrel)
	            }
	            repeat(3)//No jellyfish and no mushroom
	            instance_create(x + 16, y + 16, choose(InvertedMolefish, InvertedMolefish, InvertedMolefish, InvertedMolefish, InvertedMolesarge, InvertedHyena, InvertedDiscGuy))
	        }
		}
		else
		{
	        if random(5) < 1
	        instance_create(x + 16, y + 16, choose(InvertedFireBaller, InvertedJock, InvertedFireBaller, InvertedJock, InvertedFireBaller, InvertedSuperFireBaller))
	        else if random(4) < 1 {
	            if random(5) < 1 && instance_exists(Player) {
	                if point_distance(x, y, Player.x, Player.y) > 64
	                instance_create(x + 16, y + 16, InvertedGoldBarrel)
	            }
	            repeat(3)
	            instance_create(x + 16, y + 16, choose(InvertedMolefish, InvertedMolefish, InvertedMolefish, InvertedMolefish, InvertedMolesarge))
	        }
		}
    }

    //BANDITLAND
    if spawnarea = 113 {
        if styleb = 1 {
            instance_create(x + 16, y + 16, choose(EraserBandit, Thief, Thief, InvertedThief))
        }
        else {
            if random(20) < 1 {
                repeat(1 + irandom(3))
                instance_create(x + 16 + irandom(4) - 2, y + 16 + irandom(4) - 2, choose(Bandit, ScubaBandit, SavannaBandit, JungleBandit, LaserBandit, EraserBandit, BanditInverted, BanditSquare,InvertedJungleBandit,InvertedScubaBandit,InvertedBanditSquare,InvertedSavannaBandit))
            }
            else {
                if random(30) < 1 {
					instance_create(x,y,BigWallBreak);
                    instance_create(x + 16, y + 16, Barrel)
                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(Bandit, ScubaBandit, SavannaBandit, JungleBandit, LaserBandit, EraserBandit, BanditInverted, BanditSquare, InvertedJungleBandit, InvertedScubaBandit, InvertedSavannaBandit, InvertedBanditSquare))
                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(Bandit, ScubaBandit, SavannaBandit, JungleBandit, LaserBandit, EraserBandit, BanditInverted, BanditSquare, InvertedJungleBandit, InvertedScubaBandit, InvertedSavannaBandit, InvertedBanditSquare))
                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(Bandit, ScubaBandit, SavannaBandit, JungleBandit, LaserBandit, EraserBandit, BanditInverted, BanditSquare, InvertedJungleBandit, InvertedScubaBandit, InvertedSavannaBandit, InvertedBanditSquare))
                }
                else if random(20) < 1 {
                    repeat(2 + irandom(6))
                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, Bandit)
                }
                else
                    instance_create(x + 16, y + 16, choose(Bandit, SavannaBandit, ScubaBandit, LaserBandit, EraserBandit, LaserBandit, BanditInverted, InvertedThief, InvertedThief,JungleBandit, BanditSquare, InvertedJungleBandit, InvertedScubaBandit, InvertedSavannaBandit, InvertedBanditSquare))
            }
        }
    }

    //JUNGLE
    if spawnarea = 114 {
		if loops > 0
		{
			if subarea != 2 || random(2) < 1
			{
		        if styleb = 1 && random(2) < 1 {
		            instance_create(x + 16, y + 16, choose(JungleAssassinFake, JungleAssassinFake, JungleAssassinFake, JungleAssassinFake, JungleAssassinFake, JungleFly,JungleGorilla, BigMaggot,FireWorm,Maggot,FireWorm))
		        }
		        else {
		            if random(4) < 1
						instance_create(x + 16, y + 16, choose(JungleAssassin, JungleBandit, JungleAssassinFake, JungleAssassinFake, JungleAssassinFake, JungleBandit, JungleBandit, JungleGorilla, FireWorm, Scorpion, BigMaggot, JungleFly,Maggot))
		            else {
		                if random(30) < 1 {
							instance_create(x,y,BigWallBreak);
		                    instance_create(x + 16, y + 16, Barrel)
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, JungleBandit)
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, JungleBandit)
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, JungleBandit)
		                }
		                else {
		                    instance_create(x + 16, y + 16, choose(JungleFly, JungleAssassinFake, JungleGorilla, JungleAssassinFake, JungleBandit, JungleBandit, JungleBandit, JungleBandit, JungleBandit, Scorpion, BigMaggot, FireWorm, Scorpion,Maggot,FireWorm));
		                }
		            }
		        }
			}
		}
		else if subarea != 2 || random(3) < 2
		{
	        if styleb = 1 && random(2) < 1 {
	            instance_create(x + 16, y + 16, choose(JungleAssassinFake, JungleAssassinFake, JungleAssassinFake, JungleAssassinFake, JungleAssassinFake, JungleFly,JungleGorilla,MaggotSpawn,MaggotSpawn))
	        }
	        else {
	            if random(4) < 1
	            instance_create(x + 16, y + 16, choose(JungleAssassin, JungleBandit, JungleAssassinFake, JungleAssassinFake, JungleAssassinFake, JungleBandit, JungleBandit, JungleBandit, JungleBandit, JungleGorilla, JungleFly))
	            else {
	                if random(30) < 1 {
						instance_create(x,y,BigWallBreak);
	                    instance_create(x + 16, y + 16, Barrel)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, JungleBandit)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, JungleBandit)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, JungleBandit)
	                }
	                else {
	                    instance_create(x + 16, y + 16, choose(JungleFly, JungleAssassinFake, JungleGorilla, JungleAssassinFake, JungleBandit, JungleBandit, JungleBandit, JungleBandit, JungleBandit, JungleBandit, JungleBandit));
	                }
	            }
	        }
		}
    }
	//Inverted Jungle
	if spawnarea = 123 {
		if loops > 0
		{
			if subarea != 2 || random(2) < 1
			{
		        if styleb = 1 && random(2) < 1 {
		            instance_create(x + 16, y + 16, choose(InvertedJungleAssassinFake, InvertedJungleAssassinFake, InvertedJungleAssassinFake, InvertedJungleAssassinFake, InvertedJungleAssassinFake, InvertedJungleFly,InvertedJungleGorilla,BigMaggotInverted,InvertedSniper,MaggotInverted))
		        }
		        else {
		            if random(4) < 1
		            instance_create(x + 16, y + 16, choose(InvertedJungleAssassin, InvertedJungleBandit, InvertedJungleAssassinFake, InvertedJungleAssassinFake, InvertedJungleAssassinFake, InvertedJungleBandit, InvertedJungleBandit, InvertedMolefish, InvertedScorpion, BigMaggotInverted, InvertedJungleFly,InvertedJungleGorilla,MaggotInverted))
		            else {
		                if random(30) < 1 {
							instance_create(x,y,BigWallBreak);
		                    instance_create(x + 16, y + 16, Barrel)
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, InvertedJungleBandit)
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, InvertedJungleBandit)
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, InvertedJungleBandit)
		                }
		                else {
		                    instance_create(x + 16, y + 16, choose(InvertedJungleFly, InvertedJungleGorilla, InvertedJungleBandit, InvertedJungleBandit, InvertedJungleBandit, InvertedJungleBandit, InvertedJungleBandit, InvertedJungleBandit, InvertedScorpion, BigMaggotInverted, InvertedSniper, InvertedScorpion,MaggotInverted));
		                }
		            }
		        }
			}
		}
		else if subarea != 2 || random(2) < 1
		{
	        if styleb = 1 && random(2) < 1 {
	            instance_create(x + 16, y + 16, choose(InvertedJungleAssassinFake, InvertedJungleAssassinFake, InvertedJungleAssassinFake, InvertedJungleAssassinFake, InvertedJungleAssassinFake, InvertedJungleFly,InvertedJungleGorilla,BigMaggotInverted,BigMaggotInverted))
	        }
	        else {
	            if random(4) < 1
	            instance_create(x + 16, y + 16, choose(InvertedJungleAssassin, InvertedJungleBandit, InvertedJungleAssassinFake, InvertedJungleAssassinFake, InvertedJungleAssassinFake, InvertedJungleBandit, InvertedJungleBandit, InvertedJungleBandit, InvertedJungleBandit, InvertedJungleBandit, InvertedJungleFly))
	            else {
	                if random(30) < 1 {
						instance_create(x,y,BigWallBreak);
	                    instance_create(x + 16, y + 16, Barrel)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, InvertedJungleBandit)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, InvertedJungleBandit)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, InvertedJungleBandit)
	                }
	                else {
	                    instance_create(x + 16, y + 16, choose(InvertedJungleFly, InvertedJungleGorilla, InvertedJungleBandit, InvertedJungleBandit, InvertedJungleBandit, InvertedJungleBandit, InvertedJungleBandit, InvertedJungleBandit, InvertedJungleBandit, InvertedJungleBandit, InvertedJungleBandit, InvertedJungleBandit));
	                }
	            }
	        }
		}
    }
	
	//MUSHROOM LAND
    if spawnarea = 117 {
		if loops > 0
		{
			if loops < 2 || instance_number(enemy) < 1 || random(5) < 4
			{
			    if random(9) < 1
					instance_create(x + 16, y + 16, choose(Exploder, BuffMushroom, ToxicMushroomGuy, BuffMushroom, Gator, ToxicMushroomGuy, Necromancer, Ratking, BuffGator))
			    else if random(2) < 1
			        instance_create(x + 16, y + 16, choose(Gator, Rat, ToxicMushroomGuy, BuffMushroom, BuffMushroom, ToxicMushroomGuy, ToxicMushroomGuy, BanditSquare,Exploder,Ratking,Ratking,Rat,LaserBandit,LaserBandit,Wolf,Wolf))
			}
		}
		else
		{
			if random(9) < 1
				instance_create(x + 16, y + 16, choose(Exploder, BuffMushroom, ToxicMushroomGuy, BuffMushroom, Gator, ToxicMushroomGuy, BanditSquare, BuffGator))
		    else if random(2) < 1
		        instance_create(x + 16, y + 16, choose(Gator, GatorSmoke, ToxicMushroomGuy, BuffMushroom, BuffMushroom, ToxicMushroomGuy, ToxicMushroomGuy, BanditSquare,Exploder))	
		}
    }
	//Inverted Mushroom
	if spawnarea = 124 {
		if loops > 0
		{
			if loops < 2 || instance_number(enemy) < 1 || random(5) < 4
			{
				//TODO replace exploders with something else since they dont make all that much sense in non toxic enviroment here
			    if random(9) < 1
			    instance_create(x + 16, y + 16, choose(InvertedRat, InvertedBuffMushroom, InvertedToxicMushroomGuy, InvertedBuffMushroom, InvertedRatking, InvertedToxicMushroomGuy, InvertedBanditSquare,InvertedNecromancer, InvertedBuffGator))
			    else if random(2) < 1
			        instance_create(x + 16, y + 16, choose(InvertedRatking, InvertedSquareBat, InvertedToxicMushroomGuy, InvertedBuffMushroom, InvertedBuffMushroom, InvertedToxicMushroomGuy, InvertedToxicMushroomGuy, InvertedBanditSquare,InvertedRat,InvertedNecromancer,InvertedFireBat,LightningCrystal,EraserBandit))
			}
		}
		else
		{
			if random(9) < 1
				instance_create(x + 16, y + 16, choose(InvertedRat, InvertedBuffMushroom, InvertedToxicMushroomGuy, InvertedBuffMushroom, InvertedRatking, InvertedToxicMushroomGuy, InvertedBanditSquare, InvertedBuffGator))
		    else if random(2) < 1
		        instance_create(x + 16, y + 16, choose(InvertedRatking, InvertedToxicMushroomGuy, InvertedBuffMushroom, InvertedBuffMushroom, InvertedToxicMushroomGuy, InvertedToxicMushroomGuy, InvertedBanditSquare, InvertedRat))	
		}
    }
	
	//GRAVEYARD
    if spawnarea = 126 {
		var theBandit = choose(Bandit, Bandit, Bandit, BanditSquare);
		if loops > 0
		{
		    var r = random(10);
			if r > 8
			{
				instance_create(x + 16, y + 16, choose(GraveyardSniper,GraveyardBreeder,GraveyardSniper,GraveyardBreeder,choose(BuffMushroom, CursedSpider, CursedCrystal)))
			}
			if r > 4
			{
				instance_create(x + 16, y + 16, choose(GraveyardSkeleton))
			}
		    else
			{
		        instance_create(x + 16, y + 16, choose(theBandit,theBandit,GraveyardSkeleton,GraveyardSkeleton,GraveyardSkeleton,GraveyardSkeleton,GraveyardSniper, BuffMushroom, CursedSpider, CursedSpider))
			}
		}
		else
		{
			var r = random(10);
			if r > 7
			{
				instance_create(x + 16, y + 16, choose(GraveyardSniper,GraveyardBreeder))
			}
			if r > 4
			{
				repeat(choose(1,1,2))
				instance_create(x + 16, y + 16, choose(GraveyardSkeleton))
			}
		    else
			{
		        instance_create(x + 16, y + 16, choose(theBandit,theBandit,MaggotSpawn,GraveyardSkeleton,GraveyardSkeleton,GraveyardSkeleton,GraveyardSkeleton,GraveyardSniper))
			}
		}
    }
	//INVERTED GRAVEYARD
    else if spawnarea = 127 {
		var theBandit = choose(BanditInverted, BanditInverted, BanditInverted, InvertedBanditSquare);
		if loops > 0
		{
		    var r = random(10);
			if r > 8
			{
				instance_create(x + 16, y + 16, choose(InvertedGraveyardSniper,InvertedGraveyardBreeder,InvertedGraveyardSniper,InvertedGraveyardBreeder,choose(InvertedBuffMushroom, InvertedSpider, LightningCrystal)))//TODO INVERTED CLOUD SHOOTER
			}
			if r > 4
			{
				//repeat(2)
				instance_create(x + 16, y + 16, choose(InvertedGraveyardSkeleton,InvertedGraveyardSkeleton,InvertedGraveyardSkeleton,InvertedGraveyardBreeder,InvertedGraveyardSniper))
			}
		    else
			{
		        instance_create(x + 16, y + 16, choose(theBandit,theBandit,InvertedGraveyardSkeleton,InvertedGraveyardSkeleton,InvertedGraveyardSkeleton,InvertedGraveyardSkeleton,InvertedSpider, InvertedBuffMushroom, InvertedSpider, InvertedSpider))
			}
		}
		else if !instance_exists(PitNavigation) || instance_number(enemy) < 2 || random(5) < 3
		{
			var r = random(10);
			if r > 7
			{
				instance_create(x + 16, y + 16, choose(InvertedGraveyardSniper,InvertedGraveyardBreeder))
			}
			if r > 4
			{
				repeat(choose(1,1,2))
				instance_create(x + 16, y + 16, choose(InvertedGraveyardSkeleton))
			}
		    else
			{
		        instance_create(x + 16, y + 16, choose(theBandit,theBandit,BigMaggotInverted,InvertedGraveyardSkeleton,InvertedGraveyardSkeleton,InvertedGraveyardSkeleton,InvertedGraveyardSkeleton,InvertedGraveyardSniper))
			}
		}
    }
	
	//FACTORY
    if spawnarea = 130 || spawnarea == 131 || spawnarea == 132 || spawnarea == 133 || spawnarea == 134 {
		var octaBot = OctaBot;
		var squareBot = SquareBot;
		var wallBot = WallBot;
		var bigBot = BigBot;
		var sniper = Sniper;
		var palaceGuardian = PalaceGuardian;
		if spawnarea == 131 // invertedd
		{
			octaBot = InvertedOctaBot;
			squareBot = InvertedSquareBot;
			wallBot = InvertedWallBot;
			bigBot = InvertedBigBot;
			sniper = InvertedSniper;
			palaceGuardian = InvertedPalaceGuardian;
		}
		else if spawnarea == 132 //Cursed
		{
			octaBot = CursedOctaBot;
			squareBot = CursedSquareBot;
			wallBot = CursedWallBot;
			bigBot = CursedBigBot;
			sniper = CursedSpider;
			palaceGuardian = CursedCrystal;
		} else if spawnarea == 133 // Golden
		{
			octaBot = GoldenOctaBot;
			squareBot = GoldenSquareBot;
			wallBot = GoldenWallBot;
			bigBot = GoldenBigBot;
			sniper = GoldenSniper;
			palaceGuardian = GoldSnowTank;
		} else if spawnarea == 134 //Ultra
		{
			octaBot = UltraOctaBot;
			squareBot = UltraSquareBot;
			wallBot = UltraWallBot;
			bigBot = UltraBigBot;
			palaceGuardian = Ratking;
			sniper = Rat;
		}
		if loops > 0
		{
		    var r = random(10);
			if r > 8
			{
				instance_create(x + 16, y + 16, choose(octaBot,squareBot,wallBot,bigBot))
			}
			if r > 5
			{
				instance_create(x + 16, y + 16, choose(octaBot,squareBot,wallBot,sniper,palaceGuardian))
			}
		    else if r > 2 || instance_number(enemy) < 1
			{
		        instance_create(x + 16, y + 16, choose(octaBot,squareBot,wallBot))
			}
		}
		else
		{
			var r = random(10);
			if r > 8
			{
				instance_create(x + 16, y + 16, choose(octaBot,squareBot,wallBot,bigBot))
			}
			if r > 5
			{
				instance_create(x + 16, y + 16, choose(octaBot,squareBot,wallBot))
			}
		    else if r > 2 || instance_number(enemy) < 1
			{
		        instance_create(x + 16, y + 16, choose(octaBot,squareBot,wallBot))
			}
		}
    }
	if spawnarea == 135 && subarea != 3 {
	    var ran = random(100);
		if ran < 70 || !instance_exists(enemy)
		{
		    if ran > 25 && ran < 70{
		        instance_create(x + 16, y + 16, choose(Grunt, Grunt, Inspector, Shielder, SegwayPopo, BuffPopo, ExploderPopo))
		    } else {
				instance_create(x + 16, y + 16, choose(IDPDSpawn, Grunt, EliteGrunt, EliteInspector, EliteShielder, EliteSegwayPopo, EliteBuffPopo, EliteExploderPopo))
			}
		}
    }
	//PALACE
    if spawnarea == 9 && subarea != 3 {
		if loops > 0 {
			if styleb = 1 && random(8) < 2 {
	            instance_create(x + 16, y + 16, choose(GuardianDog, GuardianDog, GhostGuardian,ExploGuardian))
	        } else {
	            var ran = random(100);
	            if ran > 55 {
	                instance_create(x + 16, y + 16, choose(PalaceGuardian, PalaceGuardian, ExploGuardian, ExploGuardian, GhostGuardian, GuardianDog, CubeGuardian,CloudKnifer,CloudShooter))
	            } else if ran > 30 {
					instance_create(x + 16, y + 16, choose(Sniper, JungleBandit, ExploFreak))
				}
				else if instance_number(enemy) < 1
				{
					instance_create(x + 16, y + 16,PalaceGuardian);
				}
	        }
		} else {
			if styleb = 1 && random(8) < 2 {
	            instance_create(x + 16, y + 16, choose(GuardianDog, GuardianDog, GhostGuardian,ExploGuardian))
	        } else {
	            var ran = random(100);

	            if ran > 55 {
	                instance_create(x + 16, y + 16, choose(PalaceGuardian, PalaceGuardian, ExploGuardian, ExploGuardian, CubeGuardian, GhostGuardian, GuardianDog))
	            }
				else if instance_number(enemy) < 1
				{
					instance_create(x + 16, y + 16,PalaceGuardian);
				}
	        }
		}
    }
	if spawnarea == 118 && subarea != 3 {//Inverted palace
		if loops > 0 {
			if styleb = 1 && random(7) < 2 {
	            instance_create(x + 16, y + 16, choose(InvertedGuardianDog, InvertedGhostGuardian,InvertedPalaceGuardian))
	        } else {
	            var ran = random(100);
	            if ran > 55 {
	                instance_create(x + 16, y + 16, choose(InvertedPalaceGuardian, InvertedPalaceGuardian, InvertedExploGuardian, InvertedExploGuardian, InvertedGhostGuardian, InvertedGuardianDog, InvertedCubeGuardian,InvertedCloudKnifer,InvertedCloudShooter))
	            } else if ran > 30 {
					instance_create(x + 16, y + 16, choose(InvertedExploFreak, InvertedSniper, InvertedJungleBandit))
				}
				else if instance_number(enemy) < 1
				{
					instance_create(x + 16, y + 16,InvertedPalaceGuardian);
				}
	        }
		} else {
			if styleb = 1 && random(7) < 2 {
	            instance_create(x + 16, y + 16, choose(InvertedGuardianDog, InvertedGuardianDog, InvertedGhostGuardian))
	        } else {
	            var ran = random(100);

	            if ran > 55 {
	                instance_create(x + 16, y + 16, choose(InvertedPalaceGuardian, InvertedPalaceGuardian, InvertedExploGuardian, InvertedExploGuardian, InvertedCubeGuardian, InvertedGhostGuardian, InvertedGuardianDog))
	            }
				else if instance_number(enemy) < 1
				{
					instance_create(x + 16, y + 16,InvertedPalaceGuardian);
				}
	        }
		}
    }
	//Throne 2
	if spawnarea == 119 || spawnarea == 120
	{
		if !instance_exists(IDPDSpawn) || (instance_number(IDPDSpawn) < clamp(loops + 1,2,4))
			instance_create(x,y,IDPDSpawn);	
	}
	//Crown Courtyard
    if spawnarea = 128{
		if loops > 0 {
			if instance_number(enemy) < 1 || random(100) < 60
			{
		        if styleb = 1 {
		            instance_create(x + 16, y + 16, choose(PalaceGuardian, PalaceGuardian, CourtyardTank, CourtyardTank))
		        }
		        else {
		            instance_create(x + 16, y + 16, choose(Raven, Raven, UltraRaven, Exploder, CourtyardGuardian, GhostGuardian, CourtyardGuardian, CourtyardGuardian, CourtyardTank))
		        }
			}
		} else
		{
			if instance_number(enemy) < 1 || random(100) < 60
			{
		        if styleb = 1 {
		            instance_create(x + 16, y + 16, choose(CourtyardGuardian, CourtyardGuardian, CourtyardTank, CourtyardTank))
		        }
		        else {
					instance_create(x + 16, y + 16, choose(Raven, Raven, Raven, UltraRaven, Exploder, CourtyardGuardian, CourtyardGuardian, CourtyardGuardian, CourtyardTank))
		        }
			}
		}
    }
	if spawnarea == 129{
		if loops > 0 {
			if instance_number(enemy) < 1 || random(100) < 60
			{
		        if styleb = 1 {
		            instance_create(x + 16, y + 16, choose(InvertedPalaceGuardian, InvertedPalaceGuardian, InvertedCourtyardTank, InvertedCourtyardTank))
		        }
		        else {
		            instance_create(x + 16, y + 16, choose(InvertedRaven, InvertedRaven, InvertedRaven, InvertedExploder, InvertedCourtyardGuardian, InvertedGhostGuardian, InvertedCourtyardGuardian, InvertedCourtyardGuardian, InvertedCourtyardTank))
		        }
			}
		} else
		{
			if instance_number(enemy) < 1 || random(100) < 60
			{
		        if styleb = 1 {
		            instance_create(x + 16, y + 16, choose(InvertedCourtyardGuardian, InvertedCourtyardGuardian, InvertedCourtyardTank, InvertedCourtyardTank))
		        }
		        else {
					instance_create(x + 16, y + 16, choose(InvertedRaven, InvertedRaven, InvertedRaven, InvertedRaven, InvertedExploder, InvertedCourtyardGuardian, InvertedCourtyardGuardian, InvertedCourtyardGuardian, InvertedCourtyardTank))
		        }
			}
		}
    }
}

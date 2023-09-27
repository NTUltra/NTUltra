function scrPopEnemiesAlt() {
	var loops = 0;
	if instance_exists(Player)
		loops = Player.loops;
	if scrIsHardMode()//HARD MODE
		loops ++;
		
	if scrIsGamemode(45) && random(3) < 1
	{
		spawnarea = scrGetRandomArea();
	}
    //DESERT
    if spawnarea = 1 or spawnarea = 0 // or spawnarea = 100
    {
		if loops > 0 {
	        if styleb = 1 {
	            instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(InvertedGraveyardSkeleton, InvertedGraveyardBreeder, LavaBallEnemy, InvertedGraveyardSniper))
	        }
	        else {
	            if random(7) < 1
	            instance_create(x + 16, y + 16, choose(GraveyardBreeder, Salamander, LavaBallEnemy, InvertedGraveyardBreeder, InvertedGraveyardBreeder))
	            else {
	                if random(30) < 1 {
						instance_create(x,y,BigWallBreak);
	                    instance_create(x + 16, y + 16, ToxicBarrel)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, GraveyardSkeleton)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, InvertedGraveyardSkeleton)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, GraveyardSkeleton)
	                }
	                else
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(GraveyardSkeleton, GraveyardSkeleton, InvertedGraveyardSkeleton, GraveyardSkeleton, LavaBallEnemy, GraveyardSniper, InvertedGraveyardSniper, GraveyardSniper, GraveyardSniper, Salamander))
	            }
	        }
		} else {
			var theBandit = GraveyardSkeleton;
	        if (subarea > 1) {
	            theBandit = choose(GraveyardSkeleton, GraveyardSkeleton, GraveyardSkeleton, InvertedGraveyardSkeleton);
	        }
	        if styleb = 1 {
	            instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(InvertedGraveyardSniper, GraveyardBreeder, GraveyardBreeder, GraveyardSniper, InvertedGraveyardBreeder))
	        }
	        else {
	            if random(7) < 1
	            instance_create(x + 16, y + 16, choose(GraveyardBreeder, Salamander))
	            else {
	                if random(30) < 1 {
						instance_create(x,y,BigWallBreak);
	                    instance_create(x + 16, y + 16, ToxicBarrel)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, GraveyardSkeleton)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, InvertedGraveyardSkeleton)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, GraveyardSkeleton)
	                }
	                else
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(theBandit, theBandit, theBandit, theBandit, theBandit, theBandit, GraveyardSniper, Salamander))
	            }
	        }
		}
    }

    if spawnarea = 10 {
		if loops > 0
		{
			theBandit = choose(MeleeFake, MeleeFake, MeleeFake, InvertedMeleeFake, InvertedMeleeFake);
	        if styleb = 1 {
	            instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(CardGuy, Freak, Freak, CardGuy2,RhinoFreak))
	        }
	        else {
	            if random(8) < 1
				{
					repeat(2)//Pack of hyenas
					{
						instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, SquareBat)
					}
				}
	            else {
		                if random(30) < 1 {
							instance_create(x,y,BigWallBreak);
		                    instance_create(x + 16, y + 16, Barrel)
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, MeleeFake)
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, InvertedMeleeFake)
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, MeleeFake)
		                }
						else if random(25) < 1
						{
							repeat(2+irandom(2))
							{
								instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, Freak)
							}
						}
		                else
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(theBandit, theBandit, theBandit, RhinoFreak, SquareBat,CardGuy, CardGuy, CardGuy2, CardGuy2))
	            }
			}
		}
		else
		{
	        theBandit = choose(MeleeFake, MeleeFake, MeleeFake, InvertedMeleeFake, InvertedMeleeFake);
	        if styleb = 1 {
	            instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(CardGuy, Freak, Freak, CardGuy2))
	        }
	        else {
	            if random(8) < 1
				{
					repeat(2)//Pack of freaks
					{
						instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, Freak)
					}
				}
	            else {
		                if random(30) < 1 {
							instance_create(x,y,BigWallBreak);
		                    instance_create(x + 16, y + 16, Barrel)
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, MeleeFake)
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, InvertedMeleeFake)
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, MeleeFake)
		                }
						else if random(25) < 1
						{
							repeat(2+irandom(2))
							{
								instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, Freak)
							}
						}
		                else
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(theBandit, theBandit, theBandit, theBandit, CardGuy, CardGuy, CardGuy2, CardGuy2))
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
			if random(9) < 1
				instance_create(x + 16, y + 16, choose(Vulture, Vulture, GuardianDog))
	        else
	            instance_create(x + 16, y + 16, choose(Molefish, Molefish, Molefish, Molesarge, Molesarge, ExploGuardian, ExploGuardian, CubeGuardian, Spider, ExploGuardian, Spider))
		}
		else
		{
	        if random(9) < 1
				instance_create(x + 16, y + 16, choose(Vulture, Vulture))
	        else
	            instance_create(x + 16, y + 16, choose(Molefish, Molefish, Molefish, Molesarge, Molesarge, Molefish, Spider, Spider))
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
	            instance_create(x + 16, y + 16, choose(BigMaggot, InvertedSalamander, InvertedSalamander, Maggot, Crab, InvertedSquareBat, ScubaBandit))
	        }
	        else {
	            if random(9) < 1
	            instance_create(x + 16, y + 16, choose(ScubaBandit, InvertedLavaBallEnemy, ScubaBandit, InvertedLavaBallEnemy, ScubaBandit, InvertedLavaBallEnemy, InvertedSquareBat, Crab, InvertedSquareBat, InvertedSalamander))
	            else
	                instance_create(x + 16, y + 16, choose(InvertedSalamander, BigMaggot, BigMaggot, MaggotSpawn, Maggot, ExploFreak, ScubaBandit, InvertedSquareBat))
	        }
		} else {
	        if styleb = 1 {
	            instance_create(x + 16, y + 16, choose(BigMaggot, Maggot, InvertedSalamander, InvertedSalamander,InvertedSquareBat, ScubaBandit))
	        }
	        else {
	            if random(9) < 1
	            instance_create(x + 16, y + 16, choose(ScubaBandit, InvertedLavaBallEnemy, ScubaBandit, InvertedLavaBallEnemy, ScubaBandit, InvertedLavaBallEnemy, InvertedSquareBat, InvertedSalamander))
	            else
	                instance_create(x + 16, y + 16, choose(InvertedSquareBat, BigMaggot, BigMaggot, MaggotSpawn, Maggot, Maggot, ScubaBandit, InvertedSquareBat))
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
	            instance_create(x + 16, y + 16, choose(InvertedExploder, InvertedRatking, InvertedExploder, InvertedRatking, InvertedExploder, InvertedRatking, InvertedMeleeFake, InvertedBuffGator))
	            else
	                instance_create(x + 16, y + 16, choose(InvertedRat, InvertedRat, InvertedRat, InvertedRat, InvertedRat, InvertedRat, InvertedRat, BanditInverted))
	        }
		}
    }

    //SCRAPYARD
    if spawnarea = 3 {
		if loops > 0 {
			if styleb = 1 && random(2) < 1 {
				instance_create(x + 16, y + 16, choose(Necromancer, InvertedNecromancer, Ratking, LaserBandit, LaserBandit, choose(Ratking,Scorpion)))
	        }
	        else {
				if random(35) < 1
				instance_create(x + 16, y + 16, Scorpion)
	            else if random(4) < 1
	            instance_create(x + 16, y + 16, choose(Bandit, Rat, Ratking, Rat, Scorpion, Rat, choose(Ratking,Scorpion), LaserBandit, LaserBandit, Necromancer, InvertedNecromancer))
	            else {
	                if random(10) < 1 {
	                    if random(8) < 1 instance_create(x + 16, y + 16, Car)
	                    //instance_create(x+16+random(4)-2,y+16+random(4)-2,Raven)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, Rat)
	                }
	                else
	                    instance_create(x + 16, y + 16, choose(Wolf, Wolf, Rat,SavannaBandit, BanditSquare))
	            }
	        }
		} else {
			if styleb = 1 && random(2) < 1 {
				instance_create(x + 16, y + 16, choose(Bandit, Bandit, Ratking, Necromancer, InvertedNecromancer, Ratking))
	        }
	        else {
	            if random(4) < 1
	            instance_create(x + 16, y + 16, choose(Bandit, Ratking, Bandit, Rat, Bandit, Rat, Rat, LaserBandit, LaserBandit, Necromancer, InvertedNecromancer))
	            else {
	                if random(10) < 1 {
	                    if random(8) < 1 instance_create(x + 16, y + 16, Car)
	                    //instance_create(x+16+random(4)-2,y+16+random(4)-2,Raven)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, Rat)
	                }
	                else
	                    instance_create(x + 16, y + 16, choose(Wolf, Wolf, Rat,SavannaBandit, BanditSquare))
	            }
	        }
		}
    }

    //INVERTED SCRAPYARD
    if spawnarea = 106 {
		if loops > 0 {
			if styleb = 1 && random(2) < 1 {
				instance_create(x + 16, y + 16, choose(InvertedMeleeBandit, InvertedThief, InvertedSalamander, InvertedSalamander, InvertedSalamander, choose(InvertedBuffGator,InvertedSalamander)))
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
	            instance_create(x + 16, y + 16, choose(InvertedMeleeFake, InvertedThief, InvertedSalamander, InvertedSalamander, InvertedSalamander, InvertedSalamander))
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
		if loops > 0 {
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
		} else {
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
    //CAVES
    if spawnarea = 4  && (subarea == 1 || random(3) < 1){
		if loops > 0 {
			if random(10) < 1
			{
				repeat(2+irandom(2))
					instance_create(x + 12 + random(8), y + 12 + random(8), BoneFish)
			}
			else if random(10) < 1
			{
				repeat(2)
					instance_create(x + 12 + random(8), y + 12 + random(8), InvertedRat);
				
				instance_create(x + 16, y + 16, choose(FireWorm,SnowTank,InvertedSnowTank,FireWorm));
			}
	        else
	            instance_create(x + 16, y + 16, choose(InvertedPalaceGuardian, InvertedPalaceGuardian, InvertedExploGuardian, InvertedExploGuardian,FireWorm,BoneFish,SnowTank,InvertedSnowTank))
		} else {
			if random(10) < 1
			{
				repeat(2+irandom(2))
					instance_create(x + 12 + random(8), y + 12 + random(8), BoneFish)
			}
			else if random(10) < 1
			{
				repeat(2)
					instance_create(x + 12 + random(8), y + 12 + random(8), BoneFish);
				
				instance_create(x + 16, y + 16, FireWorm);
			}
	        else
	            instance_create(x + 16, y + 16, choose(InvertedPalaceGuardian, InvertedPalaceGuardian, InvertedExploGuardian, InvertedExploGuardian,FireWorm,BoneFish))
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
    if spawnarea = 111  && (subarea == 1 || random(3) < 1){
		var crystal = LightningCrystal
		if random(30) < 1//random 30
			crystal = LaserCrystal;
		if loops > 0 {
			if random(10) < 1
			{
				repeat(2+irandom(2))
					instance_create(x + 16, y + 16, InvertedSquareBat)
			}
			else if random(12) < 1
			{
				instance_create(x + 16, y + 16, InvertedSpider)
				instance_create(x + 16, y + 16, choose(InvertedSpider,InvertedSquareBat,InvertedSpider,InvertedSpider,InvertedFireBat));
			}
	        else if random(12) < 1
				instance_create(x + 16, y + 16, choose(InvertedSpider, InvertedSniper, InvertedFireWorm, InvertedFireBat))
	        else
			{
	            instance_create(x + 16, y + 16, choose(InvertedSpider, InvertedSpider, InvertedSpider, InvertedSpider,InvertedFireBat,
				crystal, crystal,InvertedSpider, InvertedSpider, InvertedSpider, InvertedSpider, crystal,InvertedSquareBat))
			}
		} else {
			if random(10) < 1
			{
				repeat(2+irandom(2))
					instance_create(x + 16, y + 16, InvertedSquareBat)
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
			{
				repeat(3)
					instance_create(x + 16, y + 16, choose(ToxicMushroomGuy, InvertedBoneFish, InvertedBoneFish, InvertedJellyFish,InvertedBoneFish,InvertedBoneFish,InvertedBoneFish,Exploder))
			}
			else if random(5) > 4
			instance_create(x + 16, y + 16, choose(BigBot, GoldenBigBot, Raven, UltraBigBot, Raven, InvertedRaven,Raven, InvertedRaven, EraserBandit, Exploder,InvertedJellyFish,ToxicMushroomGuy, Raven, InvertedRaven,EraserBandit,Exploder,EraserBandit))
			else if instance_number(enemy) < 1
			{
				instance_create(x + 16, y + 16,choose(Raven,InvertedRaven,Bandit,EraserBandit));
			}
		} else {
			if random(5) > 4
			instance_create(x + 16, y + 16, choose(BigBot, GoldenBigBot, Raven, UltraBigBot, Raven, InvertedRaven,Raven, InvertedRaven, EraserBandit, Exploder,Exploder,Exploder, Raven, InvertedRaven, Raven, InvertedRaven,EraserBandit,Exploder,EraserBandit))
			else if instance_number(enemy) < 1
			{
				instance_create(x + 16, y + 16,choose(Raven,InvertedRaven,Bandit,EraserBandit));
			}
		}
    }

    //INVERTED FROZEN CITY
    if spawnarea = 107 {
		
		if loops > 0 {
			if random(12) < 2
			instance_create(x + 16, y + 16, choose(InvertedPalaceGuardian, InvertedGuardianDog, InvertedGhostGuardian, InvertedNecromancer,InvertedSnowTank))
			else if random(4) > 3
			instance_create(x + 16, y + 16, choose(InvertedSnowBot, InvertedSnowBot, InvertedSnowBot, InvertedSnowTank, InvertedWolf, InvertedWolf, InvertedDiscGuy, BanditSquare))
			else if instance_number(enemy) < 1
			{
				instance_create(x + 16, y + 16,InvertedDiscGuy);
			}
		}
		else
		{
	        if random(3) < 2
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
	            instance_create(x + 16, y + 16, choose(InvertedSniper, Sniper, LaserCrystal, SmallUltraSniper));

	        } else {
	            var ran = random(100);
	            if ran > 90 {
	                instance_create(x + 16, y + 16, InvertedSniper)
	            }
	            else if ran > 80 {
	                instance_create(x + 16, y + 16, choose(CursedWallBot, CursedSquareBot, LaserCrystal))
	            }
	            else if ran > 70 && !place_meeting(x, y, Sniper) {
	                instance_create(x + 16, y + 16, Sniper);
	                instance_create(x + 16, y + 16, NOWALLSHEREPLEASE);
	            }
				else if ran > 65 {
					instance_create(x + 16, y + 16, choose(CursedWallBot, LaserCrystal));
				}
				else if instance_number(enemy) < 1
				{
					instance_create(x + 16, y + 16,Sniper);
				}
	        }
		} else {
	        if subarea = 2 {
	            if random(22) < 1
	            instance_create(x + 16, y + 16, choose(InvertedSniper, CursedWallBot, CursedSquareBot));

	        } else {
	            var ran = random(100);
	            if ran > 90 {
	                instance_create(x + 16, y + 16, InvertedSniper)
	            }
	            else if ran > 80 {
	                instance_create(x + 16, y + 16, choose(CursedWallBot, CursedSquareBot))
	            }
	            else if ran > 70 && !place_meeting(x, y, Sniper) {
	                instance_create(x + 16, y + 16, Sniper);
	                instance_create(x + 16, y + 16, NOWALLSHEREPLEASE);
	            }
				else if instance_number(enemy) < 1
				{
					instance_create(x + 16, y + 16,Sniper);
				}
	        }
		}

    }

    //INVERTED LABS
    if spawnarea = 112 {
		if loops > 0 {
	        if subarea = 2 {
	            if random(22) < 1
	            instance_create(x + 16, y + 16, choose(InvertedFreak, InvertedFreak, InvertedFreak, InvertedFreak, InvertedTurret, InvertedRhinoFreak,InvertedCubeGuardian,InvertedRatking));

	        } else {
	            var ran = random(100);
	            if ran > 90 {
	                repeat(9)//10
	                instance_create(x + 12 + random(8), y + 12 + random(8), choose(InvertedFreak, InvertedFreak, InvertedFreak, InvertedFreak, InvertedFreak, 
					InvertedFreak, InvertedFreak, InvertedFreak, InvertedFreak, InvertedFreak, InvertedExploFreak, InvertedExploFreak, InvertedRhinoFreak, InvertedFreak, InvertedFreak, InvertedFreak))
	            }
	            else if ran > 80 {
	                instance_create(x + 16, y + 16, choose(InvertedNecromancer, InvertedNecromancer, InvertedNecromancer, InvertedExploFreak, 
					InvertedRhinoFreak, InvertedNecromancer, InvertedNecromancer))
	            }
	            else if ran > 70 && !place_meeting(x, y, InvertedTurret) {
	                instance_create(x + 16, y + 16, InvertedTurret);
	                instance_create(x + 16, y + 16, NOWALLSHEREPLEASE);
	            }
				else if ran > 65 {
					instance_create(x + 16, y + 16, choose(InvertedRatking, InvertedCubeGuardian));
				}
				else if instance_number(enemy) < 1
				{
					instance_create(x + 16, y + 16,InvertedTurret);
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
	            if ran > 90 {
	                repeat(10)
	                instance_create(x + 12 + random(8), y + 12 + random(8), choose(InvertedFreak, InvertedFreak, InvertedFreak, InvertedFreak, InvertedFreak, InvertedFreak,
	                    InvertedFreak, InvertedFreak, InvertedFreak, InvertedFreak, InvertedExploFreak, InvertedExploFreak, InvertedRhinoFreak, InvertedFreak, InvertedFreak, InvertedFreak))
	            }
	            else if ran > 80 {
	                instance_create(x + 16, y + 16, choose(InvertedNecromancer, InvertedNecromancer, InvertedNecromancer, InvertedExploFreak, InvertedRhinoFreak, InvertedNecromancer, InvertedNecromancer))
	            }
	            else if ran > 70 && !place_meeting(x, y, InvertedTurret) {
	                instance_create(x + 16, y + 16, InvertedTurret);
	                instance_create(x + 16, y + 16, NOWALLSHEREPLEASE);
	            }
				else if instance_number(enemy) < 1
				{
					instance_create(x + 16, y + 16,InvertedTurret);
				}
	        }
		}
    }

    //VULCANO
    if spawnarea = 7{
		if (instance_exists(Player) && Player.subarea != 3 || random(7) < 1)
		{
			if loops > 0
			{
				if styleb = 1 //b style
		        {
		            if random(5) < 1 {
		                instance_create(x + 12 + random(8), y + 12 + random(8), choose(Jock, Jock, InvertedJock, SquareBat, SquareBat,TeaPot,InvertedTeaPot,Hyena,InvertedRhinoFreak,Turret,InvertedTurret))
		            }
		            else if random(7) < 1
						repeat(1+irandom(2))
							instance_create(x + 12 + random(8), y + 12 + random(8), Hyena)
					else if instance_number(enemy) < 1
					{
						instance_create(x + 16, y + 16,Jock);
					}
		        } else //a style
		        {
		            if random(8) < 1 {
		                repeat(1+irandom(2))
							instance_create(x + 12 + random(8), y + 12 + random(8), Hyena)
		            }
		            else if random(3) < 1
						instance_create(x + 16, y + 16, choose(Jock, Jock, InvertedJock, SquareBat, SquareBat,TeaPot,InvertedTeaPot,Hyena))
					else if instance_number(enemy) < 1
					{
						instance_create(x + 16, y + 16,Jock);
					}
		        }
			}
			else
			{
		        if styleb = 1 //b style
		        {
		            if random(4) < 1 {
		                instance_create(x + 12 + random(8), y + 12 + random(8), choose(Jock, Jock, InvertedJock, SquareBat, SquareBat,TeaPot,InvertedTeaPot,Hyena))
		            }
		            else if random(7) < 1
						repeat(1+irandom(2))
							instance_create(x + 12 + random(8), y + 12 + random(8), Hyena)
					else if instance_number(enemy) < 1
					{
						instance_create(x + 16, y + 16,Jock);
					}
		        } else //a style
		        {
		            if random(8) < 1 {
						repeat(1+irandom(2))
							instance_create(x + 12 + random(8), y + 12 + random(8), Hyena)
		            }
		            else if random(3) < 1
						instance_create(x + 16, y + 16, choose(Jock, Jock, InvertedJock, SquareBat, SquareBat,TeaPot,InvertedTeaPot,Hyena))
					else if instance_number(enemy) < 1
					{
						instance_create(x + 16, y + 16,Jock);
					}
		        }
			}
		}
		else if instance_number(enemy) < 1
		{
			instance_create(x + 16, y + 16,Jock);
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
						instance_create(x + 16, y + 16, choose(InvertedFireWorm, Thief, InvertedFireWorm, InvertedFireBat, BanditInverted, BanditSquare, InvertedWolf, InvertedFireWorm,InvertedFireBaller,InvertedScubaBandit))
					else if instance_number(enemy) < 1
					{
						instance_create(x + 16, y + 16,InvertedLavaBallEnemy);
					}
		        } else //a style
		        {
		            if random(5) < 1 {
		                if instance_exists(Player) {
		                    repeat(1+irandom(2))
								instance_create(x + 12 + random(8), y + 12 + random(8), choose(InvertedFireBat, InvertedLavaBallEnemy, InvertedLavaBallEnemy, InvertedFireWorm, InvertedFireBat, InvertedSalamander, 
							BanditInverted, BanditSquare,InvertedFireBaller))
		                }
		                else { //dead Player
		                    repeat(2)
		                    instance_create(x + 12 + random(8), y + 12 + random(8), choose(InvertedFireBat, InvertedLavaBallEnemy, InvertedLavaBallEnemy, InvertedFireWorm, InvertedFireBat, InvertedSalamander, 
							InvertedSalamander, BanditInverted, BanditSquare))
		                }
		            }
		            else if random(2) < 1
						instance_create(x + 16, y + 16, choose(InvertedFireBat, InvertedFireBat, InvertedLavaBallEnemy, InvertedFireWorm, InvertedFireWorm, InvertedWolf, InvertedSalamander,InvertedSuperFireBaller,InvertedScubaBandit))
					else if instance_number(enemy) < 1
					{
						instance_create(x + 16, y + 16,InvertedLavaBallEnemy);
					}
		        }
			}
			else
			{
		        if styleb = 1 //b style
		        {
		            if random(4) < 1 {
		                instance_create(x + 12 + random(8), y + 12 + random(8), choose(InvertedLavaBallEnemy, InvertedFireWorm, InvertedFireWorm, InvertedFireWorm, InvertedLavaBallEnemy, InvertedSalamander))
		            }
		            else if random(7) < 1
		            instance_create(x + 16, y + 16, choose(FireWorm, Thief, InvertedFireWorm, InvertedFireBat, BanditInverted, BanditSquare, InvertedFireWorm, InvertedFireWorm))
					else if instance_number(enemy) < 1
					{
						instance_create(x + 16, y + 16,InvertedLavaBallEnemy);
					}
		        } else //a style
		        {
		            if random(5) < 1 {
		                if instance_exists(Player) {
		                    repeat(1+irandom(2))
		                        instance_create(x + 12 + random(8), y + 12 + random(8), choose(InvertedFireBat, InvertedLavaBallEnemy, InvertedLavaBallEnemy, InvertedFireWorm, InvertedFireBat, InvertedSalamander, BanditInverted, BanditSquare))
		                }
		                else { //dead Player
		                    repeat(2)
		                    instance_create(x + 12 + random(8), y + 12 + random(8), choose(InvertedFireBat, InvertedLavaBallEnemy, InvertedLavaBallEnemy, InvertedFireWorm, InvertedFireBat, InvertedSalamander, 
							InvertedSalamander, BanditInverted, BanditSquare))
		                }
		            }
		            else if random(2) < 1
						instance_create(x + 16, y + 16, choose(InvertedFireBat, InvertedFireBat, InvertedLavaBallEnemy, InvertedFireWorm, InvertedFireWorm, InvertedFireWorm, InvertedSalamander))
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
                if !instance_exists(BecomeInvertedJungleBoss) {
                    instance_create(x + 16, y + 16, BecomeInvertedJungleBoss);
                }
				else if loops > 0 && random(8) < 1
				{
	                instance_create(x + 16, y + 16, choose(InvertedGuardianDog, InvertedExploGuardian, BanditSquare, Thief, GoldenOctaBot,GoldenWallBot,GoldenSquareBot,ExplosiveSheep, ExplosiveSheep))
				}
				else if random(10) < 1
				{
					instance_create(x + 16, y + 16, choose(InvertedExploGuardian, InvertedExploGuardian, BanditSquare, Thief, GoldenOctaBot,GoldenWallBot,GoldenSquareBot,ExplosiveSheep, ExplosiveSheep))
				}

            } else 
			{
				if loops > 0
				{
					if styleb = 1 {
	                    if random(3) < 1
							instance_create(x + 16, y + 16, choose(InvertedGuardianDog, InvertedExploGuardian, BanditSquare, Thief, GoldenOctaBot,GoldenWallBot,GoldenSquareBot,ExplosiveSheep, ExplosiveSheep))
	                }
	                else {
	                    if random(8) < 1
	                    instance_create(x + 16, y + 16, choose(InvertedGuardianDog, InvertedExploGuardian, BanditSquare, Thief))
	                    else if random(4) < 2.5 {
	                        instance_create(x + 16, y + 16, choose(InvertedExploGuardian, InvertedExploGuardian, InvertedExploGuardian, BanditSquare, BanditSquare, BanditSquare, Thief, Sheep,GoldenOctaBot,GoldenWallBot,GoldenSquareBot,))
	                    }
						else if instance_number(enemy) < 1
						{
							instance_create(x + 16, y + 16,Thief);
						}
	                }
				}
				else
				{
	                if styleb = 1 {
	                    if random(3) < 1
							instance_create(x + 16, y + 16, choose(InvertedGuardianDog, InvertedExploGuardian, BanditSquare, Thief,ExplosiveSheep, ExplosiveSheep))
	                }
	                else {
	                    if random(8) < 1
	                    instance_create(x + 16, y + 16, choose(InvertedGuardianDog, InvertedExploGuardian, BanditSquare, Thief))
	                    else if random(4) < 2.5 {
	                        instance_create(x + 16, y + 16, choose(InvertedExploGuardian, InvertedExploGuardian, InvertedExploGuardian, BanditSquare, BanditSquare, BanditSquare, Thief, Sheep))
	                    }
						else if instance_number(enemy) < 1
						{
							instance_create(x + 16, y + 16,Thief);
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
        instance_create(x + 16, y + 16, Gator)
    }


    //VENUZ AIRHORN.WAV its OGG now..
    if spawnarea = 103 {
		if loops > 0
		{
			if random(5) < 1
				instance_create(x + 16, y + 16, choose(LightningCrystal, LightningCrystal, LightningCrystal, Crystal, Crystal, JellyFish,InvertedBuffMushroom,InvertedBuffMushroom,InvertedToxicMushroom))
	        else if random(4) < 1 {
	            if random(5) < 1 && instance_exists(Player) {
	                if point_distance(x, y, Player.x, Player.y) > 64
	                instance_create(x + 16, y + 16, GoldBarrel)
	            }
	            repeat(2)
	            instance_create(x + 16, y + 16, choose(JungleBandit, JungleBandit, InvertedFireBat, JellyFish, JellyFish, InvertedFireBat, InvertedToxicMushroom,InvertedHyena,InvertedHyena))
	        }
		}
		else
		{
	        if random(5) < 1
	        instance_create(x + 16, y + 16, choose(LightningCrystal, LightningCrystal, LightningCrystal, Crystal, Crystal, JellyFish))
	        else if random(4) < 1 {
	            if random(5) < 1 && instance_exists(Player) {
	                if point_distance(x, y, Player.x, Player.y) > 64
	                instance_create(x + 16, y + 16, GoldBarrel)
	            }
	            repeat(2)
	            instance_create(x + 16, y + 16, choose(JungleBandit, JungleBandit, InvertedFireBat, JellyFish, JellyFish, InvertedFireBat))
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
		            instance_create(x + 16, y + 16, choose(JungleAssassinFake, JungleAssassinFake, JungleAssassinFake, JungleAssassinFake, JungleAssassinFake, JungleFly,BigMaggot,FireWorm,Maggot,FireWorm))
		        }
		        else {
		            if random(4) < 1
						instance_create(x + 16, y + 16, choose(JungleAssassin, JungleBandit, JungleAssassinFake, JungleAssassinFake, JungleAssassinFake, JungleBandit, JungleBandit, FireWorm, Scorpion, BigMaggot, JungleFly,Maggot))
		            else {
		                if random(30) < 1 {
							instance_create(x,y,BigWallBreak);
		                    instance_create(x + 16, y + 16, Barrel)
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, JungleBandit)
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, JungleBandit)
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, JungleBandit)
		                }
		                else {
		                    instance_create(x + 16, y + 16, choose(JungleFly, FireBat, FireBat, FireBat, FireBat, FireBat, BuffMushroom, BuffMushroom, Scorpion, BigMaggot, FireWorm, Scorpion,Maggot,FireWorm));
		                }
		            }
		        }
			}
		}
		else if subarea != 2 || random(2) < 1
		{
	        if styleb = 1 && random(2) < 1 {
	            instance_create(x + 16, y + 16, choose(InvertedGator, InvertedGator, BuffGator, BuffGator, CourtyardGuardian,InvertedCourtyardGuardian,InvertedCourtyardGuardian))
	        }
	        else {
	            if random(4) < 1
	            instance_create(x + 16, y + 16, choose(BuffGator, InvertedScubaBandit, BuffGator, BuffGator, InvertedGator, InvertedScubaBandit, InvertedScubaBandit, InvertedScubaBandit, InvertedScubaBandit, InvertedScubaBandit, CourtyardGuardian,InvertedCourtyardGuardian))
	            else {
	                if random(30) < 1 {
						instance_create(x,y,BigWallBreak);
	                    instance_create(x + 16, y + 16, Barrel)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, InvertedScubaBandit)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, InvertedScubaBandit)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, InvertedScubaBandit)
	                }
	                else {
	                    instance_create(x + 16, y + 16, choose(CourtyardGuardian, CourtyardGuardian, FireBat, FireBat, FireBat, InvertedScubaBandit, InvertedScubaBandit, InvertedScubaBandit, FireBat, FireBat, BuffMushroom, BuffMushroom));
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
		            instance_create(x + 16, y + 16, choose(InvertedJungleAssassinFake, InvertedJungleAssassinFake, InvertedJungleAssassinFake, InvertedJungleAssassinFake, InvertedJungleAssassinFake, InvertedJungleFly,BigMaggotInverted,InvertedSniper,MaggotInverted))
		        }
		        else {
		            if random(4) < 1
		            instance_create(x + 16, y + 16, choose(InvertedJungleAssassin, InvertedJungleBandit, InvertedJungleAssassinFake, InvertedJungleAssassinFake, InvertedJungleAssassinFake, InvertedJungleBandit, InvertedJungleBandit, InvertedMolefish, InvertedScorpion, BigMaggotInverted, InvertedJungleFly,MaggotInverted))
		            else {
		                if random(30) < 1 {
							instance_create(x,y,BigWallBreak);
		                    instance_create(x + 16, y + 16, Barrel)
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, InvertedJungleBandit)
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, InvertedJungleBandit)
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, InvertedJungleBandit)
		                }
		                else {
		                    instance_create(x + 16, y + 16, choose(InvertedJungleFly, InvertedJungleBandit, InvertedJungleBandit, InvertedJungleBandit, InvertedJungleBandit, InvertedJungleBandit, InvertedJungleBandit, InvertedJungleBandit, InvertedScorpion, BigMaggotInverted, InvertedSniper, InvertedScorpion,MaggotInverted));
		                }
		            }
		        }
			}
		}
		else if subarea != 2 || random(2) < 1
		{
	        if styleb = 1 && random(2) < 1 {
	            instance_create(x + 16, y + 16, choose(InvertedJungleAssassinFake, InvertedJungleAssassinFake, InvertedJungleAssassinFake, InvertedJungleAssassinFake, InvertedJungleAssassinFake, InvertedJungleFly,BigMaggotInverted,BigMaggotInverted))
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
	                    instance_create(x + 16, y + 16, choose(InvertedJungleFly, InvertedJungleBandit, InvertedJungleBandit, InvertedJungleBandit, InvertedJungleBandit, InvertedJungleBandit, InvertedJungleBandit, InvertedJungleBandit, InvertedJungleBandit, InvertedJungleBandit, InvertedJungleBandit, InvertedJungleBandit));
	                }
	            }
	        }
		}
    }
	
	//MUSHROOM LAND
    if spawnarea = 117 {
		if loops > 0
		{
		    if random(9) < 1
				instance_create(x + 16, y + 16, choose(SnowBot, SnowBot, SnowBot, SnowTank, JungleAssassinFake, SnowTank, JungleBandit, JungleBandit,WallBot, SquareBot, OctaBot))
		    else if random(2) < 1
		        instance_create(x + 16, y + 16, choose(SnowBot, SnowBot, JungleAssassinFake, JungleAssassinFake, JungleAssassinFake, JungleBandit, JungleBandit, JungleBandit,JungleBandit,WallBot, SquareBot,OctaBot))
		}
		else
		{
			if random(9) < 1
				instance_create(x + 16, y + 16, choose(SnowBot, SnowBot, SnowBot, SnowTank, JungleAssassinFake, SnowTank, JungleBandit, JungleBandit))
		    else if random(2) < 1
		        instance_create(x + 16, y + 16, choose(SnowBot, SnowBot, JungleAssassinFake, JungleAssassinFake, JungleAssassinFake, JungleBandit, JungleBandit, JungleBandit,JungleBandit))	
		}
    }
	//Inverted Mushroom
	if spawnarea = 124 {
		if loops > 0
		{
			//TODO replace exploders with something else since they dont make all that much sense in non toxic enviroment here
		    if random(9) < 1
		    instance_create(x + 16, y + 16, choose(InvertedRat, InvertedBuffMushroom, InvertedToxicMushroomGuy, InvertedBuffMushroom, InvertedRatking, InvertedToxicMushroomGuy, InvertedBanditSquare,InvertedNecromancer, InvertedBuffGator))
		    else if random(2) < 1
		        instance_create(x + 16, y + 16, choose(InvertedRatking, InvertedSquareBat, InvertedToxicMushroomGuy, InvertedBuffMushroom, InvertedBuffMushroom, InvertedToxicMushroomGuy, InvertedToxicMushroomGuy, InvertedBanditSquare,InvertedRat,InvertedNecromancer,InvertedFireBat,LightningCrystal,EraserBandit))
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
		if loops > 0
		{
		    var r = random(10);
			if r > 6
			{
				instance_create(x + 16, y + 16, choose(CursedCrystal,CursedSpider,InvertedGator,InvertedSnowTank))
			}
			if r > 3
			{
				instance_create(x + 16, y + 16, choose(CursedBigBot,CursedCrystal,InvertedSnowTank))
			}
		    else
			{
		        instance_create(x + 16, y + 16, choose(CursedSpider,CursedOctaBot,CursedOctaBot,CursedOctaBot,CursedSpider,CursedSpider,InvertedGator,InvertedBanditSquare,InvertedBanditSquare))
			}
		}
		else
		{
			var r = random(10);
			if r > 6
			{
				instance_create(x + 16, y + 16, choose(CursedCrystal,CursedSpider))
			}
			if r > 3
			{
				instance_create(x + 16, y + 16, choose(CursedBigBot,CursedCrystal))
			}
		    else
			{
		        instance_create(x + 16, y + 16, choose(CursedSpider,CursedOctaBot,CursedOctaBot,CursedOctaBot,CursedSpider,CursedSpider))
			}
		}
    }
	//INVERTED GRAVEYARD
    else if spawnarea = 127 {
		if loops > 0
		{
		    var r = random(10);
			if r > 8
			{
				instance_create(x + 16, y + 16, choose(SmallUltraSniper,InvertedRatking,SmallUltraSniper,InvertedRatking,choose(InvertedBuffMushroom, InvertedBuffGator)))
			}
			if r > 4
			{
				repeat(2)
				instance_create(x + 16, y + 16, choose(InvertedRat))
			}
		    else
			{
		        instance_create(x + 16, y + 16, choose(Turtle,Turtle,InvertedRatking,Gator,GatorSmoke,GatorSmoke,Sniper,InvertedBuffGator,InvertedBuffMushroom))
			}
		}
		else
		{
			var r = random(10);
			if r > 7
			{
				instance_create(x + 16, y + 16, choose(SmallUltraSniper,InvertedRatking))
			}
			if r > 4
			{
				repeat(choose(1,1,2))
				instance_create(x + 16, y + 16, choose(InvertedRat))
			}
		    else
			{
		        instance_create(x + 16, y + 16, choose(Turtle,Turtle,InvertedRatking,Gator,GatorSmoke,GatorSmoke,Sniper))
			}
		}
    }
	
	//FACTORY
    if spawnarea = 130 || spawnarea == 131 || spawnarea == 132 || spawnarea == 133 || spawnarea == 134 {
		var octaBot = SuperFireBaller;
		var squareBot = BigMaggotInverted;
		var wallBot = BuffMushroom;
		var bigBot = InvertedSuperFireBaller;
		var sniper = Sniper;
		var palaceGuardian = InvertedRhinoFreak;
		if spawnarea == 131 // inverted
		{
			octaBot = MeleeFake;
			squareBot = JungleAssassinFake;
			wallBot = InvertedMeleeFake;
			bigBot = UltraMeleeFake;
			sniper = InvertedJungleAssassinFake;
			palaceGuardian = InvertedGuardianDog;
		}
		else if spawnarea == 132 //Cursed
		{
			octaBot = InvertedTurret;
			squareBot = GraveyardBreeder;
			wallBot = Necromancer;
			bigBot = CursedCrystal;
			sniper = InvertedExploFreak;
			palaceGuardian = GraveyardSniper;
		} else if spawnarea == 133 // Golden
		{
			octaBot = SquareBat;
			squareBot = InvertedSquareBat;
			wallBot = InvertedCourtyardGuardian;
			bigBot = ToxicMushroomGuy;
			sniper = InvertedExploder;
			palaceGuardian = CourtyardGuardian;
		} else if spawnarea == 134 //Ultra
		{
			octaBot = UltraRaven;
			squareBot = CubeGuardian;
			wallBot = GhostGuardian;
			bigBot = UltraSalamander;
			palaceGuardian = SmallUltraSniper;
		}
		if loops > 0
		{
		    var r = random(10);
			if r > 8
			{
				instance_create(x + 16, y + 16, choose(octaBot,squareBot,wallBot,bigBot))
			}
			if r > 4
			{
				instance_create(x + 16, y + 16, choose(octaBot,squareBot,wallBot,sniper,palaceGuardian))
			}
		    else if r > 1 || instance_number(enemy) < 1
			{
		        instance_create(x + 16, y + 16, choose(octaBot,squareBot,wallBot))
			}
		}
		else
		{
			var r = random(10);
			if r > 7
			{
				instance_create(x + 16, y + 16, choose(octaBot,squareBot,wallBot,bigBot))
			}
			if r > 4
			{
				instance_create(x + 16, y + 16, choose(octaBot,squareBot,wallBot))
			}
		    else if r > 1 || instance_number(enemy) < 1
			{
		        instance_create(x + 16, y + 16, choose(octaBot,squareBot,wallBot))
			}
		}
    }
	if spawnarea == 135/* && subarea != 3 */{
	    var ran = random(100);
	    if ran > 80 {
	        instance_create(x + 16, y + 16, choose(BanditBoss, InvertedBanditBoss, Bandit, Bandit, Bandit))
	    } else if ran > 10{
			instance_create(x + 16, y + 16, choose(Exploder, Exploder, InvertedExploder, InvertedExploder, ExploFreak, InvertedExploFreak))
		}
    }

	//PALACE
    if spawnarea == 9 {
		if loops > 0 {
			if styleb = 1 && random(8) < 2 {
	            instance_create(x + 16, y + 16, choose(GuardianDog, GhostGuardian,PalaceGuardian))
	        } else {
	            var ran = random(100);
	            if ran > 75 {
	                instance_create(x + 16, y + 16, choose(PalaceGuardian, PalaceGuardian, ExploGuardian, ExploGuardian, GhostGuardian, GuardianDog, CubeGuardian))
	            } else if ran > 55 {
					instance_create(x + 16, y + 16, choose(Sniper, JungleBandit, ExploFreak))
				}
				else if instance_number(enemy) < 1
				{
					instance_create(x + 16, y + 16,PalaceGuardian);
				}
	        }
		} else {
			if styleb = 1 && random(8) < 2 {
	            instance_create(x + 16, y + 16, choose(InvertedCourtyardTank,CourtyardTank,CourtyardTank, InvertedCourtyardTank))
	        } else {
	            var ran = random(100);

	            if ran > 75 {
					repeat(2 + irandom(2))
					instance_create(x + 12 + random(8), y + 12 + random(8),choose(Crab,Scorpion,InvertedCrab,InvertedScorpion));
	            }
				else if instance_number(enemy) < 1
				{
					instance_create(x + 16, y + 16, choose(Crab, Scorpion, InvertedScorpion, InvertedCrab, CourtyardTank, InvertedCourtyardTank,CourtyardTank, InvertedCourtyardTank))
				}
	        }
		}
    }
	if spawnarea == 118 {//Inverted palace
		if loops > 0 {
			if styleb = 1 && random(7) < 2 {
	            instance_create(x + 16, y + 16, choose(InvertedGuardianDog, InvertedGhostGuardian,InvertedPalaceGuardian))
	        } else {
	            var ran = random(100);
	            if ran > 70 {
	                instance_create(x + 16, y + 16, choose(InvertedPalaceGuardian, InvertedPalaceGuardian, InvertedExploGuardian, InvertedExploGuardian, InvertedGhostGuardian, InvertedGuardianDog, InvertedCubeGuardian))
	            } else if ran > 50 {
					instance_create(x + 16, y + 16, choose(InvertedExploFreak, InvertedBuffMushroom, InvertedJungleBandit))
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

	            if ran > 70 {
	                instance_create(x + 16, y + 16, choose(InvertedPalaceGuardian, InvertedPalaceGuardian, InvertedExploGuardian, InvertedCubeGuardian, InvertedGhostGuardian, InvertedGuardianDog))
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
		else {
			if spawnarea == 119
				instance_create(x + 16, y + 16,PalaceGuardian);
			else
				instance_create(x + 16, y + 16,InvertedExploGuardian);
		}
	}
	//Crown Courtyard
    if spawnarea = 128 {
		if loops > 0 {
			if instance_number(enemy) < 1 || random(100) < 60
			{
		        if styleb = 1 {
		            instance_create(x + 16, y + 16, choose(InvertedFireWorm, GhostGuardian, EnemyCrownOfPopo,SmallUltraSniper))
		        }
		        else {
		            instance_create(x + 16, y + 16, choose(FireBaller, FireBaller, SuperFireBaller, InvertedFireWorm, UltraOctaBot, UltraWallBot, UltraSquareBot))
		        }
			}
		} else
		{
			if instance_number(enemy) < 1 || random(100) < 60
			{
		        if styleb = 1 {
		            instance_create(x + 16, y + 16, choose(InvertedFireWorm, InvertedFireWorm, EnemyCrownOfPopo, EnemyCrownOfCurses))
		        }
		        else {
					instance_create(x + 16, y + 16, choose(FireBaller, FireBaller, FireBaller, SuperFireBaller, InvertedFireWorm, UltraOctaBot, UltraWallBot, UltraSquareBot))
		        }
			}
		}
    }
	if spawnarea == 129{
		if loops > 0 {
			if instance_number(enemy) < 1 || random(100) < 60
			{
		        if styleb = 1 {
		            instance_create(x + 16, y + 16, choose(FireWorm, LaserCrystal, InvertedGhostGuardian, EnemyCrownOfPopo,SmallUltraSniper))
		        }
		        else {
		            instance_create(x + 16, y + 16, choose(InvertedFireBaller, InvertedFireBaller, InvertedSuperFireBaller, FireWorm, InvertedOctaBot, InvertedWallBot, InvertedSquareBot))
		        }
			}
		} else
		{
			if instance_number(enemy) < 1 || random(100) < 60
			{
		        if styleb = 1 {
		            instance_create(x + 16, y + 16, choose(FireWorm, LaserCrystal, EnemyCrownOfPopo, EnemyCrownOfCurses))
		        }
		        else {
					instance_create(x + 16, y + 16, choose(InvertedFireBaller, InvertedFireBaller, InvertedFireBaller, InvertedSuperFireBaller, FireWorm, InvertedOctaBot, InvertedWallBot, InvertedSquareBot))
		        }
			}
		}
    }
}

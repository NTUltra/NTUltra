function scrPopEnemiesAlt() {
	var loops = 0;
	var subarea = 1;
	if instance_exists(Player)
	{
		loops = Player.loops;
		subarea = Player.subarea;
	}
	if scrIsHardMode()//HARD MODE
		loops ++;
		
	if scrIsGamemode(45) && random(3) < 1
	{
		if spawnarea != 100 || random(5) < 1
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
	//SAVANNA
    if spawnarea == 10 {
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
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(theBandit, theBandit, theBandit, RhinoFreak, SquareBat,CardGuy, CardGuy, CardGuy2, CardGuy2,Necromancer))
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
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(theBandit, theBandit, theBandit, theBandit, CardGuy, CardGuy, CardGuy2, CardGuy2,Necromancer))
	            }
			}
        }
    }
	if spawnarea = 121 {//Inverted savanna
		if loops > 0
		{
			theBandit = choose(MaggotInverted, Raven, BanditInverted, BanditInverted, InvertedBanditSquare);
	        if styleb = 1 {
	            instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(JungleGorilla, TeaPot, MaggotInverted,  MaggotInverted, Sniper))
	        }
	        else {
	            if random(8) < 1
				{
					repeat(2)//Pack of hyenas
					{
						instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, MaggotInverted)
					}
				}
	            else {
		                if random(30) < 1 {
		                    instance_create(x + 16, y + 16, MaggotSpawn)
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, MaggotInverted)
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, MaggotInverted)
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, MaggotInverted)
		                }
						else if random(25) < 1
						{
							repeat(2+irandom(2))
							{
								instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, MaggotInverted)
							}
						}
		                else
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(theBandit, theBandit, Raven, Sniper, JungleGorilla, JungleGorilla, TeaPot, TeaPot,InvertedCardGuy2))
	            }
			}
		}
		else
		{
	        theBandit = choose(MaggotInverted, MaggotInverted, BanditInverted, BanditInverted, InvertedBanditSquare);
	        if styleb = 1 {
	            instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(JungleGorilla, TeaPot, MaggotInverted, MaggotInverted))
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
		                    instance_create(x + 16, y + 16, MaggotSpawn)
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, MaggotInverted)
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, MaggotInverted)
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, MaggotInverted)
		                }
						else if random(25) < 1
						{
							repeat(2+irandom(2))
							{
								instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, MaggotInverted)
							}
						}
		                else
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(theBandit, theBandit, theBandit, theBandit, TeaPot, TeaPot, JungleGorilla, JungleGorilla))
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
			{
				repeat(2)
					instance_create(x + 16, y + 16, InvertedHyena)
			}
	        else
	            instance_create(x + 16, y + 16, choose(InvertedRat, InvertedRat, InvertedHyena, InvertedRat, InvertedRatking, InvertedRatking, InvertedRat, SavannaBandit, SavannaBandit, InvertedCubeGuardian))
		}
		else
		{
	        if random(10) < 1
			{
				repeat(2)
					instance_create(x + 16, y + 16, InvertedHyena)
			}
	        else
	            instance_create(x + 16, y + 16, choose(InvertedRat, InvertedRat, InvertedHyena, InvertedRat, InvertedRatking, InvertedRatking, InvertedRat, InvertedRat))
		}

    }

    if spawnarea == 105 //inverted desert
    {
		if loops > 0
		{
			if styleb = 1 {
	            instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(InvertedExploder, InvertedExploder, InvertedExploder, Exploder, ToxicMushroom, InvertedJellyFish,LavaBallEnemy,CourtyardGuardian,InvertedBoneFish))
	        }
	        else {
	            if random(7) < 1
	            instance_create(x + 16, y + 16, choose(InvertedExploder, InvertedExploder,InvertedPalaceGuardian,CourtyardGuardian,Crystal))
	            else {
	                if random(30) < 1 {
						instance_create(x,y,BigWallBreak);
	                    instance_create(x + 16, y + 16, ToxicBarrel)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, Exploder)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, Exploder)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, Exploder)
	                }
	                else
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(Exploder, Exploder, Exploder, InvertedJellyFish, InvertedJellyFish, ToxicMushroom, ToxicMushroom,InvertedPalaceGuardian,LavaBallEnemy,CourtyardGuardian,InvertedBoneFish))
	            }
	        }
		}
		else
		{
	        if styleb = 1 {
	            instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(InvertedExploder, InvertedExploder, InvertedExploder, Exploder, ToxicMushroom, InvertedJellyFish,InvertedBoneFish))
	        }
	        else {
	            if random(7) < 1
	            instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(InvertedExploder, InvertedExploder,InvertedPalaceGuardian))
	            else {
	                if random(30) < 1 {
						instance_create(x,y,BigWallBreak);
	                    instance_create(x + 16, y + 16, ToxicBarrel)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, Exploder)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, Exploder)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, Exploder)
	                }
	                else if random(10) < 1 {
	                    instance_create(x + 16 + random(4), y + 16 + random(4), choose(Exploder, Exploder, Exploder, Exploder, InvertedJellyFish, ToxicMushroom,InvertedBoneFish))
	                    instance_create(x + 16 + random(4), y + 16 + random(4), choose(Exploder, Exploder, Exploder, Exploder, InvertedJellyFish, ToxicMushroom,InvertedBoneFish))
	                }
					else
						instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(Exploder, Exploder, Exploder, InvertedJellyFish, InvertedJellyFish, ToxicMushroom, ToxicMushroom,InvertedPalaceGuardian,InvertedBoneFish))
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
	            instance_create(x + 16, y + 16, choose(Turret,JungleBandit,InvertedMeleeFake,SquareBat,InvertedGator))
	        }
	        else {
	            if random(9) < 1
	            instance_create(x + 16, y + 16, choose(Turret,JungleBandit,InvertedMeleeFake,InvertedGator))
	            else
	                instance_create(x + 16, y + 16, choose(ScubaBandit,ScubaBandit,InvertedScubaBandit,InvertedScubaBandit,InvertedMeleeFake,SquareBat,InvertedGator,Bandit))
	        }
		} else {
	        if styleb = 1 {
	            instance_create(x + 16, y + 16, choose(Turret,JungleBandit))
	        }
	        else {
	            if random(9) < 1
	            instance_create(x + 16, y + 16, choose(Turret,JungleBandit))
	            else
	                instance_create(x + 16, y + 16, choose(ScubaBandit,ScubaBandit,InvertedScubaBandit,InvertedScubaBandit,Bandit))
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
				instance_create(x + 16, y + 16, choose(Scorpion,InvertedCloudShooter))
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
				instance_create(x + 16, y + 16, choose(InvertedJungleBandit,InvertedTurret,InvertedJungleGorilla,FireBat,Freak))
	        }
	        else {
				if random(35) < 1
					instance_create(x + 16, y + 16, InvertedGoldScorpion)
	            else if random(4) < 1
					instance_create(x + 16, y + 16, choose(InvertedJungleBandit,InvertedTurret,InvertedJungleGorilla,FireBat,Scorpion,DiscGuy,Scorpion));
	            else {
	                if random(10) < 1 {
	                    if random(8) < 1 instance_create(x + 16, y + 16, Car)
							instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, InvertedJungleBandit)
	                }
	                else
	                    instance_create(x + 16, y + 16, choose(InvertedJungleBandit, InvertedJungleBandit, InvertedTurret,FireBat,DiscGuy,Freak,Freak))
	            }
	        }
		} else {
	        if styleb = 1 && random(2) < 1 {
	            instance_create(x + 16, y + 16, choose(InvertedJungleBandit,InvertedTurret,InvertedJungleGorilla,FireBat))
	        }
	        else {
	            if random(4) < 1
	            instance_create(x + 16, y + 16, choose(InvertedJungleBandit,InvertedTurret,InvertedJungleGorilla,FireBat))
	            else {
	                if random(10) < 1 {
	                    if random(8) < 1 instance_create(x + 16, y + 16, Car)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, InvertedJungleBandit)
	                }
	                else
	                    instance_create(x + 16, y + 16, choose(InvertedJungleBandit, InvertedJungleBandit, InvertedTurret,FireBat))
	            }
	        }
		}
    }
	//ULTRA SCRAPYARD
    if spawnarea = 136 {
		if loops > 0 {
			if styleb = 1 && random(2) < 1 {
				instance_create(x + 16, y + 16, choose(InvertedScubaBandit,JellyFish,InvertedGoldenSniper, InvertedSalamander, LightningCrystal))
	        }
	        else {
				if random(35) < 1
				instance_create(x + 16, y + 16, InvertedFireWorm)
	            else if random(4) < 1
	            instance_create(x + 16, y + 16, choose(InvertedGoldenSniper, InvertedSalamander, LightningCrystal,InvertedLavaBallEnemy))
	            else {
	                if random(10) < 1 {
	                    if random(8) < 1 instance_create(x + 16, y + 16, Car)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, JellyFish)
	                }
	                else
	                    instance_create(x + 16, y + 16, choose(InvertedScubaBandit, InvertedWolf, InvertedFireBat,DiscGuy,InvertedScubaBandit, InvertedSalamander, JellyFish, LightningCrystal,InvertedCloudFlyer))
	            }
	        }
		} else {
			if styleb = 1 && random(2) < 1 {
				instance_create(x + 16, y + 16, choose(InvertedScubaBandit,JellyFish,InvertedGoldenSniper, InvertedSalamander, LightningCrystal))
	        }
	        else {
	            if random(4) < 1
	            instance_create(x + 16, y + 16, choose(InvertedGoldenSniper, InvertedSalamander, LightningCrystal))
	            else {
	                if random(10) < 1 {
	                    if random(8) < 1 instance_create(x + 16, y + 16, Car)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, JellyFish)
	                }
	                else
	                    instance_create(x + 16, y + 16, choose(InvertedScubaBandit, InvertedWolf,InvertedScubaBandit, InvertedSalamander, JellyFish, LightningCrystal,InvertedCloudFlyer))
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
				
				instance_create(x + 16, y + 16, choose(CloudFlyer,SnowTank,InvertedSnowTank,CloudFlyer));
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
				
				instance_create(x + 16, y + 16, CloudFlyer);
			}
	        else
	            instance_create(x + 16, y + 16, choose(InvertedPalaceGuardian, InvertedPalaceGuardian, InvertedExploGuardian, InvertedExploGuardian,FireWorm,BoneFish))
		}
       
    }
    //CHEESE CAVES
    if spawnarea = 115 {
		if random(9) < 1
		{
			instance_create(x + 16, y + 16, CursedBigBot)
		}
		else
			instance_create(x + 16, y + 16, choose(CursedOctaBot, CursedSquareBot, CursedWallBot,CursedCrystal))
    }


    //INVERTED CAVES
    if spawnarea = 111  && (subarea == 1 || random(3) < 1){
		if loops > 0 {
			if random(10) < 1
			{
				instance_create(x + 16, y + 16, InvertedBigBot,BigBot)
			}
			else if random(10) < 1
			{
				repeat(2+irandom(2))
					instance_create(x + 16, y + 16, Maggot,MaggotInverted)
			}
			else if random(10) < 1
			{
				repeat(3)
					instance_create(x + 16, y + 16, Freak,InvertedFreak)
			}
	        else
			{
	            instance_create(x + 16, y + 16, choose(InvertedNecromancer,BigMaggot,BigMaggotInverted,Maggot,Freak,InvertedGoldNecromancer,Necromancer,Necromancer,GoldNecromancer,ExploFreak,InvertedExploFreak,BigBot,InvertedBigBot))
			}
		} else {
			if random(10) < 1
			{
				repeat(2+irandom(2))
					instance_create(x + 16, y + 16, Maggot,MaggotInverted)
			}
			else if random(10) < 1
			{
				repeat(3)
					instance_create(x + 16, y + 16, Freak,InvertedFreak)
			}
	        else
	            instance_create(x + 16, y + 16, choose(InvertedNecromancer,BigMaggot,BigMaggotInverted,Maggot,Freak,InvertedGoldNecromancer,Necromancer,Necromancer,GoldNecromancer))
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
			instance_create(x + 16, y + 16, choose(InvertedTeaPot,BuffGator))
			else if random(4) > 3
			instance_create(x + 16, y + 16, choose(RhinoFreak,FireBaller,InvertedBuffMushroom,Vulture,EraserBandit,UltraSalamander))
			else if instance_number(enemy) < 1
			{
				instance_create(x + 16, y + 16,RhinoFreak);
			}
		}
		else
		{
	        if random(3) < 2
	        instance_create(x + 16, y + 16, choose(RhinoFreak,FireBaller,InvertedBuffMushroom,Vulture))
			else if instance_number(enemy) < 1
			{
				instance_create(x + 16, y + 16,RhinoFreak);
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
	            if random(24) < 1
	            instance_create(x + 16, y + 16, choose(Spider, Spider, Spider, CursedSpider, Gator, UltraRaven, SmallUltraSniper,InvertedSquareBat,InvertedCardGuy2));

	        }
	        else {
	            var ran = random(100);
	            if ran > 90 {
	                instance_create(x + 12 + random(8), y + 12 + random(8), choose(SmallUltraSniper,UltraRaven,CourtyardGuardian,InvertedSquareBat,InvertedCardGuy2))
	            }
	            else if ran > 80 {
	                instance_create(x + 16, y + 16, choose(Spider, Spider, Spider,Gator,InvertedSquareBat,CloudKnifer))
	            }
	            else if ran > 70{
	                instance_create(x + 16, y + 16, CursedSpider);
	            }
				else if instance_number(enemy) < 1
				{
					instance_create(x + 16, y + 16,Spider);
				}
	        }
		}
		else
		{
	        if subarea = 2 {
	            if random(24) < 1
	            instance_create(x + 16, y + 16, choose(Spider, Spider, Spider, CursedSpider, Gator, UltraRaven, SmallUltraSniper));

	        }
	        else {
	            var ran = random(100);
	            if ran > 90 {
	                instance_create(x + 12 + random(8), y + 12 + random(8), choose(SmallUltraSniper,UltraRaven,CourtyardGuardian))
	            }
	            else if ran > 80 {
	                instance_create(x + 16, y + 16, choose(Spider, Spider, Spider,Gator,CloudKnifer))
	            }
	            else if ran > 70{
	                instance_create(x + 16, y + 16, CursedSpider);
	            }
				else if instance_number(enemy) < 1
				{
					instance_create(x + 16, y + 16,Spider);
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
		if (subarea != 3 || random(7) < 1)
		{
	        if loops > 0
			{
				if styleb = 1 //b style
		        {
		            if random(4) < 1 {
		                instance_create(x + 12 + random(8), y + 12 + random(8), choose(Necromancer,InvertedGhostGuardian))
		            }
		            else if random(7) < 1
						instance_create(x + 16, y + 16, choose(InvertedRaven, InvertedRaven, Raven, UltraRaven,InvertedGuardianDog,Necromancer,ExploFreak,PalaceGuardian))
					else if instance_number(enemy) < 1
					{
						instance_create(x + 16, y + 16,Raven);
					}
		        } else //a style
		        {
		            if random(5) < 1 {
		                if instance_exists(Player) {
		                    repeat(1+irandom(2))
								instance_create(x + 12 + random(8), y + 12 + random(8), choose(Freak,Rat))
		                }
		                else { //dead Player
		                    repeat(2)
		                    instance_create(x + 12 + random(8), y + 12 + random(8), choose(InvertedFreak,InvertedRat))
		                }
		            }
		            else if random(2) < 1
						instance_create(x + 16, y + 16, choose(InvertedRaven, InvertedRaven, Raven, UltraRaven,InvertedGuardianDog,Necromancer,ExploFreak,InvertedGhostGuardian,PalaceGuardian))
					else if instance_number(enemy) < 1
					{
						instance_create(x + 16, y + 16,Raven);
					}
		        }
			}
			else
			{
		        if styleb = 1 //b style
		        {
		            if random(4) < 1 {
		                instance_create(x + 12 + random(8), y + 12 + random(8), choose(Necromancer))
		            }
		            else if random(7) < 1
						instance_create(x + 16, y + 16, choose(InvertedRaven, InvertedRaven, Raven, UltraRaven,InvertedGuardianDog,Necromancer))
					else if instance_number(enemy) < 1
					{
						instance_create(x + 16, y + 16,Raven);
					}
		        } else //a style
		        {
		            if random(5) < 1 {
		                if instance_exists(Player) {
		                    repeat(1+irandom(2))
								instance_create(x + 12 + random(8), y + 12 + random(8), choose(Freak,Rat))
		                }
		                else { //dead Player
		                    repeat(2)
		                    instance_create(x + 12 + random(8), y + 12 + random(8), choose(InvertedFreak,InvertedRat))
		                }
		            }
		            else if random(2) < 1
						instance_create(x + 16, y + 16, choose(InvertedRaven, InvertedRaven, Raven, UltraRaven,InvertedGuardianDog,Necromancer,ExploFreak))
					else if instance_number(enemy) < 1
					{
						instance_create(x + 16, y + 16,Raven);
					}
		        }
			}
		}
		else if instance_number(enemy) < 1
		{
			instance_create(x + 16, y + 16,Raven);
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
	                instance_create(x + 16, y + 16, choose(InvertedGuardianDog, InvertedExploGuardian, BanditSquare, Thief, Sheep, GoldenOctaBot,GoldenWallBot,GoldenSquareBot,ExplosiveSheep, ExplosiveSheep))
				}
				else if random(10) < 1
				{
					instance_create(x + 16, y + 16, choose(InvertedExploGuardian, InvertedExploGuardian, BanditSquare, Thief, Sheep, GoldenOctaBot,GoldenWallBot,GoldenSquareBot,ExplosiveSheep, ExplosiveSheep))
				}

            } else 
			{
				if loops > 0
				{
					if styleb = 1 {
	                    if random(3) < 1
							instance_create(x + 16, y + 16, choose(InvertedGuardianDog, InvertedExploGuardian, BanditSquare, Thief, Sheep, GoldenOctaBot,GoldenWallBot,GoldenSquareBot,ExplosiveSheep, ExplosiveSheep))
	                }
	                else {
	                    if random(8) < 1
	                    instance_create(x + 16, y + 16, choose(InvertedGuardianDog, InvertedExploGuardian, BanditSquare, Sheep, Thief))
	                    else if random(4) < 2.5 {
	                        instance_create(x + 16, y + 16, choose(InvertedExploGuardian, InvertedExploGuardian, InvertedExploGuardian, BanditSquare, BanditSquare, BanditSquare, Thief, Sheep,GoldenOctaBot,GoldenWallBot,GoldenSquareBot,))
	                    }
						else if instance_number(enemy) < 1
						{
							instance_create(x + 16, y + 16,Sheep);
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
							instance_create(x + 16, y + 16,Sheep);
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
		if loops > 0
		{
			var normals = true;
			if subarea = 3 && spawnarea = 109 //WE LOVE BOSSES! in case loop make sure irght area
		    {
		        if !instance_exists(BecomeInvertedJungleBoss) {
		            instance_create(x + 16, y + 16, BecomeInvertedJungleBoss);
		        }
				normals = choose(true,true,false);
		    }
			if normals
			{
				if styleb = 1 {
		            if random(3) < 1
		            instance_create(x + 16, y + 16, choose(Bandit, InvertedBuffGator,FireWorm,LaserBandit))
		        }
		        else {
		            if random(8) < 1
		            instance_create(x + 16, y + 16, choose(Bandit, InvertedBuffGator,BuffMushroom,Sniper))
		            else if random(4) < 2.5 {
		                instance_create(x + 16, y + 16, choose(LaserBandit,FireWorm,InvertedBuffMushroom,MeleeFake))
		            }
					else if instance_number(enemy) < 1
					{
						instance_create(x + 16, y + 16,LaserBandit);
					}
		        }
			}
		}
		else
		{
		    if subarea = 3 && spawnarea = 109 //WE LOVE BOSSES! in case loop make sure irght area
		    {
		        if !instance_exists(BecomeInvertedJungleBoss) {
		            instance_create(x + 16, y + 16, BecomeInvertedJungleBoss);
		        }

		    } else {
		        if styleb = 1 {
		            if random(3) < 1
		            instance_create(x + 16, y + 16, choose(InvertedCardGuy, InvertedTeaPot))
		        }
		        else {
		            if random(8) < 1
		            instance_create(x + 16, y + 16, choose(Bandit, InvertedBuffGator))
		            else if random(4) < 2.5 {
		                instance_create(x + 16, y + 16, choose(InvertedRatking, FireWorm))
		            }
					else if instance_number(enemy) < 1
					{
						instance_create(x + 16, y + 16,LaserBandit);
					}
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
	        instance_create(x + 16, y + 16, choose(SnowBot, Wolf, InvertedSnowBot, InvertedWolf,InvertedSniper,SnowTank,CubeGuardian))
	        else if random(4) < 1 {
	            if random(5) < 1 && instance_exists(Player) {
	                if point_distance(x, y, Player.x, Player.y) > 64
	                instance_create(x + 16, y + 16, InvertedGoldBarrel)
	            }
	            repeat(3)//No jellyfish and no mushroom
	            instance_create(x + 16, y + 16, choose(SnowBot, Wolf, InvertedSnowBot, InvertedWolf, InvertedScubaBandit, InvertedScubaBandit,InvertedSpider,InvertedSquareBat))
	        }
		}
		else
		{
	        if random(5) < 1
	        instance_create(x + 16, y + 16, choose(SnowBot, Wolf, InvertedSnowBot, InvertedWolf,InvertedSniper))
	        else if random(4) < 1 {
	            if random(5) < 1 && instance_exists(Player) {
	                if point_distance(x, y, Player.x, Player.y) > 64
	                instance_create(x + 16, y + 16, InvertedGoldBarrel)
	            }
	            repeat(3)
	            instance_create(x + 16, y + 16, choose(SnowBot, Wolf, InvertedSnowBot, InvertedWolf, InvertedScubaBandit, InvertedScubaBandit))
	        }
		}
    }

    //BANDITLAND
    if spawnarea = 113 {
		if instance_number(enemy) < 1
		{
			repeat(3)
				with instance_create(x + choose(8,24), y + choose(8,24), MeleeFake)
				{
					raddrop = round(raddrop*0.5);
				}
		}
        else if styleb = 1 {
            with instance_create(x + 16, y + 16, choose(MeleeFake, InvertedMeleeFake, UltraMeleeFake, JungleAssassinFake,InvertedJungleAssassinFake))
			{
				raddrop = round(raddrop*0.5);
			}
        }
        else {
            if random(20) < 1 {
                repeat(1 + irandom(2))
                 with instance_create(x + choose(8,24), y + choose(8,24), choose(MeleeFake, InvertedMeleeFake, UltraMeleeFake, JungleAssassinFake,InvertedJungleAssassinFake))
				 {
					raddrop = round(raddrop*0.5);
				 }
            }
            else {
                if random(30) < 1 {
					instance_create(x,y,BigWallBreak);
                    instance_create(x + 16, y + 16, Barrel)
                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(MeleeFake, InvertedMeleeFake, UltraMeleeFake, JungleAssassinFake,InvertedJungleAssassinFake))
                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(MeleeFake, InvertedMeleeFake, UltraMeleeFake, JungleAssassinFake,InvertedJungleAssassinFake))
                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(MeleeFake, InvertedMeleeFake, UltraMeleeFake, JungleAssassinFake,InvertedJungleAssassinFake))
                }
                else if random(20) < 1 {
                    repeat(2 + irandom(2))
                    with instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, MeleeFake)
					{
						raddrop = round(raddrop*0.5);
					 }
                }
                else
                    instance_create(x + choose(8,24), y + choose(8,24), choose(MeleeFake, InvertedMeleeFake, UltraMeleeFake, JungleAssassinFake,InvertedJungleAssassinFake))
            }
        }
    }

    //JUNGLE
    if spawnarea = 114 {
		if loops > 0
		{
			if styleb = 1 && random(2) < 1 {
	            instance_create(x + 16, y + 16, choose(InvertedGator, InvertedGator, BuffGator, BuffGator, CourtyardGuardian,InvertedCourtyardGuardian,InvertedCourtyardGuardian,InvertedCubeGuardian))
	        }
	        else {
	            if random(4) < 1
	            instance_create(x + 16, y + 16, choose(BuffGator, EraserBandit, BuffGator, BuffGator, InvertedGator, CourtyardGuardian,InvertedCourtyardGuardian,InvertedCubeGuardian,Crystal))
	            else {
	                if random(30) < 1 {
						instance_create(x,y,BigWallBreak);
	                    instance_create(x + 16, y + 16, Barrel)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, EraserBandit)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, EraserBandit)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, EraserBandit)
	                }
	                else {
	                    instance_create(x + 16, y + 16, choose(CourtyardGuardian, CourtyardGuardian, FireBat, FireBat, LaserBandit, Bandit, EraserBandit, Bandit, FireBat, FireBat, BuffMushroom, BuffMushroom,Scorpion));
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
	            instance_create(x + 16, y + 16, choose(BuffGator, EraserBandit, BuffGator, BuffGator, InvertedGator, CourtyardGuardian,InvertedCourtyardGuardian))
	            else {
	                if random(30) < 1 {
						instance_create(x,y,BigWallBreak);
	                    instance_create(x + 16, y + 16, Barrel)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, EraserBandit)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, EraserBandit)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, EraserBandit)
	                }
	                else {
	                    instance_create(x + 16, y + 16, choose(CourtyardGuardian, CourtyardGuardian, FireBat, FireBat, FireBat, Bandit, EraserBandit, Bandit, FireBat, FireBat, BuffMushroom, BuffMushroom));
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
		            instance_create(x + 16, y + 16, choose(InvertedCardGuy, UltraMeleeBandit, InvertedCourtyardTank, PalaceGuardian,ExploGuardian))
		        }
		        else {
		            if random(4) < 1
		            instance_create(x + 16, y + 16, choose(UltraMeleeBandit,InvertedCourtyardTank, PalaceGuardian,ExploGuardian))
		            else {
		                if random(30) < 1 {
							instance_create(x,y,BigWallBreak);
		                    instance_create(x + 16, y + 16, Barrel)
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, Bandit)
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, Bandit)
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, Bandit)
		                }
		                else {
		                    instance_create(x + 16, y + 16, choose(Sniper, InvertedCardGuy, Bandit,BanditInverted,CardGuy2));
		                }
		            }
		        }
			}
		}
		else if subarea != 2 || random(2) < 1
		{
	        if styleb = 1 && random(2) < 1 {
	            instance_create(x + 16, y + 16, choose(InvertedCardGuy, UltraMeleeBandit, InvertedCourtyardTank, PalaceGuardian))
	        }
	        else {
	            if random(4) < 1
	            instance_create(x + 16, y + 16, choose(UltraMeleeBandit,InvertedCourtyardTank, PalaceGuardian))
	            else {
	                if random(30) < 1 {
						instance_create(x,y,BigWallBreak);
	                    instance_create(x + 16, y + 16, Barrel)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, Bandit)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, Bandit)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, Bandit)
	                }
	                else {
	                    instance_create(x + 16, y + 16, choose(Sniper, InvertedCardGuy, Bandit));
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
		    instance_create(x + 16, y + 16, choose(CardGuy,InvertedCrab,InvertedGraveyardSniper,MaggotSpawn,InvertedScorpion))
		    else if random(2) < 1
		        instance_create(x + 16, y + 16, choose(DiscGuy,InvertedSnowBot,Maggot,BanditInverted))
		}
		else
		{
			if random(9) < 1
				instance_create(x + 16, y + 16, choose(CardGuy,InvertedCrab,MaggotSpawn))
		    else if random(2) < 1
		        instance_create(x + 16, y + 16, choose(DiscGuy,Maggot,BanditInverted))	
		}
    }
	
	//GRAVEYARD
    if spawnarea = 126 {
		if loops > 0
		{
		    var r = random(10);
			if r > 7
			{
				instance_create(x + 16, y + 16, choose(CursedCrystal,CursedSpider,InvertedGator,InvertedDiscGuy,Maggot,MaggotInverted))
			}
			if r > 4
			{
				instance_create(x + 16, y + 16, choose(CursedBigBot,CursedCrystal,InvertedDiscGuy,Maggot,MaggotInverted))
			}
		    else if r  > 1 || !instance_exists(enemy)
			{
		        instance_create(x + 16, y + 16, choose(CursedSpider,CursedOctaBot,CursedOctaBot,CursedOctaBot,CursedSpider,CursedSpider,InvertedGator,InvertedBanditSquare,InvertedBanditSquare,Maggot,MaggotInverted))
			}
		}
		else
		{
			var r = random(10);
			if r > 7
			{
				instance_create(x + 16, y + 16, choose(CursedCrystal,CursedSpider,Maggot,MaggotInverted))
			}
			if r > 4
			{
				instance_create(x + 16, y + 16, choose(CursedBigBot,CursedCrystal,Maggot,MaggotInverted))
			}
		    else if r  > 1 || !instance_exists(enemy)
			{
		        instance_create(x + 16, y + 16, choose(CursedSpider,CursedOctaBot,CursedOctaBot,CursedOctaBot,CursedSpider,CursedSpider,Maggot,MaggotInverted))
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
			palaceGuardian = InvertedCourtyardGuardian;
			sniper = SmallUltraSniper;
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
		if !subarea == 3 || random(5) < 1
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
	            instance_create(x + 16, y + 16, choose(InvertedCourtyardGuardian,RadMaggot,InvertedDiscGuy))
	        } else {
	            var ran = random(100);
	            if ran > 70 {
	                instance_create(x + 16, y + 16, choose(InvertedBigBot,BuffGator,CourtyardGuardian))
	            } else if ran > 50 {
					instance_create(x + 16, y + 16, choose(InvertedCourtyardGuardian,RadMaggot,SquareBat,CourtyardGuardian,GoldSnowTank,InvertedDiscGuy))
				}
				else if instance_number(enemy) < 1
				{
					instance_create(x + 16, y + 16,InvertedCourtyardGuardian);
				}
	        }
		} else {
			if styleb = 1 && random(7) < 2 {
	            instance_create(x + 16, y + 16, choose(RadMaggot,InvertedCourtyardGuardian))
	        } else {
	            var ran = random(100);

	            if ran > 70 {
	                instance_create(x + 16, y + 16, choose(InvertedCourtyardGuardian,RadMaggot,SquareBat,CourtyardGuardian,GoldSnowTank))
	            }
				else if instance_number(enemy) < 1
				{
					instance_create(x + 16, y + 16,InvertedCourtyardGuardian);
				}
	        }
		}
    }
	//Throne 2
	if spawnarea == 119 || spawnarea == 120
	{
		if !instance_exists(IDPDSpawn) || (instance_number(IDPDSpawn) < clamp(loops + 1,2,4))
			instance_create(x,y,IDPDSpawn);
		else if random(5) < 1 {
			if spawnarea == 119
				instance_create(x + 16, y + 16,InvertedCloudShooter);
			else
				instance_create(x + 16, y + 16,InvertedCloudKnifer);
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
	//CLOUDLAND
    if spawnarea = 138 {
		if loops > 0 {
			if random(35) < 1
				instance_create(x + 16, y + 16, SmallUltraSniper)
	        if random(3) < 1
				instance_create(x + 16, y + 16, choose(PitGhostLaser,PitGhost,PitGhostSpawner,PitGhostExploder,InvertedSquareBat,SquareBat,Sniper))
	        else {
	            instance_create(x + 16, y + 16, choose(PitGhostLaser,PitGhostLaser, InvertedSquareBat, PitGhost, PitGhostExploder, PitGhostSpawner))
	        }
		} else {
	        if random(3) < 1
				instance_create(x + 16, y + 16, choose(PitGhostLaser,PitGhost,PitGhostSpawner,PitGhostExploder))
	        else {
	            instance_create(x + 16, y + 16, choose(PitGhostLaser,PitGhostLaser, PitGhost, PitGhostExploder, PitGhostSpawner))
	        }
		}
    }
	//CLOUDLAND
    if spawnarea = 140 && (instance_number(enemy) < 2 || random(10) < 6) {
		if loops > 0 {
			if random(35) < 1
				instance_create(x + 16, y + 16, IDPDSpawn,Jock,GhostGuardian)
	        else if random(6) < 1
				instance_create(x + 16, y + 16, choose(Jock,CourtyardGuardian,Crab,EliteGrunt,EliteBuffPopo,EliteShielder,EliteExploderPopo,EliteSegwayPopo,EliteInspector))
	        else {
	            instance_create(x + 16, y + 16, choose(InvertedCourtyardGuardian,Grunt,BuffPopo, Shielder, ExploderPopo, SegwayPopo,Inspector))
	        }
		} else {
			if random(35) < 1
				instance_create(x + 16, y + 16, IDPDSpawn)
	        else if random(6) < 1
				instance_create(x + 16, y + 16, choose(EliteGrunt,EliteBuffPopo,EliteShielder,EliteExploderPopo,EliteSegwayPopo,EliteInspector))
	        else {
	            instance_create(x + 16, y + 16, choose(Grunt,BuffPopo, Shielder, ExploderPopo, SegwayPopo,Inspector))
	        }
		}
    }
	
	//THE PIT!
    if spawnarea = 139 {
		var n = instance_nearest(x,y,enemy);
		if loops > 0 {
			if random(30) < 1
				instance_create(x + 16, y + 16, choose(InvertedCloudShooter, InvertedCloudShooter,GhostGuardian, GhostGuardian,Mimic))
	        else 
				instance_create(x + 16, y + 16, choose(LaserBandit,FreakBandit,Rat,Rat,Rat,ToxicMushroom,Turtle))
		} else if n == noone || (point_distance(x,y,n.x,n.y) > 50 || random(4) < 1){
	        instance_create(x + 16, y + 16, choose(LaserBandit,FreakBandit,Rat,Rat,Rat,ToxicMushroom))
		}
    }
}

///scrDecideInvader();
// /@description
///@param
function scrDecideInvader(){
	if instance_exists(Player)
	{
		var area = Player.area;
		var subarea = Player.subarea;
		var loops = Player.loops;
		if scrIsGamemode(45)
		{
			SetSeed();
			if random(3) < 1
			{
				area = scrGetRandomArea();	
			}
		}
		if scrIsHardMode()//Hard mode
			loops += 1;
		if loops > 3
		{
			var am2 = clamp(ceil(loops/4),1,3);//Amount of different spawn locations
			var am = clamp(floor(loops/am2),1,4);//Amount of enemies per spawn
			if scrIsCrown(7)//Crown of blood
				am += 1;
			else if scrIsCrown(28)//Crown of apocalypse
				am += 3;
			var spawns = [];
			var fa = sprFloor1;
			var fb = sprFloor1B;
			var fe = sprFloor1Explo;
			//BIG MACHINE
			if (area == 6 || area == 112)  && subarea == 2
			{
				am2 = 1;
				am = 1;
			}//Dragon
			if (area == 7 || area == 108)  && subarea == 3
			{
				am2 = 1;
				am = 1;
			}
			else if (area == 9 || area == 118) && subarea == 3
			{
				//THRONE
				am2 = 0;
				am = 0;
			}
			//INVERTED INVASIONS!
			repeat(am)
			switch (area)
			{
				case 1://Desert
					array_push(spawns,BanditInverted, InvertedScorpion, InvertedBanditSquare, InvertedJungleFly, BigMaggotInverted, InvertedNecromancer);
					fa = sprFloor105;
					fb = sprFloor105B;
					fe = sprFloor105Explo;
				break
				case 2://Sewers
					array_push(spawns,InvertedRatking, InvertedMeleeBandit, InvertedGator, InvertedRat, InvertedExploder, InvertedJellyFish,InvertedBoneFish,InvertedBuffGator);
					fa = sprFloor110;
					fb = sprFloor110B;
					fe = sprFloor110Explo;
				break
				case 3://Scrapyard
					array_push(spawns,BanditInverted, InvertedRaven, InvertedBanditSquare, InvertedSniper, InvertedRaven, InvertedSalamander,choose(InvertedSnowBot,InvertedThief,InvertedMeleeBandit,InvertedBuffGator));
					fa = sprFloor106;
					fb = sprFloor106B;
					fe = sprFloor106Explo;
				break
				case 4://Caves
					array_push(spawns,InvertedSpider, InvertedSquareBat, InvertedSpider, LightningCrystal,choose(InvertedFireWorm,InvertedFireBat));
					fa = sprFloor111;
					fb = sprFloor111B;
					fe = sprFloor111Explo;
				break
				case 5://Frozen city
					array_push(spawns,BanditInverted, InvertedDiscGuy, InvertedGhostGuardian, InvertedSnowBot, InvertedWolf, InvertedSnowTank);
					fa = sprFloor107;
					fb = sprFloor107B;
					fe = sprFloor107Explo;
				break
				case 6://Labs
					array_push(spawns,InvertedFreak, InvertedFreak, InvertedExploFreak, InvertedNecromancer, choose(InvertedRatking,InvertedCubeGuardian), InvertedTurret, InvertedRhinoFreak);
					fa = sprFloor112;
					fb = sprFloor112B;
					fe = sprFloor112Explo;
				break
				case 7://Vulcano
					array_push(spawns,InvertedLavaBallEnemy, InvertedFireWorm, choose(InvertedWolf,InvertedScubaBandit), InvertedSalamander, choose(InvertedFireBaller,InvertedSuperFireBaller), InvertedFireBat);
					fa = sprFloor108;
					fb = sprFloor108B;
					fe = sprFloor108Explo;
				break
				case 8://Wonderland
					array_push(spawns,InvertedCardGuy, InvertedCardGuy2, InvertedTeaPot, InvertedMolesarge, InvertedMolefish, choose(InvertedGuardianDog,InvertedSnowTank),Sheep);
					fa = sprFloor109;
					fb = sprFloor109B;
					fe = sprFloor109Explo;
				break
				case 9://Palace
					array_push(spawns,InvertedGuardianDog, InvertedGhostGuardian, InvertedPalaceGuardian, InvertedExploGuardian, InvertedCubeGuardian, choose(InvertedExploFreak, JungleBandit, InvertedBuffMushroom));
					fa = sprFloor118;
					fb = sprFloor118B;
					fe = sprFloor118Explo;
				break
				case 10://Savanna
					array_push(spawns,InvertedSavannaBandit, InvertedVulture, InvertedThief, InvertedHyena, InvertedHyena, choose(InvertedCardGuy,InvertedCardGuy2));
					fa = sprFloor121;
					fb = sprFloor121B;
					fe = sprFloor121Explo;
				break
				case 105://Inv Desert
					array_push(spawns,Bandit, Scorpion, BanditSquare, JungleFly, BigMaggot, Sniper);
					fa = sprFloor1;
					fb = sprFloor1B;
					fe = sprFloor1Explo;
				break;
				case 110://Inv Sewers
					array_push(spawns,Ratking, MeleeBandit, Gator, Rat, Exploder, ToxicMushroomGuy, BuffGator);
					fa = sprFloor2;
					fb = sprFloor2B;
					fe = sprFloor2Explo;
				break
				case 106://Inv Scrapyard
					array_push(spawns,Bandit, Raven, BanditSquare, Sniper, Raven, Salamander,choose(SnowBot,Thief,MeleeBandit,BuffGator));
					fa = sprFloor3;
					fb = sprFloor3B;
					fe = sprFloor3Explo;
				break
				case 111://Inv Caves
					array_push(spawns,Spider, SquareBat, Spider, LaserCrystal, choose(RhinoFreak, FireBat));
					fa = sprFloor4;
					fb = sprFloor4B;
					fe = sprFloor4Explo;
				break
				case 107://Inv Frozen city
					array_push(spawns,choose(GuardianDog, CubeGuardian,SnowTank), DiscGuy, choose(ExploGuardian, Necromancer), SnowBot, Wolf, SnowTank);
					fa = sprFloor5;
					fb = sprFloor5B;
					fe = sprFloor5Explo;
				break
				case 112://Inv Labs
					array_push(spawns,Freak, Freak, ExploFreak, Necromancer, choose(LaserCrystal,Ratking), Turret, RhinoFreak);
					fa = sprFloor6;
					fb = sprFloor6B;
					fe = sprFloor6Explo;
				break
				case 108://Inv Vulcano
					array_push(spawns,LavaBallEnemy, FireWorm, FireBat, Salamander, choose(FireBaller,SuperFireBaller), LavaBallEnemy, choose(ExploFreak, Sniper));
					fa = sprFloor7;
					fb = sprFloor7B;
					fe = sprFloor7Explo;
				break
				case 109://Inv Wonderland
					array_push(spawns,CardGuy, CardGuy2, TeaPot, Hyena, InvertedMolefish, choose(GuardianDog,CubeGuardian),Sheep);
					fa = sprFloor8;
					fb = sprFloor8B;
					fe = sprFloor8Explo;
				break
				case 118://Inv Palance
					array_push(spawns,GuardianDog, GhostGuardian, PalaceGuardian, ExploGuardian, CubeGuardian, choose(Sniper, JungleBandit, ExploFreak));
					fa = sprFloor9;
					fb = sprFloor9B;
					fe = sprFloor9Explo;
				break
				case 121://Inv Savanna
					array_push(spawns,SavannaBandit, Vulture,choose(FireBat,Thief), Hyena, Hyena, SnowTank);
					fa = sprFloor10;
					fb = sprFloor10B;
					fe = sprFloor10Explo;
				break
				case 101://Oasis
					array_push(spawns,InvertedCrab, InvertedBoneFish, InvertedBoneFish, InvertedScubaBandit, InvertedJellyFish, InvertedHyena, choose(InvertedExploder,InvertedExploder,InvertedSpider));
					fa = sprFloor122;
					fb = sprFloor122B;
					fe = sprFloor122Explo;
				break;
				case 122://Inv Oasis
					array_push(spawns,Crab,BoneFish, BoneFish, ScubaBandit, JellyFish, Jock, choose(Gator,Spider,Turtle));
					fa = sprFloor101;
					fb = sprFloor101B;
					fe = sprFloor101Explo;
				break;
				case 117://Mushroom land
					array_push(spawns,InvertedBuffMushroom,InvertedToxicMushroomGuy, InvertedFireBat, InvertedSquareBat, InvertedRatking, choose(InvertedBuffGator,LightningCrystal), choose(EraserBandit,InvertedNecromancer));
					fa = sprFloor124;
					fb = sprFloor124B;
					fe = sprFloor124Explo;
				break;
				case 124://Inv Mushroom land
					array_push(spawns,BuffMushroom,ToxicMushroomGuy, Exploder, choose(Wolf,Gator), Ratking, BuffGator, choose(LaserBandit,Rat));
					fa = sprFloor117;
					fb = sprFloor117B;
					fe = sprFloor117Explo;
				break;
				case 114://Jungle
					array_push(spawns,InvertedJungleBandit, InvertedJungleAssassin, InvertedJungleBandit, InvertedJungleFly, BigMaggotInverted , MaggotInverted, choose(InvertedSniper,InvertedMolefish));
					fa = sprFloor123;
					fb = sprFloor123B;
					fe = sprFloor123Explo;
				break;
				case 123://Inv Jungle
					array_push(spawns,JungleBandit,JungleAssassin, JungleBandit, JungleFly, BigMaggot, Maggot, choose(FireWorm,Spider));
					fa = sprFloor114;
					fb = sprFloor114B;
					fe = sprFloor114Explo;
				break;
				case 103://YV Mansion
					array_push(spawns,InvertedMolefish, InvertedMolesarge, InvertedCardGuy2, InvertedJock, InvertedFireBaller, InvertedSuperFireBaller, InvertedDiscGuy, InvertedHyena);
					fa = sprFloor125;
					fb = sprFloor125B;
					fe = sprFloor125Explo;
				break;
				case 125://INV YV Mansion
					array_push(spawns,Molefish, Molesarge, JellyFish, Jock, FireBaller, SuperFireBaller, GhostGuardian, BuffMushroom);
					fa = sprFloor103;
					fb = sprFloor103B;
					fe = sprFloor103Explo;
				break;
				case 115://Cursed caves
					array_push(spawns,InvertedSpider, Spider, InvertedRaven, Raven, InvertedSquareBat, SquareBat, Rat, InvertedRat, InvertedJungleBandit);
					fa = sprFloor4;
					fb = sprFloor111B;
					fe = sprFloor111Explo;
				break
				case 126://Graveyard
					array_push(spawns,InvertedGraveyardSkeleton, InvertedGraveyardSniper, InvertedGraveyardSkeleton, InvertedGraveyardBreeder, BigMaggotInverted , InvertedGraveyardSkeleton, choose(InvertedSpider,InvertedBuffMushroom));
					fa = sprFloor127;
					fb = sprFloor127B;
					fe = sprFloor127Explo;
				break
				case 127://INV Graveyard
					array_push(spawns,GraveyardSkeleton, GraveyardSniper, GraveyardSkeleton, GraveyardBreeder, BigMaggot , GraveyardSkeleton, choose(Spider,BuffMushroom));
					fa = sprFloor126;
					fb = sprFloor126B;
					fe = sprFloor126Explo;
				break;
				case 130://Factory
					array_push(spawns,InvertedOctaBot, InvertedSniper, InvertedSquareBot, InvertedBigBot, InvertedPalaceGuardian , InvertedWallBot);
					fa = sprFloor131;
					fb = sprFloor131B;
					fe = sprFloor131Explo;
				break;
				case 131://INV Factory
					array_push(spawns,OctaBot, Sniper, SquareBot, BigBot, PalaceGuardian , WallBot);
					fa = sprFloor130;
					fb = sprFloor130B;
					fe = sprFloor130Explo;
				break;
				case 132://Cursed Factory
					array_push(spawns,GraveyardSkeleton, GraveyardSkeleton, GraveyardSkeleton, GraveyardBreeder, GraveyardSniper , CursedSpider);
					fa = sprFloor126;
					fb = sprFloor126B;
					fe = sprFloor126Explo;
				break;
				case 133://Golden Factory
					array_push(spawns,GoldNecromancer, GoldScorpion, choose(GoldCrystal, GoldHyena, GoldJungleFly), GoldTotem);
					fa = sprFloor131;
					fb = sprFloor131B;
					fe = sprFloor131Explo;
				break;
				case 134://Ultra Factory
					array_push(spawns,UltraRaven, UltraRaven, UltraRaven, UltraMeleeBandit, UltraMeleeBandit , UltraSalamander);
					fa = sprFloor135;
					fb = sprFloor135B;
					fe = sprFloor135Explo;
				break;
				case 136://Ultra Scrapyard
					array_push(spawns,UltraOctaBot, UltraSquareBot, UltraWallBot, UltraWallBot, UltraBigBot , choose(UltraOctaBot, UltraSquareBot));
					fa = sprFloor134;
					fb = sprFloor134B;
					fe = sprFloor134Explo;
				break;
				case 135://HQ
					array_push(spawns,Turtle, Turtle, Turtle, Rat, PizzaBox, BoneFish, choose(Ratking, Crab));
					fa = sprFloor102;
					fb = sprFloor102B;
					fe = sprFloor102Explo;
				break;
			}
			
			if array_length(spawns) > 0
				scrSpawnInversionInvasion(am2,spawns,fa,fb,fe);
		}
		if scrIsHardMode()//Hard mode
			loops += 2;
		if loops > 4
		{
			if (area == 2 || area == 110) && subarea == 1//SEWERS
			{
				if (loops % 2 == 0)
					scrSpawnInvaderBoss(clamp(loops - 3,1,2),BigFish,sprFloor101,sprFloor101B,sprFloor101Explo);//ODD
				else
					scrSpawnInvaderBoss(clamp(loops - 3,1,2),InvertedBigFish,sprFloor122,sprFloor122B,sprFloor122Explo);//EVEN
			}
			else if (area == 101 || area == 122) && subarea == 1//Oasis 1B - 1
			{
				if (loops % 2 == 0)
					scrSpawnInvaderBoss(1,BecomeScrapBoss,sprFloor3,sprFloor3B,sprFloor3Explo);//ODD
				else
					scrSpawnInvaderBoss(1,BecomeInvertedScrapBoss,sprFloor106,sprFloor106B,sprFloor106Explo);//EVEN
			}
			else if (area == 103 || area == 125)//YV MANSION  3B -1
			{
				instance_create(x,y,WantBoss);
				/*
				if (loops % 2 == 0)
					scrSpawnInvaderBoss(1,BigBadBat,sprFloor4,sprFloor4,sprFloor4Explo);//ODD
				else
					scrSpawnInvaderBoss(1,InvertedBigBadBat,sprFloor111,sprFloor111,sprFloor111Explo);//EVEN
					*/
			}
			else if (area == 117 || area == 124)//Mushroomland 4B -1
			{
				if (loops % 2 == 0)
					scrSpawnInvaderBoss(clamp(loops - 3,1,2),BigDisc,sprFloor3,sprFloor3B,sprFloor3Explo);//ODD
				else
					scrSpawnInvaderBoss(clamp(loops - 3,1,2),InvertedBigDisc,sprFloor106,sprFloor106B,sprFloor106Explo);//EVEN
			}
			else if (area == 114 || area == 123) && subarea == 1//Jungle 5B - 1
			{
				if (loops % 2 == 0)
					scrSpawnInvaderBoss(clamp(loops - 3,1,3),Technomancer,sprFloor6,sprFloor6B,sprFloor6Explo);//ODD
				else
					scrSpawnInvaderBoss(clamp(loops - 3,1,3),InvertedTechnomancer,sprFloor112,sprFloor112B,sprFloor112Explo);//EVEN
			}
			else if area == 113//Banditland
			{
				if (loops % 2 == 0)
					scrSpawnInvaderBoss(clamp(loops - 2,1,3),BanditBoss,sprFloor1,sprFloor1B,sprFloor1Explo);//ODD
				else
					scrSpawnInvaderBoss(clamp(loops - 2,1,3),InvertedBanditBoss,sprFloor105,sprFloor105B,sprFloor105Explo);//EVEN
			}
			else if area == 113//Pizza sewers
			{
				if (loops % 2 == 0)
					scrSpawnInvaderBoss(clamp(loops - 3,1,2),BigVulture,sprFloor10,sprFloor10B,sprFloor10Explo);//EVEN
				else
					scrSpawnInvaderBoss(clamp(loops - 3,1,2),InvertedBigVulture,sprFloor121,sprFloor121B,sprFloor121Explo);//EVEN
			}
			else if (area == 9 || area == 118) && subarea == 1//Palace 7 - 1
			{
				if (loops % 2 == 0)
					scrSpawnInvaderBoss(clamp(floor((loops - 3)*0.25),1,2),AssassinBoss,sprFloor3,sprFloor3B,sprFloor3Explo);//ODD
				else
					scrSpawnInvaderBoss(clamp(floor((loops - 3)*0.25),1,3),InvertedAssassinBoss,sprFloor106,sprFloor106B,sprFloor106Explo);//EVEN
			}
			else if (area == 7 || area == 108) && subarea == 1//Vulcano 3C - 1
			{
				if (loops % 2 == 0)
					scrSpawnInvaderBoss(1,JungleBoss,sprFloor114,sprFloor114B,sprFloor114Explo);//EVEN
				else
					scrSpawnInvaderBoss(1,InvertedJungleBoss,sprFloor123,sprFloor123B,sprFloor123Explo);//EVEN
			}
			else if (area == 8 || area == 109) && subarea == 1//Wonderland 5C - 1
			{
				if (loops % 3 == 1)
					scrSpawnInvaderBoss(1,HyperCrystal,sprFloor4,sprFloor4,sprFloor4Explo);
				else if (loops % 3 == 2)
					scrSpawnInvaderBoss(1,InvertedHyperCrystal,sprFloor111,sprFloor111,sprFloor111Explo);
				else
					scrSpawnInvaderBoss(1,CursedHyperCrystal,sprFloor115,sprFloor115,sprFloor115Explo);
			} else if loops > 9 && (area == 9 || area == 118) && subarea == 2//Palace 7 - 2 replaces proto statue at loop 10
			{
				scrSpawnInvaderBoss(clamp(floor((loops - 9)*0.25),1,2),UltraBigDog,sprFloor134,sprFloor134B,sprFloor133Explo);
			}
		}
		//TODO Check inverted areas if possible
	}
}
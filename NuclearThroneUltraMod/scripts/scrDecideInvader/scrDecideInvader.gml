///scrDecideInvader();
// /@description
///@param
function scrDecideInvader(){
	if instance_exists(Player)
	{
		var area = Player.area;
		var subarea = Player.subarea;
		var loops = Player.loops;
		if UberCont.opt_gamemode == 34//Hard mode
			loops += 4;
		if loops > 1
		{
			var am = clamp(loops-1,1,4);
			if Player.crown == 7//Crown of blood
				am ++;
			else if Player.crown == 17//Crown of apocalypse
				am += 3;
			var spawns = [];
			//INVERTED INVASIONS!
			repeat(am)
			switch (area)
			{
				case 1://Desert
					array_push(spawns,BanditInverted, InvertedScorpion, InvertedBanditSquare, InvertedJungleFly, BigMaggotInverted, InvertedNecromancer);
				break
				case 2://Sewers
					array_push(spawns,BanditInverted, InvertedRatking, InvertedMeleeBandit, InvertedGator, InvertedRat, InvertedExploder, InvertedJellyFish,InvertedBoneFish);
				break
				case 3://Scrapyard
					array_push(spawns,BanditInverted, InvertedRaven, InvertedBanditSquare, InvertedSniper, InvertedRaven, InvertedSalamander,choose(InvertedSnowBot,InvertedThief,InvertedMeleeBandit));
				break
				case 4://Caves
					array_push(spawns,InvertedSpider, InvertedSquareBat, InvertedSpider, LightningCrystal,choose(InvertedFireWorm,InvertedFireBat));
				break
				case 5://Frozen city
					array_push(spawns,BanditInverted, InvertedDiscGuy, InvertedGhostGuardian, InvertedSnowBot, InvertedWolf, InvertedSnowTank);
				break
				case 6://Labs
					array_push(spawns,InvertedFreak, InvertedFreak, InvertedExploFreak, InvertedNecromancer, choose(InvertedRatking,InvertedCubeGuardian), InvertedTurret, InvertedRhinoFreak);
				break
				case 7://Vulcano
					array_push(spawns,InvertedLavaBallEnemy, InvertedFireWorm, choose(InvertedWolf,InvertedScubaBandit), InvertedSalamander, choose(InvertedFireBaller,InvertedSuperFireBaller), InvertedFireBat);
				break
				case 8://Wonderland
					array_push(spawns,InvertedCardGuy, InvertedCardGuy2, InvertedTeaPot, InvertedMolesarge, InvertedMolefish, choose(InvertedGuardianDog,InvertedSnowTank),Sheep);
				break
				case 9://Palace
					array_push(spawns,InvertedGuardianDog, InvertedGhostGuardian, InvertedPalaceGuardian, InvertedExploGuardian, InvertedCubeGuardian, choose(InvertedExploFreak, JungleBandit, InvertedBuffMushroom));
				break
				case 10://Savanna
					array_push(spawns,InvertedSavannaBandit, InvertedVulture, InvertedThief, InvertedHyena, InvertedHyena, choose(InvertedCardGuy,InvertedCardGuy2));
				break
				case 105://Inv Desert
					array_push(spawns,Bandit, Scorpion, BanditSquare, JungleFly, BigMaggot, Sniper);
				break;
				case 110://Inv Sewers
					array_push(spawns,Bandit, Ratking, MeleeBandit, Gator, Rat, Exploder, ToxicMushroomGuy);
				break
				case 106://Inv Scrapyard
					array_push(spawns,Bandit, Raven, BanditSquare, Sniper, Raven, Salamander,choose(SnowBot,Thief,MeleeBandit));
				break
				case 111://Inv Caves
					array_push(spawns,Spider, SquareBat, Spider, LaserCrystal, choose(RhinoFreak, FireBat));
				break
				case 107://Inv Frozen city
					array_push(spawns,choose(GuardianDog, CubeGuardian,SnowTank), DiscGuy, choose(ExploGuardian, Necromancer), SnowBot, Wolf, SnowTank);
				break
				case 112://Inv Labs
					array_push(spawns,Freak, Freak, ExploFreak, Necromancer, choose(LaserCrystal,Ratking), Turret, RhinoFreak);
				break
				case 108://Inv Vulcano
					array_push(spawns,LavaBallEnemy, FireWorm, FireBat, Salamander, choose(FireBaller,SuperFireBaller), LavaBallEnemy, choose(ExploFreak, Sniper));
				break
				case 109://Inv Wonderland
					array_push(spawns,CardGuy, CardGuy2, TeaPot, Hyena, InvertedMolefish, choose(GuardianDog,CubeGuardian),Sheep);
				break
				case 118://Inv Palance
					array_push(spawns,GuardianDog, GhostGuardian, PalaceGuardian, ExploGuardian, CubeGuardian, choose(Sniper, JungleBandit, ExploFreak));
				break
				case 121://Inv Savanna
					array_push(spawns,SavannaBandit, Vulture, Thief, Hyena, Hyena, choose(FireBat, Scorpion));
				break
				case 101://Oasis
					array_push(spawns,InvertedCrab, InvertedBoneFish, InvertedBoneFish, InvertedScubaBandit, InvertedJellyFish, ToxicMushroomGuy, choose(InvertedExploder,InvertedExploder,InvertedSpider));
				break;
				case 122://Inv Oasis
					array_push(spawns,Crab,BoneFish, BoneFish, ScubaBandit, JellyFish, Jock, choose(Gator,Spider,Turtle));
				break;
				case 117://Mushroom land
					array_push(spawns,InvertedBuffMushroom,InvertedToxicMushroomGuy, InvertedFireBat, InvertedSquareBat, InvertedRatking, LightningCrystal, choose(EraserBandit,InvertedNecromancer));
				break;
				case 124://Inv Mushroom land
					array_push(spawns,BuffMushroom,ToxicMushroomGuy, Exploder, Gator, Ratking, BanditSquare, choose(LaserBandit,Scorpion,Necromancer));
				break;
				case 114://Jungle
					array_push(spawns,InvertedJungleBandit, InvertedJungleAssassin, InvertedJungleBandit, InvertedJungleFly, BigMaggotInverted , MaggotInverted, choose(InvertedSniper,InvertedMolefish));
				break;
				case 123://Inv Jungle
					array_push(spawns,JungleBandit,JungleAssassin, JungleBandit, JungleFly, BigMaggot, Maggot, choose(FireWorm,Spider));
				break;
				case 103://YV Mansion
					array_push(spawns,InvertedMolefish, InvertedMolesarge, InvertedCardGuy2, InvertedJock, InvertedFireBaller, InvertedSuperFireBaller, InvertedDiscGuy, InvertedHyena);
				break;
				case 125://INV YV Mansion
					array_push(spawns,Molefish, Molesarge, JellyFish, Jock, FireBaller, SuperFireBaller, GhostGuardian, BuffMushroom);
				break;
				case 115://Cursed caves
					array_push(spawns,InvertedSpider, Spider, InvertedRaven, Raven, InvertedSquareBat, SquareBat, Rat, InvertedRat, InvertedJungleBandit);
				break
			}
			if array_length(spawns) > 0
				scrSpawnInversionInvasion(1,BecomeScrapBoss,sprFloor3,sprFloor3B,sprFloor3Explo);
		}
		if loops > 4
		{
			if area == 101 && subarea == 1//Oasis 1B - 1
			{
				if (loops % 2 == 1)
					scrSpawnInvaderBoss(1,BecomeScrapBoss,sprFloor3,sprFloor3B,sprFloor3Explo);//ODD
				else
					scrSpawnInvaderBoss(1,BecomeInvertedScrapBoss,sprFloor106,sprFloor106B,sprFloor106Explo);//EVEN
			}
			else if area == 103//YV MANSION  3B -1
			{
				instance_create(x,y,WantBoss);
				/*
				if (loops % 2 == 1)
					scrSpawnInvaderBoss(1,BigBadBat,sprFloor4,sprFloor4,sprFloor4Explo);//ODD
				else
					scrSpawnInvaderBoss(1,InvertedBigBadBat,sprFloor111,sprFloor111,sprFloor111Explo);//EVEN
					*/
			}
			else if area == 117//Mushroomland 4B -1
			{
				if (loops % 2 == 1)
					scrSpawnInvaderBoss(loops - 2,BanditBoss,sprFloor1,sprFloor1B,sprFloor1Explo);//ODD
				else
					scrSpawnInvaderBoss(loops - 2,InvertedBanditBoss,sprFloor105,sprFloor105B,sprFloor105Explo);//EVEN
			}
			else if area == 114 && subarea == 1//Jungle 5B - 1
			{
				if (loops % 2 == 1)
					scrSpawnInvaderBoss(clamp(loops - 4,1,3),Technomancer,sprFloor6,sprFloor6B,sprFloor6Explo);//ODD
				else
					scrSpawnInvaderBoss(clamp(loops - 4,1,3),InvertedTechnomancer,sprFloor112,sprFloor112B,sprFloor112Explo);//EVEN
			}
			else if area == 113//Banditland
			{
				if (loops % 2 == 1)
					scrSpawnInvaderBoss(loops - 2,BanditBoss,sprFloor1,sprFloor1B,sprFloor1Explo);//ODD
				else
					scrSpawnInvaderBoss(loops - 2,InvertedBanditBoss,sprFloor105,sprFloor105B,sprFloor105Explo);//EVEN
			}
			else if area == 113//Pizza sewers
			{
				if (loops % 2 == 1)
					scrSpawnInvaderBoss(loops - 3,BigVulture,sprFloor10,sprFloor10B,sprFloor10Explo);//EVEN
				else
					scrSpawnInvaderBoss(loops - 3,InvertedBigVulture,sprFloor121,sprFloor121B,sprFloor121Explo);//EVEN
			}
			else if area == 9 && subarea == 1//Palace 7 - 1
			{
				if (loops % 2 == 1)
					scrSpawnInvaderBoss(clamp(floor((loops - 4)*0.25),1,2),AssassinBoss,sprFloor3,sprFloor3B,sprFloor3Explo);//ODD
				else
					scrSpawnInvaderBoss(clamp(floor((loops - 4)*0.25),1,3),InvertedAssassinBoss,sprFloor106,sprFloor106B,sprFloor106Explo);//EVEN
			}
			else if area == 7 && subarea == 1//Vulcano 3C - 1
			{
				if (loops % 2 == 1)
					scrSpawnInvaderBoss(1,JungleBoss,sprFloor114,sprFloor114B,sprFloor114Explo);//EVEN
				else
					scrSpawnInvaderBoss(1,InvertedJungleBoss,sprFloor123,sprFloor123B,sprFloor123Explo);//EVEN
			}
			else if area == 8 && subarea == 1//Wonderland 5C - 1
			{
				if (loops % 3 == 2)
					scrSpawnInvaderBoss(1,HyperCrystal,sprFloor4,sprFloor4,sprFloor4Explo);
				else if (loops % 3 == 0)
					scrSpawnInvaderBoss(1,InvertedHyperCrystal,sprFloor111,sprFloor111,sprFloor111Explo);
				else //mod == 1
					scrSpawnInvaderBoss(1,CursedHyperCrystal,sprFloor115,sprFloor115,sprFloor115Explo);
			}
			else if loops > 9 && (area == 9 || area == 118) && subarea == 2//Palace 7 - 2 replaces proto statue at loop 10
			{
				scrSpawnInvaderBoss(clamp(floor((loops - 9)*0.25),1,3),BallBoss,sprFloor100,sprFloor100C,sprFloor100Explo);//EVEN
			}
		}
	}
}
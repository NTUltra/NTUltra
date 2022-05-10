///scrDecideInvader();
// /@description
///@param
function scrDecideInvader(){
	if instance_exists(Player)
	{
		var area = Player.area;
		var subarea = Player.subarea;
		var loops = Player.loops;
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
				scrSpawnInvaderBoss(loops - 3,BigVulture,sprFloor10,sprFloor10B,sprFloor10Explo);//EVEN
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
				scrSpawnInvaderBoss(1,JungleBoss,sprFloor114,sprFloor114B,sprFloor114Explo);//EVEN
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
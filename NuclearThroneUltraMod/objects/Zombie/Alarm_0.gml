/// @description ZOMBIE RESURRECTION
alarm[2] = 2;
if !instance_exists(Player)
	exit;
var chosenZombie = GraveyardSkeleton;
repeat(clamp(Player.loops + 1, 1, 10))
{
	switch (Player.area)
	{
		case 1:
			chosenZombie = choose(Maggot,Maggot,Maggot, Maggot, GraveyardSkeleton,RadMaggot,GraveyardSkeleton,GraveyardSniper, Maggot,Maggot,Maggot, Maggot, GraveyardSkeleton,Scorpion,GraveyardSkeleton,GraveyardSniper, Scorpion);
		break;
		case 105:
			chosenZombie = choose(MaggotInverted,MaggotInverted,MaggotInverted, MaggotInverted, InvertedGraveyardSkeleton,RadMaggot,InvertedGraveyardSkeleton,InvertedGraveyardSniper, MaggotInverted,MaggotInverted,MaggotInverted, MaggotInverted, InvertedGraveyardSkeleton,InvertedScorpion,InvertedGraveyardSkeleton,InvertedGraveyardSniper, InvertedScorpion);
		break;
				
		case 2:
			chosenZombie = choose(FastRat, FastRat, FastRat, Rat, Exploder,Rat,Turtle,Gator, FastRat,FastRat, FastRat, Rat, Exploder,Rat,Turtle,Gator, SuperFrog, FrogEgg);
		break;
		case 110:
			chosenZombie = choose(InvertedFastRat, InvertedFastRat, InvertedFastRat, InvertedRat, InvertedExploder, InvertedRat, InvertedGator, InvertedFastRat, InvertedFastRat, InvertedFastRat, InvertedRat, InvertedExploder, InvertedRat, InvertedGator, InvertedSuperFrog);
		break;
				
		case 3:
			chosenZombie = choose(Raven,Bandit, Thief, Salamander, GraveyardSkeleton,GraveyardSkeleton,Raven,BanditSquare);
		break;
		case 106:
			chosenZombie = choose(InvertedRaven,BanditInverted, InvertedThief, InvertedSalamander, InvertedGraveyardSkeleton,InvertedGraveyardSkeleton,InvertedRaven,InvertedBanditSquare);
		break;
				
		case 4:
			chosenZombie = choose(GraveyardSniper, GraveyardSkeleton, GraveyardSkeleton, Spider,Spider, SquareBat, SquareBat, LaserCrystal, LaserCrystal,GraveyardSniper, GraveyardSkeleton, GraveyardSkeleton, Spider,Spider, SquareBat, SquareBat,LightningCrystal);
		break;
		case 111:
			chosenZombie = choose(InvertedGraveyardSniper, InvertedGraveyardSkeleton, InvertedGraveyardSkeleton, InvertedSpider, InvertedSpider, InvertedSquareBat, InvertedSquareBat, LightningCrystal, LightningCrystal, InvertedGraveyardSniper, InvertedGraveyardSkeleton, InvertedGraveyardSkeleton, InvertedSpider, InvertedSpider, InvertedSquareBat, InvertedSquareBat);
		break;
				
		case 5:
			chosenZombie = choose(SnowTank, Bandit, GraveyardSkeleton, GraveyardSkeleton, DiscGuy, DiscGuy, DiscGuy, Wolf, Wolf, SnowBot, SnowBot , Bandit, GraveyardSkeleton, GraveyardSkeleton, DiscGuy, DiscGuy, Wolf, Wolf, SnowBot, SnowBot);
		break;
		case 107:
			chosenZombie = choose(InvertedSnowTank, BanditInverted, InvertedGraveyardSkeleton, InvertedGraveyardSkeleton, InvertedDiscGuy, InvertedDiscGuy, InvertedDiscGuy, InvertedWolf, InvertedWolf, InvertedSnowBot, InvertedSnowBot , BanditInverted, InvertedGraveyardSkeleton, InvertedGraveyardSkeleton, InvertedDiscGuy, InvertedDiscGuy, InvertedWolf, InvertedWolf, InvertedSnowBot, InvertedSnowBot);
		break;
				
		case 6:
			chosenZombie = choose(Freak, Freak, Freak, Freak, Freak, Freak, GraveyardSkeleton, GraveyardSkeleton, Necromancer, RhinoFreak, Turret, ExploFreak);
		break;
		case 112:
			chosenZombie = choose(InvertedFreak, InvertedFreak, InvertedFreak, InvertedFreak, InvertedFreak, InvertedFreak, InvertedGraveyardSkeleton, InvertedGraveyardSkeleton, InvertedNecromancer, InvertedRhinoFreak, InvertedTurret, InvertedExploFreak);
		break;
				
		case 7:
			chosenZombie = choose(FireBat, Bandit, BanditSquare, Salamander, GraveyardSkeleton,GraveyardSkeleton,FireBat, LavaBallEnemy, FireWorm);
		break;
		case 108:
			chosenZombie = choose(InvertedFireBat, BanditInverted, InvertedBanditSquare, InvertedSalamander, InvertedGraveyardSkeleton, InvertedGraveyardSkeleton, InvertedFireBat, InvertedLavaBallEnemy, InvertedFireWorm);
		break;
				
		case 8:
			chosenZombie = choose(Sheep, ExplosiveSheep, CardGuy, CardGuy, CardGuy2, CardGuy2, TeaPot, GraveyardSkeleton, GraveyardSkeleton);
		break;
		case 109:
			chosenZombie = choose(Sheep, ExplosiveSheep, InvertedCardGuy, InvertedCardGuy, InvertedCardGuy2, InvertedCardGuy2, InvertedTeaPot, InvertedGraveyardSkeleton, InvertedGraveyardSkeleton);
		break;
				
		case 9:
			chosenZombie = choose(PalaceGuardian, PalaceGuardian, PalaceGuardian, PalaceGuardian, ExploGuardian, ExploGuardian, ExploGuardian, GhostGuardian, GhostGuardian, CubeGuardian,CubeGuardian,GuardianDog);
		break;
		case 118:
			chosenZombie = choose(InvertedPalaceGuardian, InvertedPalaceGuardian, InvertedPalaceGuardian, InvertedPalaceGuardian, InvertedExploGuardian, InvertedExploGuardian, InvertedExploGuardian, InvertedGhostGuardian, InvertedGhostGuardian, InvertedCubeGuardian, InvertedCubeGuardian, InvertedGuardianDog);
		break;
				
		case 10://Savanna
			chosenZombie = choose(SavannaBandit, SavannaBandit, SavannaBandit, Hyena, Hyena, Vulture, Vulture, Thief, Gator, GraveyardSkeleton, GraveyardSkeleton);
		break;
		case 121:
			chosenZombie = choose(InvertedSavannaBandit, InvertedSavannaBandit, InvertedSavannaBandit, InvertedHyena, InvertedHyena, InvertedVulture, InvertedVulture, InvertedThief, InvertedGator, InvertedGraveyardSkeleton, InvertedGraveyardSkeleton);
		break;
				
		case 101://Oasis
			chosenZombie = choose(BoneFish, BoneFish, BoneFish, BoneFish, BoneFish, JellyFish, JellyFish, Crab, GraveyardSkeleton);
		break;
		case 122:
			chosenZombie = choose(InvertedBoneFish, InvertedBoneFish, InvertedBoneFish, InvertedBoneFish, InvertedBoneFish, InvertedJellyFish, InvertedJellyFish, InvertedCrab, InvertedGraveyardSkeleton);
		break;
				
		case 102://Mansion
			chosenZombie = choose(Molefish, Molefish, Molefish, Molesarge, Molesarge, Molesarge, FireBaller, FireBaller, SuperFireBaller, GraveyardSkeleton, GraveyardSkeleton);
		break;
		case 125:
			chosenZombie = choose(InvertedMolefish, InvertedMolefish, InvertedMolefish, InvertedMolesarge, InvertedMolesarge, InvertedMolesarge, InvertedFireBaller, InvertedFireBaller, InvertedSuperFireBaller, InvertedGraveyardSkeleton, InvertedGraveyardSkeleton);
		break;
				
		case 103://Pizza
			chosenZombie = choose(Turtle, Turtle, GraveyardSkeleton);
		break;
				
		case 114://Jungle
			chosenZombie = choose(JungleBandit, JungleBandit, JungleBandit, JungleAssassin, JungleAssassin, Maggot, Maggot, Maggot, GraveyardSkeleton, GraveyardSkeleton);
		break;
		case 123:
			chosenZombie = choose(InvertedJungleBandit, InvertedJungleBandit, InvertedJungleBandit, InvertedJungleAssassin, InvertedJungleAssassin, MaggotInverted, MaggotInverted, MaggotInverted, InvertedGraveyardSkeleton, InvertedGraveyardSkeleton);
		break;
				
		case 115://Cheese
			chosenZombie = choose(GraveyardSniper, GraveyardSkeleton, GraveyardSkeleton, GraveyardSkeleton, CursedSpider, CursedSpider, CursedCrystal);
		break;
				
		case 117://Mushroom
			chosenZombie = choose(ToxicMushroomGuy, ToxicMushroomGuy, FrogEgg, FastRat, BuffMushroom, Exploder, Gator);
		break;
		case 124:
			chosenZombie = choose(InvertedToxicMushroomGuy, InvertedToxicMushroomGuy, InvertedFrogEgg, InvertedFastRat, InvertedBuffMushroom, InvertedExploder, InvertedGator);
		break;
				
		case 126://Graveyard
			chosenZombie = choose(GraveyardSkeleton, GraveyardSkeleton, GraveyardSkeleton, GraveyardSkeleton, GraveyardSniper);
		break;
		case 127://Graveyard
			chosenZombie = choose(InvertedGraveyardSkeleton, InvertedGraveyardSkeleton, InvertedGraveyardSkeleton, InvertedGraveyardSkeleton, InvertedGraveyardSniper);
		break;
	}
	with instance_create(x,y,chosenZombie)
	{
		wasResurrected = true;
		raddrop = ceil(raddrop*0.5);
		existTime = 25;
		alarm[1] *= 0.2;
	}
	//x = xstart + random_range(-10, 10);
	//y = ystart + random_range(-10, 10);
}
///scrPopEnemies1vs1();
// /@description
///@param
function scrPopEnemies1vs1(area, subarea, loops){
	//Overrule current spawns
	if (//Already 1v1 pretty much
		!(area == 7 && subarea == 3) &&
		!(area == 108 && subarea == 3) &&
		!(area == 9 && subarea == 3) &&
		!(area == 118 && subarea == 3) &&
		!(area == 4 && subarea == 2) &&
		!(area == 111 && subarea == 2) &&
		!(area == 6 && subarea == 2) &&
		!(area == 112 && subarea == 2)
	)
	{
		with enemy
			instance_destroy(id,false);
		with becomenemy
			instance_destroy(id,false);
	}

	if !instance_exists(OneVOne)
	{
		instance_create(x,y,OneVOne);	
	}
	var enem = Bandit;
	var buff = 6*clamp(1+loops*0.5,1,10);
	var sBuff = 1.5;
	if area == 1 // Desert
	{
		if subarea == 1
		{
			if loops > 0
				enem = GoldScorpion;
			else
			{
				enem = BigMaggot;
				sBuff = 1.8;
			}
		}
		else if subarea == 2
		{
			enem = Scorpion;
			if loops > 1
				enem = SandWorm;
		}
		else if subarea == 3
		{
			buff = 1.8*clamp(1+loops*0.5,1,10);
			enem = BanditBoss;
			sBuff = 1.2;
		}
	}
	else if area == 105 // Inverted Desert
	{
		if subarea == 1
		{
			if loops > 0
				enem = InvertedGoldScorpion;
			else
			{
				enem = BigMaggotInverted;
				sBuff = 1.8;
			}
		}
		else if subarea == 2
		{
			enem = InvertedScorpion;
			if loops > 1
				enem = InvertedSandWorm;
		}
		else if subarea == 3
		{
			buff = 1.8*clamp(1+loops*0.5,1,10);
			enem = InvertedBanditBoss;
			sBuff = 1.2;
		}
	}
	else if area == 2 // Sewers
	{
		if loops > 0
		{
			buff = 1.4*clamp(1+loops*0.5,1,10);
			enem = BallMom;
			sBuff = 1.2;
		}
		else
		{
			enem = BuffGator;
		}
	}
	else if area == 110 // Inverted Sewers
	{
		if loops > 0
		{
			buff = 1.5*clamp(1+loops*0.5,1,10);
			enem = BallMom;
			sBuff = 1.2;
		}
		else
		{
			enem = BuffGator;
		}
	}
	else if area == 3 // Scrapyard
	{
		if subarea == 1
		{
			if loops > 0
			{
				enem = GoldenSniper;
				sBuff = 3;
				buff *= 1.4;
			}
			else
			{
				enem = Raven;
				sBuff = 2;
				buff *= 1.5;
			}
		}
		else if subarea == 2
		{
			if loops > 0
			{
				enem = AssassinBoss;
				sBuff = 1.2;
				buff = 1.2*clamp(1+loops*0.5,1,10);
			}
			else
			{
				enem = GoldenSniper;
				sBuff = 3;
				buff *= 1.4;
			}
		}
		else if subarea == 3
		{
			buff = 1.7*clamp(1+loops*0.5,1,10);
			enem = ScrapBoss;
			sBuff = 2;
		}
	}
	else if area == 106 // Inverted Scrapyard
	{
		if subarea == 1
		{
			if loops > 0
			{
				enem = InvertedGoldenSniper;
				sBuff = 3;
				buff *= 1.4;
			}
			else
			{
				enem = InvertedRaven;
				sBuff = 2;
				buff *= 1.5;
			}
		}
		else if subarea == 2
		{
			if loops > 0
			{
				enem = InvertedAssassinBoss;
				sBuff = 1.2;
				buff = 1.2*clamp(1+loops*0.5,1,10);
			}
			else
			{
				enem = InvertedGoldenSniper;
				sBuff = 3;
				buff *= 1.4;
			}
		}
		else if subarea == 3
		{
			buff = 1.7*clamp(1+loops*0.5,1,10);
			enem = InvertedScrapBoss;
			sBuff = 2;
		}
	}
	else if area == 4 // Crystal Caves
	{
		if subarea == 1
		{
			if loops > 0
			{
				enem = HyperCrystal;
				buff = 1.2*clamp(1+loops*0.5,1,10);
				sBuff = 1.7;
			}
			else
				enem = Spider;
		}
		else if subarea == 2
		{
			enem = BigBadBat;
			buff = 1.05;
		}
	}
	else if area == 111 // Inverted Crystal Caves
	{
		if subarea == 1
		{
			if loops > 0
			{
				enem = InvertedHyperCrystal;
				buff = 1.2*clamp(1+loops*0.5,1,10);
				sBuff = 1.7;
			}
			else
				enem = InvertedSpider;
		}
		else if subarea == 2
		{
			enem = InvertedBigBadBat;
			buff = 1.05;
		}
	}
	else if area == 115 // Cursed Crystal Caves
	{
		if loops > 0
		{
			enem = CursedHyperCrystal;
			buff = 1.2*clamp(1+loops*0.5,1,10);
			sBuff = 1.7;
		}
		else
			enem = CursedSpider;
	}
	else if area == 5 // Frozen City
	{
		if subarea == 1
		{
			enem = Wolf;
			buff*= 1.25;
		}
		else if subarea == 2
		{
			enem = SnowTank;
			if loops > 0
			{
				buff = 1.4*clamp(1+loops*0.5,1,10);
				sBuff = 1.2;
				enem = BigDisc;
			}
		}
		else if subarea == 3
		{
			buff = 1.8*clamp(1+loops*0.5,1,10);
			enem = LilHunter;
			sBuff = 1.2;
		}
	}
	else if area == 107 // Inverted Frozen City
	{
		if subarea == 1
		{
			enem = InvertedWolf
			buff*= 1.25;
		}
		else if subarea == 2
		{
			enem = InvertedSnowTank;
			if loops > 0
			{
				buff = 1.4*clamp(1+loops*0.5,1,10);
				sBuff = 1.2;
				enem = InvertedBigDisc;
			}
		}
		else if subarea == 3
		{
			buff = 1.8*clamp(1+loops*0.5,1,10);
			enem = InvertedLilHunter;
			sBuff = 1.2;
		}
	}
	else if area == 6 // Labs
	{
		if subarea == 1
		{
			enem = RhinoFreak;
			buff *= 0.8;
			sBuff = 1.8;
		}
		else if subarea == 2
		{
			enem = noone;
			sBuff = 1;
			buff = 1.1*clamp(1+loops*0.5,1,10);
		}
	}
	else if area == 112 // Inverted Labs
	{
		if subarea == 1
		{
			enem = InvertedRhinoFreak;
			buff *= 0.8;
			sBuff = 1.8;
		}
		else if subarea == 3
		{
			enem = noone;
			sBuff = 1;
			buff = 1.1*clamp(1+loops*0.5,1,10);
		}
	}
	else if area == 7 // Vulcano
	{
		if subarea == 1
		{
			enem = LavaBallEnemy;
			sBuff = 1.3;
		}
		else if subarea == 2
		{
			enem = FireWorm;
			sBuff = 1.3;
		}
		else if subarea == 3
		{
			enem = noone;
			buff = 1.1*clamp(1+loops*0.25,1,5);
			sBuff = 1.2;
		}
	}
	else if area == 108 // Vulcano
	{
		if subarea == 1
		{
			enem = InvertedLavaBallEnemy;
			sBuff = 1.3;
		}
		else if subarea == 2
		{
			enem = InvertedFireWorm;
			sBuff = 1.3;
		}
		else if subarea == 3
		{
			enem = noone;
			buff = 1.1*clamp(1+loops*0.5,1,10);
		}
	}
	else if area == 8 // Wonderland
	{
		if subarea == 1
		{
			enem = CardGuy;
		}
		else if subarea == 2
		{
			enem = CardGuy2;
		}
		else if subarea == 3
		{
			enem = ChesireCat;
			buff = 1.4*clamp(1+loops*0.5,1,10);
			sBuff = 1.3;
		}
	}
	else if area == 109 // Wonderland
	{
		if subarea == 1
		{
			enem = InvertedCardGuy;
		}
		else if subarea == 2
		{
			enem = InvertedCardGuy2;
		}
		else if subarea == 3
		{
			enem = InvertedChesireCat;
			buff = 1.4*clamp(1+loops*0.5,1,10);
			sBuff = 1.3;
		}
	}
	else if area == 9 // Palace
	{
		if subarea == 1
		{
			if loops > 1
				enem = WallCrawler;
			else	
				enem = PalaceGuardian;
		}
		else if subarea == 2
		{
			enem = GuardianDog;
			buff *= 0.75;
		}
		else if subarea == 3
		{
			enem = noone;
			buff = 1;
			sBuff = 1;
		}
	}
	else if area == 118 // Inverted Palace
	{
		if subarea == 1
		{
			if loops > 1
				enem = InvertedWallCrawler;
			else
				enem = InvertedPalaceGuardian;
		}
		else if subarea == 2
		{
			enem = InvertedGuardianDog;
			buff *= 0.75;
		}
		else if subarea == 3
		{
			enem = noone;
			buff = 1;
			sBuff = 1;
		}
	}
	else if area == 10 // Savanna
	{
		if subarea == 1
		{
			enem = Hyena;
			sBuff = 1.1;
			if loops > 0
				enem = GoldHyena;
		}
		else if subarea == 2
		{
			enem = Vulture;
		}
		else if subarea == 3
		{
			enem = BigVulture;
			buff = 1.8*clamp(1+loops*0.5,1,10);
			sBuff = 1.4;
		}
	}
	else if area == 121 // Inverted Savanna
	{
		if subarea == 1
		{
			enem = InvertedHyena;
			sBuff = 1.1;
			if loops > 0
				enem = InvertedGoldHyena;
		}
		else if subarea == 2
		{
			enem = InvertedVulture;
		}
		else if subarea == 3
		{
			enem = InvertedBigVulture;
			buff = 1.8*clamp(1+loops*0.5,1,10);
			sBuff = 1.4;
		}
	}
	else if area == 101 // Oasis
	{
		if subarea == 1
		{
			enem = JellyFish;
			buff *= 1.5;
			sBuff = 2;
		}
		else if subarea == 2
		{
			enem = Crab;
		}
		else if subarea == 3
		{
			enem = BigFish;
			buff = 1.4*clamp(1+loops*0.5,1,10);
			sBuff = 1.2;
		}
	}
	else if area == 122 // Inverted Oasis
	{
		if subarea == 1
		{
			enem = JellyFish;
			buff *= 1.5;
			sBuff = 2;
		}
		else if subarea == 2
		{
			enem = Crab;
		}
		else if subarea == 3
		{
			enem = BigFish;
			buff = 1.8*clamp(1+loops*0.5,1,10);
			sBuff = 1.4;
		}
	}
	else if area == 103 // Mansion
	{
		enem = SuperFireBaller;
	}
	else if area == 125 // Inverted Mansion
	{
		enem = InvertedSuperFireBaller;
	}
	else if area == 102 // Pizza
	{
		enem = Turtle;
	}
	else if area == 114 // Jungle
	{
		if subarea == 1
		{
			enem = JungleBandit;
		}
		else if subarea == 2
		{
			enem = JungleBoss;
			buff = 1.4*clamp(1+loops*0.5,1,10);
			sBuff = 1.2;
		}
	}
	else if area == 123 // Inverted Jungle
	{
		if subarea == 1
		{
			enem = InvertedJungleBandit;
		}
		else if subarea == 2
		{
			enem = InvertedJungleBoss;
			buff = 1.4*clamp(1+loops*0.5,1,10);
			sBuff = 1.2;
		}
	}
	else if area == 117 // Mushroom
	{
		enem = BuffMushroom;
	}
	else if area == 124 // Inverted Mushroom
	{
		enem = InvertedBuffMushroom;
	}
	else if area == 126 // Graveyard
	{
		enem = GraveyardFish;
		buff = 1.2*clamp(1+loops*0.5,1,10);
		sBuff = 1.1;
	}
	else if area == 127 // Inverted Graveyard
	{
		enem = InvertedGraveyardFish;
		buff = 1.2*clamp(1+loops*0.5,1,10);
		sBuff = 1.1;
	}
	else if area == 128 // Courtyard
	{
		if subarea == 1
		{
			enem = CourtyardTank;
		}
		else if subarea == 2
		{
			enem = CrownGlutton;
			buff = 1.4*clamp(1+loops*0.5,1,10);
			sBuff = 1.2;
		}
	}
	else if area == 129 // Inverted Courtyard
	{
		if subarea == 1
		{
			enem = InvertedCourtyardTank;
		}
		else if subarea == 2
		{
			enem = InvertedCourtyardGuardian;
		}
	}
	else if area == 130 // Factory
	{
		enem = BossBot;
		buff = 1.8*clamp(1+loops*0.5,1,10);
		sBuff = 1.2;
	}
	else if area == 131 // Factory
	{
		enem = InvertedBossBot;
		buff = 1.8*clamp(1+loops*0.5,1,10);
		sBuff = 1.2;
	}
	else if area == 132 // Factory
	{
		enem = CursedBossBot;
		buff = 1.8*clamp(1+loops*0.5,1,10);
		sBuff = 1.2;
	}
	else if area == 133 // Factory
	{
		enem = GoldenBossBot;
		buff = 1.8*clamp(1+loops*0.5,1,10);
		sBuff = 1.2;
	}
	else if area == 134 // Factory
	{
		enem = UltraBossBot;
		buff = 1.8*clamp(1+loops*0.5,1,10);
		sBuff = 1.2;
	}
	else if area == 136 // Ultra scrapyard
	{
		buff = 1.5*clamp(1+loops*0.25,1,5);
		enem = ScrapBoss;
		sBuff = 1.2;	
	}
	else if area == 138 //Sky
	{
		if subarea == 1
		{
			enem = CloudShooter;
		}
		else if subarea == 2
		{
			enem = CloudFlyer;
		}
	}
	else if area == 139 //The Pit
	{
		enem = PitGhostSpawner;
	}
	else if area == 140 //Inv Sky
	{
		enem = InvertedCloudShooter;
	}
	if enem != noone
		scrSpawnBoss(enem);
	with enemy
	{
		raddrop *= buff;
		maxhealth *= buff;
		my_health = maxhealth;
		EnemyHealthAdjustments();
		meleedamage *= 2;
	}
	with OneVOne
	{
		speedBuff = sBuff;
	}
}
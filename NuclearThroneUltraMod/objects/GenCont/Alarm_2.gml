/// @description BOSSES mods secret areas
if !instance_exists(Player)
{
	alarm[2] = 1;
	if alarm[1] > 0
		alarm[1] += 1;
	exit;
}
scrActivateAllOutOfRange();
SetSeed();
scrDecideInvader();
var spawnarea =  Player.area;
var subarea =  Player.subarea;
if ( !((spawnarea == 9 || spawnarea == 118) && subarea == 3) && !((spawnarea == 6 || spawnarea == 112) && subarea == 2)
	&& !(spawnarea == 119 || spawnarea == 120)
	&& spawnarea != 100 && spawnarea != 104
	&& spawnarea != 137)
{
	var tots = clamp(round(GetPlayerLoops()*0.5) - 3,0,6);
	if scrIsHardMode()//HARD MODE
		tots ++;
	if tots > 0
		scrSpawnBoss(GoldTotem);
	if tots > 1
		scrSpawnMoreBosses(GoldTotem,tots);
		
	var tots = clamp(round(GetPlayerLoops()*0.5) - 3,0,6);
	if scrIsHardMode()//HARD MODE
		tots ++;
	if tots > 1
		scrSpawnBoss(GoldImmuneTotem);
	if tots > 2
		scrSpawnMoreBosses(GoldImmuneTotem,tots);
}
if (Player.area = 3 and Player.subarea = 3)
{
	if scrIsGamemode(44)
	{
		instance_create(instance_furthest(Player.x,Player.y,Floor).x+16, instance_furthest(Player.x,Player.y,Floor).y+16,LilHunter)
	}
	else
	{
		var n = instance_furthest(Player.x,Player.y,Floor)
		instance_create(n.x+16, n.y+16,BecomeScrapBoss);

		var f = instance_furthest(n.x,n.y,Floor);
		var d = point_direction(n.x,n.y,f.x,f.y);
		var ds = point_distance(n.x,n.y,f.x,f.y)*0.6;
		var nn = instance_nearest(n.x+lengthdir_x(ds,d),n.y+lengthdir_y(ds,d),Floor);
		instance_create(nn.x+16,nn.y+16,DragonSkull);
		if Player.loops > 4
		{
			scrSpawnMoreBosses(BecomeScrapBoss,1+clamp(floor((Player.loops-4)*0.5),1,3));
		}
	}
}
else if (Player.area = 136 and Player.subarea == 3)
{
	var n = instance_furthest(Player.x,Player.y,Floor)
	instance_create(n.x+16, n.y+16,BecomeUltraBigDog);

	var f = instance_furthest(n.x,n.y,Floor);
	var d = point_direction(n.x,n.y,f.x,f.y);
	var ds = point_distance(n.x,n.y,f.x,f.y)*0.6;
	var nn = instance_nearest(n.x+lengthdir_x(ds,d),n.y+lengthdir_y(ds,d),Floor);
}
if ((Player.area == 101 || Player.area == 122) and Player.subarea == 3)
{
	if instance_exists(SunkenCar)
	{
		with instance_furthest(Player.x,Player.y,SunkenCar)
		{
			instance_destroy(id,false);
			instance_create(x,y,WallBreak);
			instance_create(x,y,CarVenusOasis);
			with Debris
				instance_destroy();
		}
	}
	else
	{
		var mindis = 96;
		if instance_exists(Player)
		do {
			with Floor
			{
				var xx = x + 16;
				var yy = y + 16;
				if !instance_exists(CarVenusOasis) && point_distance(xx,yy,Player.x,Player.y > mindis) && styleb == 0
				{
					instance_create(xx,yy,WallBreak);
					instance_create(xx,yy,CarVenusOasis);
				}
			}
			mindis -= 32;
		} until (instance_exists(CarVenusOasis) || mindis < 64)
	}
	if !instance_exists(CarVenusOasis)
	{
		with instance_furthest(Player.x,Player.y,Floor)
		{
			instance_create(x+16,y+16,CarVenusOasis);
		}
	}
	if Player.area == 122
	{
		with CarVenusOasis
		{
			spr_idle = sprVenusCarInvertedOasis
			spr_hurt = sprVenusCarInvertedOasisHurt
		}
	}
}
if Player.area = 106 and Player.subarea = 3 && !scrIsGamemode(40)
{
	var n = instance_furthest(Player.x,Player.y,Floor)
	instance_create(n.x+16, n.y+16,BecomeInvertedScrapBoss)
	if Player.loops > 4
	{
		scrSpawnMoreBosses(BecomeInvertedScrapBoss,1+clamp(floor((Player.loops-4)*0.5),1,3));
	}
	var f = instance_furthest(n.x,n.y,Floor);
	var d = point_direction(n.x,n.y,f.x,f.y);
	var ds = point_distance(n.x,n.y,f.x,f.y)*0.6;
	var nn = instance_nearest(n.x+lengthdir_x(ds,d),n.y+lengthdir_y(ds,d),Floor);
	instance_create(nn.x+16,nn.y+16,DragonSkull);
}

if Player.area = 114 and Player.subarea = 2 && !scrIsGamemode(40)
{
	if (scrIsGamemode(44)) {
		scrSpawnBoss(BecomeScrapBoss);
		if (Player.loops > 4)
			scrSpawnMoreBosses(BecomeScrapBoss,1+clamp(floor((Player.loops-4)*0.5),1,3));
	}
	else
	{
		scrSpawnBoss(BecomeJungleBoss);
		if (Player.loops > 4)
			scrSpawnMoreBosses(BecomeJungleBoss,1+clamp(floor((Player.loops-4)*0.5),1,3));
	}
}
if Player.area = 123 and Player.subarea = 2 && !scrIsGamemode(40)
{
	if (scrIsGamemode(44)) {
		scrSpawnBoss(BecomeInvertedScrapBoss);
		if (Player.loops > 4)
			scrSpawnMoreBosses(BecomeInvertedScrapBoss,1+clamp(floor((Player.loops-4)*0.5),1,3));
	}
	else
	{
		scrSpawnBoss(BecomeInvertedJungleBoss);
		if (Player.loops > 4)
			scrSpawnMoreBosses(BecomeInvertedJungleBoss,1+clamp(floor((Player.loops-4)*0.5),1,3));
	}
}
	if (Player.area = 5 and Player.subarea = 3) && !scrIsGamemode(40)
	instance_create(instance_furthest(Player.x,Player.y,Floor).x+16, instance_furthest(Player.x,Player.y,Floor).y+16,LilHunter)

	if (Player.area = 107 and Player.subarea = 3) && !scrIsGamemode(40)//inverted frozen city
	instance_create(instance_furthest(Player.x,Player.y,Floor).x+16, instance_furthest(Player.x,Player.y,Floor).y+16,InvertedLilHunter)

	if (Player.loops>1) && (Player.area = 5 and Player.subarea = 3) && !scrIsGamemode(40)
	{
		if scrIsGamemode(44)
		{
			repeat(clamp(floor((Player.loops-1)*0.2),0,2))
				instance_create(instance_furthest(Player.x,Player.y,Floor).x+132, instance_furthest(Player.x,Player.y,Floor).y+32,BigBadBat);
		}
		else
		{
			repeat(clamp(floor((Player.loops-1)*0.25),0,3))
				instance_create(instance_furthest(Player.x,Player.y,Floor).x+132, instance_furthest(Player.x,Player.y,Floor).y+32,LilHunter);
		}
	}
	if (Player.loops>1) && (Player.area = 107 and Player.subarea = 3) && !scrIsGamemode(40)
	{
		repeat(clamp(floor((Player.loops-1)*0.25),1,3))
			instance_create(instance_furthest(Player.x,Player.y,Floor).x+132, instance_furthest(Player.x,Player.y,Floor).y+32,InvertedLilHunter);
	}
if Player.loops > 1 && (Player.area == 5 && Player.subarea == 2) && !scrIsGamemode(40)
{
	scrSpawnBoss(BigDisc);
	if (Player.loops > 5)
		scrSpawnMoreBosses(BigDisc,1+clamp(floor((Player.loops-4)*0.25),1,2));
}
if Player.loops > 0 && (Player.area == 107 && Player.subarea == 2)
{
	scrSpawnBoss(InvertedBigDisc);
	if (Player.loops > 5)
		scrSpawnMoreBosses(InvertedBigDisc,1+clamp(floor((Player.loops-4)*0.25),1,2));
}
if (Player.loops > 1 && ((Player.area == 2 && Player.subarea == 1) ||  Player.area == 10 && Player.subarea == 2))
{
	scrSpawnBoss(BallMom);
	if (Player.loops > 5)
		scrSpawnMoreBosses(BallMom,1+clamp(floor((Player.loops-4)*0.25),1,2));
}
if (Player.loops > 1 && ((Player.area == 110 && Player.subarea == 1) || (Player.area == 121 && Player.subarea == 2)) )
{
	scrSpawnBoss(InvertedBallMom);
	if (Player.loops > 5)
		scrSpawnMoreBosses(InvertedBallMom,1+clamp(floor((Player.loops-4)*0.25),1,2));
}
if (Player.loops > 0 && Player.area == 4 && Player.subarea == 1)
{
	scrSpawnBoss(HyperCrystal);
	if (Player.loops > 5)
		scrSpawnMoreBosses(HyperCrystal,1+clamp(floor((Player.loops-4)*0.25),1,2));
}
if (Player.loops > 0 && Player.area == 111 && Player.subarea == 1)
{
	scrSpawnBoss(InvertedHyperCrystal);
	if (Player.loops > 5)
		scrSpawnMoreBosses(InvertedHyperCrystal,1+clamp(floor((Player.loops-4)*0.25),1,2));
}
if (Player.loops > 0 && Player.area == 115 && Player.subarea == 1)
{
	scrSpawnBoss(CursedHyperCrystal);
	if (Player.loops > 5)
		scrSpawnMoreBosses(CursedHyperCrystal,1+clamp(floor((Player.loops-4)*0.25),1,2));
}
if (Player.loops > 0 && Player.area == 6 && Player.subarea == 1)
{
	scrSpawnTechnomancer(Technomancer);
}
if (Player.loops > 0 && Player.area == 112 && Player.subarea == 1)
{
	scrSpawnTechnomancer(InvertedTechnomancer);
}
if (Player.loops > 1 && Player.area == 117 && Player.subarea == 1)
{
	scrSpawnBoss(BecomeMushroomBoss)
	scrSpawnMoreBosses(BecomeMushroomBoss,3);
}
if (Player.loops > 1 && Player.area == 124 && Player.subarea == 1)
{
	//INV mushroomland
	scrSpawnBoss(BecomeInvertedMushroomBoss)
	scrSpawnMoreBosses(BecomeInvertedMushroomBoss,3);
}
if (Player.race=22 && Player.area!=100 && Player.area!=104 && !( (Player.area == 9 || Player.area == 118) && Player.subarea == 3))
{

	var ammoWant = 1+Player.skill_got[23]+Player.skill_got[5];
	if scrIsCrown(15)//CROWN OF CHOICE
		ammoWant += choose(0,0,1);
	while (instance_number(RogueAmmoChest) < ammoWant)
	{
		with instance_furthest(Player.x+random(128)-64,Player.y+random(128)-64,Floor)
		{
			if !collision_point(x,y,RogueAmmoChest,false,false)
				instance_create(x+16,y+16,RogueAmmoChest);
		}
	}
	if Player.ultra_got[88]
	{
		with RogueAmmoChest
		{
			instance_destroy(id,false);
			instance_create(x,y,RadChest);	
		}
	}
}


if Player.area = 100
{
	var exitX = 10016;
	var exitY = 10016;
	instance_create(exitX,exitY,CrownVaultExit);
	if Player.crownvisits > 1 && !Player.justLoadedRun{
		instance_create(exitX-32,exitY-32,WeaponMod);
		with instance_create(exitX+32,exitY-32,WeaponMod)
			image_xscale=-1;
	}
	exitX -= 16;
	exitY += 16;
	instance_create(exitX-32,exitY-64,Floor);
	instance_create(exitX,exitY-64,Floor);
	instance_create(exitX+32,exitY-64,Floor);
	if (Player.crownvisits > 0 && array_length(Player.crown) > 0 && Player.crown[0] != 1 && !UberCont.canMultiCrown)
	{
		instance_create(exitX,exitY-96,Floor);
		instance_create(exitX,exitY-128,Floor);	
		instance_create(exitX+16,exitY-128,CourtyardEntrance)
	}
	y -= 16;
	if Player.skill_got[30] && !Player.justLoadedRun
	{
		instance_create(exitX-32,exitY+64,Floor);
		instance_create(exitX,exitY+64,Floor);
		instance_create(exitX+32,exitY+64,Floor);
		exitX += 16;
		exitY -= 16;
		instance_create(exitX-32,exitY+64,WeaponMod)
		with instance_create(exitX+32,exitY+64,WeaponMod)
			image_xscale=-1;	
	}
	//Secret agent sheep
	if Player.ultra_got[50] && Player.altUltra
	{
		instance_create(exitX-32,exitY,Floor);
		instance_create(exitX-64,exitY,Floor);
		instance_create(exitX-96,exitY,Floor);
		with instance_create(exitX-94+16,exitY-16,CrownVaultSecretExit)
			event_user(0)
		instance_create(exitX+32,exitY,Floor);
		instance_create(exitX+64,exitY,Floor);
		instance_create(exitX+96,exitY,Floor);
		with instance_create(exitX+94+16,exitY-16,CrownVaultSecretExit)
			event_user(1)
		with instance_create(exitX + 16,exitY+80,CrownVaultSecretExit)
			event_user(2)
	}
	with instance_furthest(Player.x,Player.y,Floor)
	{
		instance_create(x+16,y+16,CrownPickup)
	    
		if Player.loops > 0 || scrIsGamemode(36)//Ultra mod start
		{
			var xx = x;
			var yy = y;
			var msk = mask_index;
			mask_index = mskFloor;
			var xstep = 32;
			if Player.x > x
				xstep = -32;
			var ystep = 32;
			var ztop = true;
			if Player.y > y
			{
				ystep = -32;
				ztop = false;
			}
			repeat(12)
			{
				xx += xstep;
				if (!place_meeting(xx,yy,Floor))
				{
					with instance_create(xx,yy,Floor)
					{
						styleb = 1;
						sprite_index = sprFloor100D;
					}
				}
			}
			instance_create(xx,yy,SurvivalWave);
			var oy = yy;
			for (var ix = 0; ix < 10; ix++) {
				yy = oy;
				for (var iy = 0; iy < 10; iy++) {
				    with instance_create(xx,yy,Floor)
					{
						styleb = 0;	
					}
					if iy == 5 && ix == 4 + max(0,sign(xstep))
					{
						instance_create(xx,yy,SurvivalArenaStarter);
					}
					yy += ystep;
				}
				xx += xstep;
			}
		}
		if (Player.loops > 0)
		{
			//Reroll station
			if (instance_exists(Player))
			{
				xx = x;
				yy = y;
				repeat(9)
				{
					if (!place_meeting(xx,yy,Floor))
					{
						with instance_create(xx,yy,Floor)
						{
							styleb = 1;
							sprite_index = sprFloor100C;
						}
					}
					yy += ystep;
				}
				var s = 5;
				xx -= xstep * 2;
				var oy = yy;
				for (var ix = 0; ix < s; ix++) {
					yy = oy;
					for (var iy = 0; iy < s; iy++) {
						instance_create(xx,yy,TorchKiller);
					    with instance_create(xx,yy,Floor)
						{
							styleb = 0;	
						}
						if ((ix == s-1 || ix == 0) && (iy == s-1 || iy == 0))
							instance_create(xx+16,yy+16,Torch);
						else if (ix == 2 && iy == 2)
						{
							if UberCont.enableReroll
								instance_create(xx+16,yy+16,RerollStation);
							else
								instance_create(xx+16,yy+16,InactiveRerollStation);
						}
						yy += ystep;
					}
					xx += xstep;
				}
			}
			
			//Statue room
			xstep *= -1;
			xx = x;
			yy = y;
			var pathI = 0;
			repeat(12)
			{
				pathI ++;
				if (!place_meeting(xx,yy,Floor))
				{
					with instance_create(xx,yy,Floor)
					{
						//isArenaFloor = true;
						styleb = 1;
						sprite_index = sprFloor100C;
					}
				}
				if pathI == 6 && UberCont.collectedInversionShards > 0 && UberCont.collectedInversionShardReward == false
				{
					var currentyy = yy;
					var currentxx = xx;
					repeat(9)
					{
						if (!place_meeting(xx,yy,Floor))
						{
							with instance_create(xx,yy,Floor)
							{
								styleb = 1;
								sprite_index = sprFloor100C;
							}
						}
						yy += ystep;
					}
					//Inversion Shard room
					var s = 5;
					xx -= xstep * 2;
					var oy = yy;
					for (var ix = 0; ix < s; ix++) {
						yy = oy;
						for (var iy = 0; iy < s; iy++) {
							instance_create(xx,yy,TorchKiller);
						    with instance_create(xx,yy,Floor)
							{
								styleb = 0;	
							}
							if ((ix == s-1 || ix == 0) && (iy == s-1 || iy == 0))
								instance_create(xx+16,yy+16,Torch);
							else if (ix == 2 && iy == 2)
								instance_create(xx+16,yy+16,InversionShardReward);
							yy += ystep;
						}
						xx += xstep;
					}
					yy = currentyy;
					xx = currentxx;
				}
				xx += xstep;
			}
			//instance_create(xx,yy,SurvivalWave);
			var oy = yy;
			for (var ix = 0; ix < 32; ix++) {
				yy = oy;
				for (var iy = 0; iy < 10; iy++) {
				    with instance_create(xx,yy,Floor)
					{
						isArenaFloor = true;
						//Generate a floppydisc on the floor
						if ((ix > 0 && ix < 9 && iy > 4 && iy < 9)
						|| (ix > 2 && ix < 8 && iy < 3 && !(ix == 4 && iy == 1)
						) || ((ix > 10 && ix < 27) && (iy == 4 || iy == 5)))
						{
							sprite_index = sprFloor100C;
							styleb = 1;
						}
						else
						{
							styleb = 0;	
						}
					}
					if ix > 9
					{
						instance_create(xx,yy,TorchKiller);	
					}
						//Statues
						if ix == 28 && iy == 5
						{
							if ztop
								instance_create(xx+16,yy,BecomeBallBoss);
							else
								instance_create(xx+16,yy+32,BecomeBallBoss);
						}
						if  iy == 2
						{
							if ix == 11
							{
								if ztop
									instance_create(xx+16,yy,Torch);
								else
									instance_create(xx+16,yy+16,Torch);
							}
							if ix == 13
							{
								if ztop
									instance_create(xx+16,yy,Torch);
								else
									instance_create(xx+16,yy+16,Torch);
							}
						}
						if ix == 12 && iy == 3 {
							instance_create(xx+16,yy+16,BigVultureBossReward);
						}
						if ix == 12 && iy == 1
						{
							instance_create(xx+16,yy+16,BigVultureStatue);
						}
						
						if  iy == 2
						{
							if ix == 16
							{
								
								if ztop
									instance_create(xx+16,yy,Torch);
								else
									instance_create(xx+16,yy+16,Torch);
							}
							if ix == 18
							{
								if ztop
									instance_create(xx+16,yy,Torch);
								else
									instance_create(xx+16,yy+16,Torch);
							}
						}
						if ix == 17 && iy == 3 {
							instance_create(xx+16,yy+16,BushBoxBossReward);
						}
						if ix == 17 && iy == 1
						{
							instance_create(xx+16,yy+16,BushBoxStatue);
						}
						
						
						if  iy == 2
						{
							if ix == 21
							{
								
								if ztop
									instance_create(xx+16,yy,Torch);
								else
									instance_create(xx+16,yy+16,Torch);
							}
							if ix == 23
							{
								if ztop
									instance_create(xx+16,yy,Torch);
								else
									instance_create(xx+16,yy+16,Torch);
							}
						}
						if ix == 22 && iy == 3 {
							instance_create(xx+16,yy+16,HyperCrystalBossReward);
						}
						if ix == 22 && iy == 1
						{
							instance_create(xx+16,yy+16,HyperCrystalStatue);
						}
						
						if  iy == 7
						{
							if ix == 11
							{
								
								if !ztop
									instance_create(xx+16,yy,Torch);
								else
									instance_create(xx+16,yy+16,Torch);
							}
							if ix == 13
							{
								if !ztop
									instance_create(xx+16,yy,Torch);
								else
									instance_create(xx+16,yy+16,Torch);
							}
						}
						if ix == 12 && iy == 6 {
							instance_create(xx+16,yy+16,BigFishBossReward);
						}
						if ix == 12 && iy == 8
						{
							instance_create(xx+16,yy+16,BigFishStatue);
						}
						
						if  iy == 7
						{
							if ix == 16
							{
								
								if !ztop
									instance_create(xx+16,yy,Torch);
								else
									instance_create(xx+16,yy+16,Torch);
							}
							if ix == 18
							{
								if !ztop
									instance_create(xx+16,yy,Torch);
								else
									instance_create(xx+16,yy+16,Torch);
							}
						}
						if ix == 17 && iy == 6 {
							instance_create(xx+16,yy+16,ChesireCatBossReward);
						}
						if ix == 17 && iy == 8
						{
							instance_create(xx+16,yy+16,ChesireCatStatue);
						}
						
						if  iy == 7
						{
							if ix == 21
							{
								
								if !ztop
									instance_create(xx+16,yy,Torch);
								else
									instance_create(xx+16,yy+16,Torch);
							}
							if ix == 23
							{
								if !ztop
									instance_create(xx+16,yy,Torch);
								else
									instance_create(xx+16,yy+16,Torch);
							}
						}
						if ix == 22 && iy == 6 {
							instance_create(xx+16,yy+16,BigAssassinBossReward);
						}
						if ix == 22 && iy == 8
						{
							instance_create(xx+16,yy+16,BigAssassinStatue);
						}
						
		
					yy += ystep;
				}
				xx += xstep;
			}
			mask_index = msk;
		}
	}
}
else if (Player.area > 2 and 
(Player.subarea = 2 || (Player.area == 139 && Player.loops > 0))
&& Player.area!=101&&Player.area!=6
&& Player.area!=102 && Player.area!=103 && Player.area != 125 && Player.area!=104 && Player.area != 4 && Player.area != 111
&& Player.area!=112 && Player.area!=113 && Player.area!=114 && Player.area != 123 && Player.area != 124 && Player.area != 117
&& (Player.area < 128 || Player.area == 139)
&& Player.area!=115 && Player.area!=116 && !scrIsGamemode(25)
&& !(Player.area == 9 && Player.loops > 9) && !(Player.area == 118 && Player.loops > 9))
{
	with instance_nearest((instance_furthest(Player.x,Player.y,Floor).x*2+Player.x)/3+random(128)-64,(instance_furthest(Player.x,Player.y,Floor).y*2+Player.y)/3+random(128)-64,Floor){
		if Player.area=104 {
			//YV Crib yo
			instance_create(x+16,y+16,CarVenusFixed)
		}
		else
		{
			instance_create(x+16,y+16,BecomeProtoStatue)
		} 
	}
}

if Player.area=1 || Player.area == 105
{
	if Player.subarea == 1 && Player.loops < 2
	{
		instance_create(0,0,RetailOasis);
	}
	if Player.subarea == 2
	{
		if Player.area == 105
			with instance_nearest((instance_furthest(Player.x,Player.y,Floor).x*2+Player.x)/6+random(128)-64,(instance_furthest(Player.x,Player.y,Floor).y*2+Player.y)/6-256+random(128)-64,Floor)
				instance_create(x+16,y+16,BigFishSkull)
		else
			with instance_nearest((instance_furthest(Player.x,Player.y,Floor).x*2+Player.x)/3+random(128)-64,(instance_furthest(Player.x,Player.y,Floor).y*2+Player.y)/3+random(128)-64,Floor)
				instance_create(x+16,y+16,BigFishSkull)
	}
}
if Player.area == 9 && Player.subarea == 1
{
	with instance_nearest((instance_furthest(Player.x,Player.y,Floor).x*2+Player.x)/3+random(128)-64,(instance_furthest(Player.x,Player.y,Floor).y*2+Player.y)/3+random(128)-64,Floor)
		instance_create(x+16,y+16,FactoryEntrance)
}
if ((Player.area == 3 || Player.area == 106) && Player.subarea == 2)
{
	if instance_exists(BecomeProtoStatue)
		with instance_furthest(Player.x+random(128)-64+32,Player.y+random(128)-64+32,Floor)
			instance_create(x+16,y+16,UltraScrapyardEntrance)
}

if (scrIsInInvertedArea() || Player.area == 128) && Player.area != 120 && !(Player.area == 118 && Player.subarea == 3)
{
var f = instance_furthest(Player.x,Player.y,Floor);
with instance_nearest((f.x*3+Player.x)/4+random(128)-64+32,(f.y*3+Player.y)/4+random(128)-64+32,Floor)
	instance_create(x+16,y+16,WeaponMod)

}
if (!instance_exists(PitNavigation) && (Player.area == 126 || Player.area == 127))
{
	var f = instance_furthest(Player.x,Player.y,Floor);
	with instance_nearest(f.x+(Player.x*0.5)+random(128)-64,f.y+(Player.y*0.5)+random(128)-64,Floor)
	{
		instance_create(x+16,y+16,WallBreak);
		instance_create(x+16,y+16,InactiveAnyMutationStation);
		
		instance_create(x,y-32,Floor)
		instance_create(x,y+32,Floor)
		instance_create(x-32,y,Floor)
		instance_create(x+32,y,Floor)
		instance_create(x-32,y-32,Floor)
		instance_create(x-32,y+32,Floor)
		instance_create(x+32,y-32,Floor)
		instance_create(x+32,y+32,Floor)
	
		with Floor{
		if point_distance(x,y,other.x,other.y) < 34
		sprite_index = sprFloor100D}
	}
}
if (Player.area == 134)
{
	var f = instance_furthest(Player.x,Player.y,Floor);
	with instance_nearest(f.x+(Player.x*0.5)+random(128)-64,f.y+(Player.y*0.5)+random(128)-64,Floor)
	{
		instance_create(x+16,y+16,WallBreak);
		instance_create(x+16,y+16,InactiveRerollStation);
		
		instance_create(x,y-32,Floor)
		instance_create(x,y+32,Floor)
		instance_create(x-32,y,Floor)
		instance_create(x+32,y,Floor)
		instance_create(x-32,y-32,Floor)
		instance_create(x-32,y+32,Floor)
		instance_create(x+32,y-32,Floor)
		instance_create(x+32,y+32,Floor)
	
		with Floor{
		if point_distance(x,y,other.x,other.y) < 34
		sprite_index = sprFloor100D}
	}
}


if (Player.area == 8 || Player.area == 109) && Player.subarea == 1
{
	//Mushroomland
	with instance_nearest((instance_furthest(Player.x,Player.y,Floor).x*2+Player.x)/4+random(128)-64+32,(instance_furthest(Player.x,Player.y,Floor).y*2+Player.y)/4+random(128)-64+32,Floor)
		instance_create(x+16,y+16,MushroomLandEntranceWonderland)
}
else if (Player.area == 8 || Player.area == 109) && Player.subarea < 3 && Player.banditland
{
	//MUSHROOM WONDERLAND BANDITLAND
	Player.banditland = false;
	with instance_nearest((instance_furthest(Player.x,Player.y,Floor).x*2+Player.x)/4+random(128)-64+32,(instance_furthest(Player.x,Player.y,Floor).y*2+Player.y)/4+random(128)-64+32,Floor)
		instance_create(x+16,y+16,BigMushroom)
}
if Player.area == 103 || Player.area == 125
{
	with instance_nearest((instance_furthest(Player.x,Player.y,Floor).x*2+Player.x)/4+random(128)-64+32,(instance_furthest(Player.x,Player.y,Floor).y*2+Player.y)/4+random(128)-64+32,Floor)
		instance_create(x+16,y+16,MushroomLandEntrance)
}
if ( ((((Player.area == 5 || Player.area == 107) || Player.area == 107) && Player.subarea < 3) || ((Player.area == 114 || Player.area == 123) && Player.subarea == 2)) && (Player.skill_got[18] || Player.skeletonlives > 0))
{
	with instance_nearest((instance_furthest(Player.x,Player.y,Floor).x*2+Player.x)/4+random(128)-64+32,(instance_furthest(Player.x,Player.y,Floor).y*2+Player.y)/4+random(128)-64+32,Floor)
		instance_create(x+16,y+16,JungleFrozenPlant)
}
if Player.area == 102
{
	with instance_nearest((instance_furthest(Player.x,Player.y,Floor).x*2+Player.x)/5+random(128)-64+32,(instance_furthest(Player.x,Player.y,Floor).y*2+Player.y)/5+random(128)-64+32,Floor)
		instance_create(x+16,y+16,GoldenPipe)	
}




if !(( (Player.area == 9 || Player.area == 118) && Player.subarea == 3) || ((Player.area == 6 || Player.area == 112) && Player.subarea == 2) || scrIsGamemode(25) || scrIsGamemode(8)
|| Player.area == 100)
{
	//safe corridors pls
	instance_create(Player.x,Player.y,WallBreak);
	instance_create(Player.x+16,Player.y+16,WallBreak);
	instance_create(Player.x+16,Player.y-16,WallBreak);
	instance_create(Player.x-16,Player.y+16,WallBreak);
	instance_create(Player.x-16,Player.y-16,WallBreak);
}
else if Player.area != 100
{
	Player.x += 16;
	Player.y -= 32;
}

if (Player.area == 119 || Player.area == 120)
{
	if !instance_exists(IDPDSpawn)
	{
		instance_create(Player.x,Player.y,IDPDSpawn);
	}
	if instance_exists(Floor)
	{
		var f1 = instance_furthest(Player.x,Player.y,Floor);
		var f2 = instance_furthest(f1.x,f1.y,Floor);
		var fdir = point_direction(f1.x,f1.y,f2.x,f2.y);
		var fdis = point_distance(f1.x,f1.y,f2.x,f2.y);
		var ft = instance_nearest(
			f1.x+lengthdir_x(fdis*0.5,fdir),
			f1.y+lengthdir_y(fdis*0.5,fdir),
			Floor)
		with ft
		{
			if Player.area == 119
				instance_create(x+16,y+16,CampFireOff)
		}
		if Player.area == 119
		{
			scrSpawnBoss(Friend);
			scrSpawnMoreBosses(Friend,Player.racemax,30);
			scrEndCharacters();
		}
	}
	
}
with Crown
{
	x = Player.x;
	y = Player.y;
}
SetSeed();
if scrIsGamemode(40)
	scrPopEnemies1vs1(Player.area, Player.subarea, Player.loops);

/// @description BOSSES mods secret areas
scrDecideInvader();
var spawnarea =  Player.area;
var subarea =  Player.subarea;
if ( !(spawnarea == 9 && subarea == 3) && !(spawnarea == 6 && subarea == 2)
	&& spawnarea != 100 && spawnarea != 104)
{
	var tots = clamp(round(GetPlayerLoops()*0.5) - 3,0,8);
	if UberCont.opt_gamemode == 34//HARD MODE
		tots ++;
	if tots > 0
		scrSpawnBoss(GoldTotem);
	if tots > 1
		scrSpawnMoreBosses(GoldTotem,tots);
}
if Player.area = 3 and Player.subarea = 3
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
if Player.area == 101 and Player.subarea == 3
{
	if instance_exists(SunkenCar)
	{
		with instance_furthest(Player.x,Player.y,SunkenCar)
		{
			instance_destroy(id,false);
			instance_create(x,y,WallBreak);
			instance_create(x,y,CarVenusOasis);
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
}
if Player.area = 106 and Player.subarea = 3
{
	instance_create(instance_furthest(Player.x,Player.y,Floor).x+16, instance_furthest(Player.x,Player.y,Floor).y+16,BecomeInvertedScrapBoss)
	if Player.loops > 4
	{
		scrSpawnMoreBosses(BecomeInvertedScrapBoss,1+clamp(floor((Player.loops-4)*0.5),1,3));
	}
}

if Player.area = 114 and Player.subarea = 2
{
	scrSpawnBoss(BecomeJungleBoss);
	if (Player.loops > 4)
		scrSpawnMoreBosses(BecomeJungleBoss,1+clamp(floor((Player.loops-4)*0.5),1,3));
}
if Player.area = 123 and Player.subarea = 2
{
	scrSpawnBoss(BecomeInvertedJungleBoss);
	if (Player.loops > 4)
		scrSpawnMoreBosses(BecomeInvertedJungleBoss,1+clamp(floor((Player.loops-4)*0.5),1,3));
}
	if (Player.area = 5 and Player.subarea = 3)
	instance_create(instance_furthest(Player.x,Player.y,Floor).x+16, instance_furthest(Player.x,Player.y,Floor).y+16,LilHunter)

	if (Player.area = 107 and Player.subarea = 3)//inverted frozen city
	instance_create(instance_furthest(Player.x,Player.y,Floor).x+16, instance_furthest(Player.x,Player.y,Floor).y+16,InvertedLilHunter)

	if (Player.loops>1) && (Player.area = 5 and Player.subarea = 3)
	{
		repeat(clamp(floor((Player.loops-1)*0.25),1,3))
			instance_create(instance_furthest(Player.x,Player.y,Floor).x+132, instance_furthest(Player.x,Player.y,Floor).y+32,LilHunter);
	}
	if (Player.loops>1) && (Player.area = 107 and Player.subarea = 3)
	{
		repeat(clamp(floor((Player.loops-1)*0.25),1,3))
			instance_create(instance_furthest(Player.x,Player.y,Floor).x+132, instance_furthest(Player.x,Player.y,Floor).y+32,InvertedLilHunter);
	}
if Player.loops > 0 && (Player.area == 5 && Player.subarea == 1)
{
	scrSpawnBoss(BigDisc);
	if (Player.loops > 5)
		scrSpawnMoreBosses(BigDisc,1+clamp(floor((Player.loops-4)*0.25),1,2));
}
if Player.loops > 0 && (Player.area == 107 && Player.subarea == 1)
{
	scrSpawnBoss(InvertedBigDisc);
	if (Player.loops > 5)
		scrSpawnMoreBosses(InvertedBigDisc,1+clamp(floor((Player.loops-4)*0.25),1,2));
}
if (Player.loops > 0 && ((Player.area == 2 && Player.subarea == 1) ||  Player.area == 10 && Player.subarea == 1))
{
	scrSpawnBoss(BallMom);
	if (Player.loops > 5)
		scrSpawnMoreBosses(BallMom,1+clamp(floor((Player.loops-4)*0.25),1,2));
}
if (Player.loops > 0 && Player.area == 110 && Player.subarea == 1)
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


if (Player.race=22 && Player.area!=100 && Player.area!=104 && !( (Player.area == 9 || Player.area == 118) && Player.subarea == 3))
{

var ammoWant = 1+Player.skill_got[23]+Player.skill_got[5];
while (instance_number(RogueAmmoChest) < ammoWant)
{
	with instance_furthest(Player.x+random(128)-64,Player.y+random(128)-64,Floor)
	{
		if !collision_point(x,y,RogueAmmoChest,false,false)
			instance_create(x+16,y+16,RogueAmmoChest);
	}
}

}


if Player.area = 100
{
	with instance_furthest(Player.x,Player.y,Floor)
	{
		instance_create(x+16,y+16,CrownPickup)
	    if Player.crownvisits > 1{
		    instance_create(x-32,y-64,WeaponMod)
		    with instance_create(x+64,y-64,WeaponMod)
				image_xscale=-1;
	    }
		if Player.skill_got[30]
		{
			instance_create(x-32,y+64,WeaponMod)
		    with instance_create(x+64,y+64,WeaponMod)
				image_xscale=-1;	
		}
		if Player.loops > 0
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
			//Reroll station
			if (instance_exists(Player) && Player.level > 1 && UberCont.enableReroll)
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
							instance_create(xx+16,yy+16,RerollStation);
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
else if Player.area > 2 and Player.subarea = 2 && Player.area!=101&&Player.area!=6
&& Player.area!=102 && Player.area!=103 && Player.area != 125 && Player.area!=104 && Player.area != 4 && Player.area != 111
&& Player.area!=112 && Player.area!=113 && Player.area!=114 && Player.area != 123 && Player.area != 124 && Player.area != 117
&& Player.area!=115 && Player.area!=116 && UberCont.opt_gamemode != 25
&& !(Player.area == 9 && Player.loops > 9) && !(Player.area == 118 && Player.loops > 9)
{
	with instance_nearest((instance_furthest(Player.x,Player.y,Floor).x*2+Player.x)/3+random(128)-64,(instance_furthest(Player.x,Player.y,Floor).y*2+Player.y)/3+random(128)-64,Floor){
		if Player.area=104 {
			//YV Crib yo
			instance_create(x+16,y+16,CarVenusFixed)
		}
		else
		{
			instance_create(x+16,y+16,ProtoStatue)
		} 
	}
}

if Player.area=1
{
	if Player.subarea == 1 && Player.loops < 2
	{
		instance_create(0,0,RetailOasis);	
	}
	if Player.subarea == 2
	{
		with instance_nearest((instance_furthest(Player.x,Player.y,Floor).x*2+Player.x)/3+random(128)-64,(instance_furthest(Player.x,Player.y,Floor).y*2+Player.y)/3+random(128)-64,Floor)
			instance_create(x+16,y+16,BigFishSkull)
	}
}



if ((Player.area = 105||Player.area = 106||Player.area = 107||Player.area = 108|| Player.area = 109 || Player.area = 110 || Player.area = 111 || (Player.area = 112 && Player.subarea<2) && !( Player.loops mod 2 == 0  && Player.loops>1/*even*/)) )// && random(4)<3)
{

with instance_nearest((instance_furthest(Player.x,Player.y,Floor).x*2+Player.x)/4+random(128)-64+32,(instance_furthest(Player.x,Player.y,Floor).y*2+Player.y)/4+random(128)-64+32,Floor)
instance_create(x+16,y+16,WeaponMod)

}



if Player.area == 8 && Player.subarea == 1
{
	//Mushroomland
	with instance_nearest((instance_furthest(Player.x,Player.y,Floor).x*2+Player.x)/4+random(128)-64+32,(instance_furthest(Player.x,Player.y,Floor).y*2+Player.y)/4+random(128)-64+32,Floor)
		instance_create(x+16,y+16,MushroomLandEntranceWonderland)
}
else if Player.area = 8 && Player.subarea < 3 && Player.banditland=true
{
	//MUSHROOM WONDERLAND BANDITLAND
Player.banditland=false;
with instance_nearest((instance_furthest(Player.x,Player.y,Floor).x*2+Player.x)/4+random(128)-64+32,(instance_furthest(Player.x,Player.y,Floor).y*2+Player.y)/4+random(128)-64+32,Floor)
instance_create(x+16,y+16,BigMushroom)
}
if Player.area == 103
{
	with instance_nearest((instance_furthest(Player.x,Player.y,Floor).x*2+Player.x)/4+random(128)-64+32,(instance_furthest(Player.x,Player.y,Floor).y*2+Player.y)/4+random(128)-64+32,Floor)
		instance_create(x+16,y+16,MushroomLandEntrance)
}
if ( ((Player.area == 5 && Player.subarea < 3) || (Player.area == 114 && Player.subarea == 2)) && (Player.skill_got[18] || Player.skeletonlives > 0))
{
	with instance_nearest((instance_furthest(Player.x,Player.y,Floor).x*2+Player.x)/4+random(128)-64+32,(instance_furthest(Player.x,Player.y,Floor).y*2+Player.y)/4+random(128)-64+32,Floor)
		instance_create(x+16,y+16,JungleFrozenPlant)
}
if Player.area == 102
{
	with instance_nearest((instance_furthest(Player.x,Player.y,Floor).x*2+Player.x)/5+random(128)-64+32,(instance_furthest(Player.x,Player.y,Floor).y*2+Player.y)/5+random(128)-64+32,Floor)
		instance_create(x+16,y+16,GoldenPipe)	
}

//Gun Smiths weapon modder ultra
if Player.ultra_got[65] && Player.area !=100
{
	instance_create(instance_nearest(Player.x,Player.y,Floor).x+16, instance_nearest(Player.x,Player.y,Floor).y+16,WeaponMod);
}


if !(( (Player.area == 9 || Player.area == 118) && Player.subarea == 3) || ((Player.area == 6 || Player.area == 112) && Player.subarea == 2) || UberCont.opt_gamemode == 25 || UberCont.opt_gamemode == 8
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
				instance_create(x+16,y+16,CampFireOff);
			if Player.skill_got[23]//OPEN MIND
			{
				instance_create(x+16,y+32+16,HealthChest);
				instance_create(x+16,y+32+16,WallBreak);
			}
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


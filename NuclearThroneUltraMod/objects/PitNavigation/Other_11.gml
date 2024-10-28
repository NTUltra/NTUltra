/// @description Additional area population
instance_create(x,y,ShowVoidEssenceTemporarily);
with UberCont
{
	portalEssence += 2
	if voidChallengeGoing[0]
		portalEssence += 2;
}

if loops > 2
{
	with Player
	{
		instance_create(x,y,IDPDSpawn);	
	}	
}
if currentArea == 107 || currentArea == 111 || currentArea == 108
{
	var f = instance_furthest(Player.x,Player.y,Floor);
	with instance_nearest((f.x*3+Player.x)/4+random(128)-64+32,(f.y*3+Player.y)/4+random(128)-64+32,Floor)
		instance_create(x+16,y+16,WeaponMod)	
}
if currentArea == 125
{
	var px = x;
	var py = y;
	if instance_exists(Player)
	{
		px = Player.x;
		py = Player.y;
	}
	else if instance_exists(PlayerSpawn)
	{
		px = PlayerSpawn.x;
		py = PlayerSpawn.y;
	}
	with instance_nearest((instance_furthest(px,py,Floor).x*2+px)/4+random(128)-64+32,(instance_furthest(px,py,Floor).y*2+py)/4+random(128)-64+32,Floor)
			instance_create(x+16,y+16,MushroomLandEntrance)
	if loops > 0
	{
		var lowestFloorY = -9999;
		var lowestFloor = noone;
		with Floor {
			if object_index != FloorExplo &&  y > lowestFloorY
			{
				lowestFloorY = y;
				lowestFloor = id;
			}
		}
		with lowestFloor
		{
			instance_create(x,y + 32,Floor);
			instance_create(x,y + 64,Floor);
			instance_create(x,y + 96,Floor);
			instance_create(x,y + 128,Floor);
			instance_create(x,y + 160,Floor);
			instance_create(x + 32,y + 96,Floor);
			instance_create(x + 32,y + 128,Floor);
			instance_create(x + 32,y + 160,Floor);
			instance_create(x - 32,y + 96,Floor);
			instance_create(x - 32,y + 128,Floor);
			instance_create(x - 32,y + 160,Floor);
			instance_create(x,y + 128,Blasphemia);
			instance_create(x,y + 128,NOWALLSHEREPLEASE);
		}
	}
} else if currentArea == 107
{
	UberCont.hadBossIntro = false;
	with Player
	{
		instance_create(x,y,IDPDSpawn);	
	}
	scrSpawnBoss(InvertedBigDisc);
	if (loops > 5)
		scrSpawnMoreBosses(InvertedBigDisc,1+clamp(floor((loops-4)*0.25),1,2));
	
	if (instance_exists(Player) && (Player.skill_got[18] || Player.skeletonlives > 0))
	{
		with instance_nearest((instance_furthest(Player.x,Player.y,Floor).x*2+Player.x)/4+random(128)-64+32,(instance_furthest(Player.x,Player.y,Floor).y*2+Player.y)/4+random(128)-64+32,Floor)
			instance_create(x+16,y+16,JungleFrozenPlant)
	}
}
else if currentArea == 111//Inv caves can have invasion
{
	if instance_exists(WeaponChest)
	{
		with Floor
		{
			if instance_exists(CloudEnterance)
				continue;
			var xx = x+16;
			var yy = y+16;
			var t = instance_nearest(xx,yy,WeaponChest)
			var d = point_distance(xx,yy,t.x,t.y)
			if d < 160 && d > 32
				instance_create(x+16,y+8,CloudEnterance)
		}
	}
	else
	{
		var tar = Player;
		if instance_exists(WeaponChest)
		{
			tar = WeaponChest;
		}
		var furthest = instance_furthest(tar.x,tar.y,Floor);
		var dir = point_direction(x,y,furthest.x,furthest.y)+random_range(120,-120);
		var len = 128+random(32);
		var nearestFloor = instance_nearest(tar.x+lengthdir_x(len,dir),tar.y+lengthdir_y(len,dir),Floor)
		with nearestFloor
		{
			instance_create(x+16,y+8,CloudEnterance)
		}
	}
	scrDecideInvader();
}
else if currentArea == 112 //INV LABS
{
	with instance_furthest(10016, 10016, Server) {
        instance_create(x, y, MushroomLandEntranceLabs)
        instance_change(Wind, false)
    }
	if !instance_exists(MushroomLandEntranceLabs)
	{
		with instance_furthest(10016, 10016,Floor)
		{
			instance_create(x+16, y+16, MushroomLandEntranceLabs)
		}
	}	
}
else if currentArea == 106 && !instance_exists(WantBoss)
{
	UberCont.hadBossIntro = false;
	instance_create(x, y, WantBoss);
	//venuz car
    with instance_furthest(10016, 10016, Car) {
        instance_create(x, y, CarVenus)
        instance_change(Wind, false)
    }
	if !instance_exists(CarVenus)
	{
		with instance_furthest(10016, 10016,Floor)
		{
			instance_create(x+16, y+16, CarVenus)
		}
	}
}
else if (currentArea == 109) && Player.banditland
{
	//MUSHROOM WONDERLAND BANDITLAND
	Player.banditland=false;
	with instance_nearest((instance_furthest(Player.x,Player.y,Floor).x*2+Player.x)/4+random(128)-64+32,(instance_furthest(Player.x,Player.y,Floor).y*2+Player.y)/4+random(128)-64+32,Floor)
		instance_create(x+16,y+16,BigMushroom)
}
else if currentArea == 125
{
	with WeaponChest
	{
		instance_create(x,y,GoldChest)
		instance_destroy(id,false);
	}
	with BigWeaponChest
	{
		instance_create(x,y,GoldChest)
		instance_destroy(id,false);
	}
	with EliteWeaponChest
	{
		instance_create(x,y,GoldChest)
		instance_destroy(id,false);
	}
}
else if currentArea == 124 && loops > 1
{
	UberCont.hadBossIntro = false;
	scrSpawnBoss(BecomeInvertedMushroomBoss)
	scrSpawnMoreBosses(BecomeInvertedMushroomBoss,2);
}
else if currentArea == 109 && !instance_exists(InvertedChesireCat)
{
	UberCont.hadBossIntro = false;
	scrSpawnBoss(InvertedChesireCat);
}
var hyperSomnia = false;
var t = 0;
if instance_exists(Player)
{
	if Player.skill_got[29]//Insomnia
	{
		hyperSomnia = true;
		t = 25;
		if Player.race == 25
			t = 30;
	}
	
}
with enemy
{
	alarm[1] += 60;
	if hyperSomnia
	{
		scrGiveSnooze();
		alarm[1] += t;
	}
}
with RadChest
{
	raddrop -= 8;
}
alarm[0] = 120;
/// @description Final and player position
instance_destroy()
with GameRender
{
	gamemodeDynamicHud = dynamicHudResetTime;
	mutationDynamicHud = dynamicHudResetTime;
}
SetSeed();
instance_create(x,y,StartAreaBuffer);
if instance_exists(Player)
{
	with Player {
		if instance_exists(PitNavigation) && area == 127
			area = 141;
		if (skill_got[44] && instance_number(CrescentMoon) < (1 + (instance_number(YungCuzDupe) * 2))) {
			with instance_create(x,y,CrescentMoon)
			{
				owner = other.id;
			}
			with instance_create(x,y,CrescentMoon)
			{
				owner = other.id;
				type = 1;	
			}
		}
	}
	with UberCont {
		area = Player.area;
		lastarea = Player.lastarea;
		subarea = Player.subarea;
		lastsubarea = Player.lastsubarea;
	}
	with Crown
	{
		if newThing = 1 && Player.area != 104 {
		newThing = 0
		repeat(2)
		instance_create(x,y,IDPDSpawn)

		}
	}
	if Player.area = 100{
	snd_play_2d(Player.snd_valt)}
	else if Player.subarea == 1{
	snd_play_2d(Player.snd_wrld)}
	if Player.race = 6
	{

	BackCont.shake += 5
	snd_play_2d(sndVenuz)
	}
	if Player.area = 103 || Player.area == 125 || Player.area == 133
	{
	    //Player.area = 3
	    //Player.subarea = 2
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
	else if Player.area == 136
	{
		with WeaponChest
	    {
			instance_create(x,y,UltraWeaponChest);
			instance_create(x,y + 16,UltraWeaponChest);
			instance_destroy(id,false);
	    }
	    with BigWeaponChest
	    {
			instance_create(x+1,y+1,UltraWeaponChest)
			instance_create(x+1,y+16,UltraWeaponChest)
			instance_destroy(id,false);
	    }
	    with EliteWeaponChest
	    {
			instance_create(x-1,y-1,UltraWeaponChest)
			instance_create(x-1,y+16,UltraWeaponChest)
			instance_destroy(id,false);
	    }
	}
	else if Player.area == 113//Bandit land
	{
		 with WeaponChest
	    {
			instance_create(x,y+16,MorphWeaponChest)
	    }
	}
	else if Player.area == 122 /*&& Player.subarea == 2*///Inv oasis
	{
		with WeaponChest
	    {
			instance_create(x,y+16,ToxicWeaponChest)
	    }
	}
	else if Player.area == 108 || Player.area == 124/*&& Player.subarea == 2*///Inv Volcano
	{
		with WeaponChest
	    {
			instance_create(x,y+16,LightningWeaponChest)
	    }
	}
	else if Player.area == 130 || Player.area == 131 || Player.area == 133 || Player.area == 134//Factory
	{
		with WeaponChest
	    {
			instance_create(x,y+16,BigWeaponChest)
	    }
	}
	else if Player.area == 132
	{
		with WeaponChest
	    {
			instance_create(x,y+16,BigCursedWeaponChest)
	    }
	}
	else if Player.area == 115
	{
		with WeaponChest
	    {
			instance_create(x,y,BigCursedWeaponChest)
			instance_destroy(id,false);
	    }
	    with BigWeaponChest
	    {
			instance_create(x+1,y+1,BigCursedWeaponChest)
			instance_destroy(id,false);
	    }
	    with EliteWeaponChest
	    {
			instance_create(x-1,y-1,BigCursedWeaponChest)
			instance_destroy(id,false);
	    }
	}
	else if Player.area == 146 || Player.area == 147//Blood
	{
		 with WeaponChest
	    {
			instance_create(x,y+16,BloodWeaponChest)
	    }
	}
	if ( (Player.area = 101 && Player.area = 10)  && Player.subarea == 1) {
	    with WeaponChest
	    {
		    instance_create(x,y,EliteWeaponChest)
			instance_destroy(id,false);
	    }
	    with BigWeaponChest
	    {
		    instance_create(x+1,y+1,EliteWeaponChest)
			instance_destroy(id,false);
	    }
	}
	//PLAYER START POSITION
	with Player
	{
		wkick = 0;
		alienIntestines = 0;
		flushCharge = 0;
		sheepPower = 0;
		excessDamageDeal = 0;
		if !instance_exists(BigMachine) && !instance_exists(InvertedBigMachine)
		{
			x = 10016;
			y = 10016;
		}
		scrForcePosition60fps();
		if area == 144
		{
			var f = instance_place(x,y,Floor)
			if f.styleb == 1
			{
				with f
				{
					styleb = false;
					depth += 2;
					sprite_index = sprFloor144;
					with instance_place(x,y,FloorBloom)
					{
						instance_destroy();	
					}
					with instance_place(x,y,FloorOverlay)
					{
						instance_destroy();	
					}
				}
			}
		}
		else if area == 145
		{
			var f = instance_place(x,y,Floor)
			if f.styleb == 1
			{
				with f
				{
					styleb = false;
					depth += 2;
					sprite_index = sprFloor145;
					with instance_place(x,y,FloorBloom)
					{
						instance_destroy();	
					}
					with instance_place(x,y,FloorOverlay)
					{
						instance_destroy();	
					}
				}
			}
		}
	}
	if (Player.area == 9 || Player.area == 118) && Player.subarea == 3
		Player.y -= 64;
	if scrIsGamemode(25)
	{
		Player.x = SurvivalArenaStarter.x;
		Player.y = SurvivalArenaStarter.y-128;
		with WepPickup
		{
			x = SurvivalArenaStarter.x;
			y = SurvivalArenaStarter.y-128;
			scrForcePosition60fps();
		}
		scrForcePosition60fps();
	}
	else if Player.subarea == 2 && (Player.area==6 || Player.area == 112)//Labs boss
	{
		with Player
		{
			if instance_exists(BigMachine)
			{
				x = BigMachine.x - 32;
				y = BigMachine.y + 128;
				scrForcePosition60fps();
				with instance_nearest(x,y,WeaponChest)
				{
					x = BigMachine.x;
					y = BigMachine.y - 64;
					friction = 2;
					speed = 0;
					scrForcePosition60fps();
				}
			}
			if instance_exists(InvertedBigMachine)
			{
				x = InvertedBigMachine.x - 32;
				y = InvertedBigMachine.y + 128;
				scrForcePosition60fps();
				with instance_nearest(x,y,WeaponChest)
				{
					x = InvertedBigMachine.x;
					y = InvertedBigMachine.y - 64;
					friction = 2;
					speed = 0;
				}
			}
			with enemy
			{
				if point_distance(x,y,other.x,other.y) < 96
				{
					instance_destroy(id,false);	
				}
				direction = point_direction(x,y,other.x,other.y)+180;
			}
		}
	}
	else if Player.area == 100 && scrIsGamemode(36) && Player.crownvisits == 0 && instance_exists(SurvivalArenaStarter)//Ultra mod start
	{
		Player.x = SurvivalArenaStarter.x;
		Player.y = SurvivalArenaStarter.y - 48;
		UberCont.crownVaultChallenge = 3;
		with SurvivalWave
		{
			if scrIsGamemode(25)
				event_user(0);
			else if object_index != BallBossWave
				event_user(1);
		}
		with SurvivalArenaStarter
		{
			instance_destroy();	
		}
		UberCont.crownVaultChallenge = 0;
	}
	if Player.saveLoaded
	{
		Player.saveLoaded = false;//Next time normal position;
		if (instance_exists(BallBossPlateau))
		{
			Player.x = BallBossPlateau.x;
			Player.y = BallBossPlateau.y+16;
		}
	}
	Player.drawempty = 30
	Player.drawlowhp = 30
	with ThrowWep
	{
		x = Player.x;
		y = Player.y;
		speed = 0;
	}
	with WepPickup
	{
		if !isPermanent
			persistent = false;
		x = Player.x;
		y = Player.y;
		speed = 0;
		if instance_exists(Floor) && !collision_point(x,y,Floor,false,false) || collision_point(x,y,Wall,false,false)
		{
			var f = instance_nearest(x,y,Floor)
			var o = 16;
			if f.object_index == FloorExplo
				o = 8;
			x = f.x+o;
			y = f.y+o;
		}
		scrForcePosition60fps();
		alarm[2] = 5;
	}
	with Crown
	{
		x = Player.x;
		y = Player.y;
		scrForcePosition60fps();
	}
	//Gun Smiths weapon modder ultra
	if Player.ultra_got[65] && Player.area !=100 && (Player.area != 118 && Player.subarea != 3) && Player.area != 120 && Player.area != 119 && Player.area != 137
	{
		with instance_create(instance_nearest(Player.x,Player.y,Floor).x+16, instance_nearest(Player.x,Player.y,Floor).y+16,WeaponMod)
			shouldClose = false;
	}
	if Player.area == 149
	{
		instance_create(instance_nearest(Player.x,Player.y,Floor).x+16, instance_nearest(Player.x,Player.y,Floor).y+16,AcidDreamBoss)
	}
}

snd_play_2d(sndPortalOpen)

with CrownPickup
{
	with Torch
	{
		if point_distance(x,y,other.x,other.y) < 240
		{
			if instance_exists(HintGiver) && HintGiver.owner == id
			{
				var f = instance_furthest(other.x,other.y,Floor);
				x = f.x + 16;
				y = f.y + 16;
			}
			else
			{
				instance_change(WepSwap,false);
			}
		}
	}
}

if UberCont.normalGameSpeed == 60 && !instance_exists(FPSHACK)
{
	instance_create(x,y,FPSHACK);
}
if scrIsGamemode(48) {
	var totalHealth = 30;//Get three extra shots
	if GetPlayerLoops() > 0
	{
		totalHealth -= 20;
		with enemy {
			totalHealth += max(6,maxhealth);
		}
		with Player {
			ammo[1] = totalHealth*0.095;
		}
	}
	else
	{
		if Player.area == 1
		{
			totalHealth += 10;
			with enemy {
				totalHealth += max(10,maxhealth);
			}
		}
		else
			with enemy {
				totalHealth += max(8,maxhealth);
			}
		with Player {
			ammo[1] = totalHealth*0.1;
		}
	}	
}
if instance_exists(Player) && instance_exists(Crown)
with Crown
{
	x = Player.x;
	y = Player.y;
	scrForcePosition60fps();
}

with NoProtoChest
{
	with ProtoChest
	{
		instance_destroy(id,false);	
	}
	instance_destroy();	
}
if instance_exists(Player)
with Friend
{
	if Player.area == 137
		instance_deactivate_object(id);
}
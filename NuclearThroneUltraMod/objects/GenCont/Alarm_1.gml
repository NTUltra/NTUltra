/// @description Final and player position
instance_destroy()
SetSeed();
instance_create(x,y,StartAreaBuffer);
if instance_exists(Player)
{
	with Player {
		if skill_got[44] && !instance_exists(CrescentMoon){
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
		subarea = Player.subarea;
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
			instance_create(x,y,UltraWeaponChest)
			instance_destroy(id,false);
	    }
	    with BigWeaponChest
	    {
			instance_create(x+1,y+1,UltraWeaponChest)
			instance_destroy(id,false);
	    }
	    with EliteWeaponChest
	    {
			instance_create(x-1,y-1,UltraWeaponChest)
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
	else if Player.area == 122 && Player.subarea == 2//Inv oasis
	{
		with WeaponChest
	    {
			instance_create(x,y+16,ToxicWeaponChest)
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
		sheepPower = 0;
		excessDamageDeal = 0;
		if !instance_exists(BigMachine) && !instance_exists(InvertedBigMachine)
		{
			x = 10016;
			y = 10016;
		}
		scrForcePosition60fps();
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
}

snd_play_2d(sndPortalOpen)

with CrownPickup
{
	with Torch
	{
		if point_distance(x,y,other.x,other.y) < 240
			instance_change(WepSwap,false)
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

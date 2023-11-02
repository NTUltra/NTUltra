/// @description Final and player position
instance_destroy()
SetSeed();
if instance_exists(Player)
{
	with Crown
	{
	if newThing = 1{
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
			instance_create(x,y,UltraWeaponChest)
			instance_destroy(id,false);
	    }
	    with EliteWeaponChest
	    {
			instance_create(x,y,UltraWeaponChest)
			instance_destroy(id,false);
	    }
	}
	else if Player.area == 113//Bandit land
	{
		 with WeaponChest
	    {
			instance_create(x,y+16,MorphWeaponChest)
	    }
	    with BigWeaponChest
	    {
			instance_create(x,y+16,MorphWeaponChest)
	    }
	    with EliteWeaponChest
	    {
			instance_create(x,y+16,MorphWeaponChest)
	    }
	}
	if Player.area == 115 || Player.area == 132
	{
		with WeaponChest
	    {
			instance_create(x,y,BigCursedWeaponChest)
			instance_destroy(id,false);
	    }
	    with BigWeaponChest
	    {
			instance_create(x,y,BigCursedWeaponChest)
			instance_destroy(id,false);
	    }
	    with EliteWeaponChest
	    {
			instance_create(x,y,BigCursedWeaponChest)
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
		    instance_create(x,y,EliteWeaponChest)
		    instance_create(x+1,y+1,EliteWeaponChest)
			instance_destroy(id,false);
	    }
	}
	//PLAYER START POSITION
	with Player
	{
		wkick = 0;
		x = 10016
		y = 10016
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
			x = 10016+96;
			y = 10016+128;
			scrForcePosition60fps();
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
	with WepPickup
	{
		persistent = false;
		x = Player.x;
		y = Player.y;
		if instance_exists(Floor) && !collision_point(x,y,Floor,false,false)
		{
			speed *= 0.5;
			var f = instance_nearest(x,y,Floor)
			var o = 16;
			if f.object_index == FloorExplo
				o = 8;
			x = f.x+o;
			y = f.y+o;
		}
		scrForcePosition60fps();
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
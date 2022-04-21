function scrPopChests() {
	//Special cases:
	if UberCont.opt_gamemode == 25
	{
		with RadChest
			instance_destroy(id,false);
		with AmmoChest
			instance_destroy(id,false);
		with WeaponChest
			instance_destroy(id,false);
		return false;	
	}
	if instance_exists(Player)
	{
		if Player.area == 104//YV mansion
			return;
		if ((Player.area == 6 || Player.area == 112) && Player.subarea == 2)
		{
			with RadChest
				instance_destroy(id,false);
			with AmmoChest
				instance_destroy(id,false);
			with WeaponChest
				instance_destroy(id,false);
			var xx = 10096;
			var yy = 10132;
			instance_create(xx,yy+32,WeaponChest);
			instance_create(xx+48,yy+32,AmmoChest);
			if Player.skill_got[23]//OPEN MIND
			{
				instance_create(xx,yy+64,WeaponChest);
				instance_create(xx+48,yy+64,AmmoChest);
			}
			if Player.crown == 15//CROWN OF CHOICE
			{
				instance_create(xx+24,yy+16,WeaponChest);
			}
			return;
		}
		if ( (Player.area == 9 || Player.area == 118) && Player.subarea == 3)
		{
			with RadChest
				instance_destroy(id,false);
			with AmmoChest
				instance_destroy(id,false);
			with WeaponChest
				instance_destroy(id,false);
			var xx = Player.x;
			var yy = Player.y;
			xx = 10016+16;
			yy = 10016+16;
			instance_create(xx-48,yy-64,WeaponChest);
			instance_create(xx+48,yy-64,AmmoChest);
			if Player.race=22
			{
				instance_create(xx,yy-64,RogueAmmoChest);
				if Player.skill_got[23]//OPEN MIND
				{
					instance_create(xx-48,yy-96,RogueAmmoChest);
				}
				if Player.skill_got[5]//Rogue butt
				{
					instance_create(xx+48,yy-96,RogueAmmoChest);
				}
			}
			if Player.skill_got[23]//OPEN MIND
			{
				instance_create(xx-96,yy-64,WeaponChest);
				instance_create(xx+06,yy-64,AmmoChest);
			}
			if Player.crown == 15//CROWN OF CHOICE
			{
				instance_create(xx-72,yy-64,WeaponChest);
			}
			if Player.ultra_got[88] == 1
			{
				with RogueAmmoChest
				{
					instance_destroy(id,false);
					instance_create(x,y,RadChest);	
				}
			}
			return;
		}
		if Player.ultra_got[88] == 1
		{
			with RogueAmmoChest
			{
				instance_destroy(id,false);
				instance_create(x,y,RadChest);	
			}
		}
	}
	
	var gol = 1;
	if (instance_exists(Player) && Player.my_health < ceil(Player.maxhealth*0.8))
		var	healthChestGol = choose(0,0,0,0,0,0,0,0,0,1);
	else
		var	healthChestGol = 0;
	var wepChestGol = gol;
	
	
	if instance_exists(HealthChest)
	{
		healthChestGol = 0;
	}
	
	if instance_exists(Player)
	{
		if Player.area = 104{
		exit;}
	
		if(Player.skill_got[23]){//OPEN MIND

		if Player.race=25
		gol=choose(3,3,3,2,2,2);
		else
		gol = choose(3,3,2,2,2,2);

		healthChestGol += choose(0,0,0,0,0,1);
		}
		if Player.race == 4 //YUNG CUZ
		{
			healthChestGol += choose(0,0,0,0,0,1);
		}
		wepChestGol = gol;
	
		if Player.crown == 15//CROWN OF CHOICE
		{
			gol += 1;
			healthChestGol += choose(0,0,0,0,0,0,1);
			wepChestGol += 2;
		}


		if Player.area = 100
		{
		if instance_exists(Crown){
		with instance_furthest(Player.x,Player.y,WeaponChest)
		instance_create(x,y,ProtoChest)}
		gol = 0
		wepChestGol = 0;
		healthChestGol = 0;
		}
	
	}
	var totalWepsChests=0,totalRadChests=0,totalAmmoChests=0,totalHealthChests=0;
	if instance_exists(WeaponChest)
	{
		totalWepsChests = instance_number(WeaponChest);
		do {with instance_nearest(Player.x+random(500)-250,Player.y+random(500)-250,WeaponChest) instance_destroy()}
	until instance_number(WeaponChest) <= wepChestGol
	}
	if instance_exists(RadChest)
	{
		totalRadChests = instance_number(RadChest);
		do {with instance_nearest(Player.x+random(500)-250,Player.y+random(500)-250,RadChest) instance_destroy()}
	until instance_number(RadChest) <= gol
	}
	if instance_exists(AmmoChest)
	{
		totalAmmoChests = instance_number(AmmoChest)
		do {with instance_nearest(Player.x+random(500)-250,Player.y+random(500)-250,AmmoChest) instance_destroy()}
	until instance_number(AmmoChest) <= gol
	}
	if instance_exists(HealthChest)
	{
		totalHealthChests = instance_number(HealthChest)
		do {
		with instance_nearest(Player.x+random(500)-250,Player.y+random(500)-250,HealthChest) instance_destroy()}
	until instance_number(HealthChest) <= healthChestGol
	}
	if (totalWepsChests < wepChestGol)
	{
		scrCreateMissingChest(WeaponChest,wepChestGol);	
	}
	if (totalAmmoChests < gol)
	{
		scrCreateMissingChest(AmmoChest,gol);	
	}
	//LABS BOSS? no rad cannister
	if instance_exists(Player) && ((Player.area == 6 || Player.area == 112) && Player.subarea == 2)
	{
		gol = 0;
	}
		
	if (totalRadChests < gol)
	{
		scrCreateMissingChest(RadChest,gol);	
	}
	if (totalHealthChests < healthChestGol)
	{
		scrCreateMissingChest(HealthChest,healthChestGol);	
	}
	
	with ChestOpen
	instance_destroy()
	if instance_exists(Player)
	{
	if Player.crown = 9
	{
	with RadChest
	{image_speed = 0.4
	instance_destroy(id,false);
	instance_create(x,y,AmmoChest)}
	with AmmoChestMystery
	{image_speed = 0.4
	instance_destroy(id,false);
	instance_create(x,y,AmmoChest)}
	with WeaponChest
	{image_speed = 0.4
	instance_destroy(id,false);
	instance_create(x,y,AmmoChest)}
	with HealthChest
	{image_speed = 0.4
	instance_destroy(id,false);
	instance_create(x,y,AmmoChest)}
	}
	with AmmoChest
	{
	if random(11) < 1 and (Player.area >= 2 or Player.loops >= 1)
	{
	instance_create(x,y,Mimic)
	image_speed = 0.4
	instance_destroy(id,false);
	}
	}
	if instance_exists(Player) && Player.race == 25
	{
		with RadChest
		{
			instance_destroy(id,false);	
		}
	}

	with HealthChest
	{
	if random(51) < 1 and (Player.area >= 2 or Player.loops >= 1)
	{
	instance_create(x,y,SuperMimic)
	image_speed = 0.4
	instance_destroy(id,false);
	}
	}
	}



}

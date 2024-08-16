function scrPopChests() {
	if instance_exists(Vlambeer) || instance_exists(MenuGen)
		return;
	var ran = random(10);
	//Special cases:
	if scrIsGamemode(25)
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
		if Player.area == 135 && Player.subarea == 3//Captain
		{
			with RadChest
				instance_destroy(id,false);
			with AmmoChest
				instance_destroy(id,false);
			with WeaponChest
				instance_destroy(id,false);
			with RogueAmmoChest
				instance_destroy(id,false);
			return
		}
		if Player.area == 137//Void
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
			if scrIsCrown(15)//CROWN OF CHOICE
			{
				instance_create(xx+24,yy+16,WeaponChest);
			}
			return;
		}
		if ( (Player.area == 9 || Player.area == 118) && Player.subarea == 3)
		{
			//THRONEROOM
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
				if  scrIsCrown(15)
				{
					instance_create(xx-16,yy-96,RogueAmmoChest);
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
			if scrIsCrown(15)//CROWN OF CHOICE
			{
				instance_create(xx-72,yy-64,WeaponChest);
			}
			if Player.ultra_got[88]
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
	var healthChestGol = 0;
	//Melting
	if Player.race == 4 && Player.my_health <= Player.maxhealth*0.5 and ran < 3
	{
		healthChestGol += 1;
	}
	else if Player.race != 4 && Player.my_health < 3 and ran < 5
	{
		healthChestGol += 1;
	}
	else if (instance_exists(Player) && Player.my_health < ceil(Player.maxhealth*0.8))
		healthChestGol = choose(0,0,0,0,0,0,0,0,0,1);
	else
		healthChestGol = 0;
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
			gol = 2;
			healthChestGol += choose(0,0,0,0,0,1);
		}
		if Player.race == 4 //YUNG CUZ
		{
			healthChestGol += choose(0,0,0,0,0,1);
		}
		
		wepChestGol = gol;
		if(Player.skill_got[23] && Player.race == 25){//OPEN MIND
			wepChestGol += choose(1,0,0,0);
		}
	
		if scrIsCrown(15)//CROWN OF CHOICE
		{
			gol += choose(1,1,0);
			healthChestGol += choose(0,0,0,0,0,0,1);
			wepChestGol += choose(1,2);
		}
		if scrIsCrown(2)//CROWN OF LIFE
		{
			healthChestGol += choose(0,0,0,1);
		}
		else if Player.my_health >= Player.maxhealth
			healthChestGol --;
		if Player.my_health >= 12
			healthChestGol --;
			
		if Player.area = 100
		{
		if instance_exists(Crown) && Player.loops > 0{
			with instance_furthest(Player.x,Player.y,WeaponChest)
			{
				instance_destroy(id,false);
				if !scrIsGamemode(26) && !scrIsGamemode(27) && isValidGamemodeToUnlock()//not dayly
					if Player.skill_got[23] //OPEN MIND
					{
						instance_create(x,y-24,ProtoChest)
						with instance_create(x,y+24,ProtoChest)
						{
							issecond = true;
							wep = UberCont.protowep2
							wepmod1=UberCont.protowepmod12
							wepmod2=UberCont.protowepmod22
							wepmod3=UberCont.protowepmod32
							wepmod4=UberCont.protowepmod42
							if wep == 0
							{
								wep = 56;
								wepmod1=0;
								wepmod2=0;
								wepmod3=0;
								wepmod4=0;
							}
							
						}
					}
					else
					{
						instance_create(x,y,ProtoChest)
					}
			}
		}
			gol = 0
			wepChestGol = 0;
			healthChestGol = 0;
		}
		if Player.area == 119 || Player.area = 120 || Player.area == 137
		{
			gol = 0
			wepChestGol = 0;
			healthChestGol = 0;
		}
		if !Player.canHeal
			healthChestGol = 0;
	
	}
	if instance_exists(WeaponChest)
	{
		do {with instance_nearest(Player.x+random(500)-250,Player.y+random(500)-250,WeaponChest) instance_destroy(id,false)}
	until instance_number(WeaponChest) <= wepChestGol
	}
	if instance_exists(RadChest)
	{
		do {
			with instance_nearest(Player.x+random(500)-250,Player.y+random(500)-250,RadChest) 
				instance_destroy(id,false)
			}
		until instance_number(RadChest) <= gol
	}
	if instance_exists(AmmoChest)
	{
		do {with instance_nearest(Player.x+random(500)-250,Player.y+random(500)-250,AmmoChest) instance_destroy(id,false)}
	until instance_number(AmmoChest) <= gol
	}
	if instance_exists(HealthChest)
	{
		do {
		with instance_nearest(Player.x+random(500)-250,Player.y+random(500)-250,HealthChest) instance_destroy(id,false)}
	until instance_number(HealthChest) <= healthChestGol
	}
	if (instance_number(WeaponChest) < wepChestGol)
	{
		scrCreateMissingChest(WeaponChest,wepChestGol);	
	}
	if (instance_number(AmmoChest) < gol)
	{
		scrCreateMissingChest(AmmoChest,gol);	
	}
	//LABS BOSS? no rad cannister
	if instance_exists(Player) && ((Player.area == 6 || Player.area == 112) && Player.subarea == 2)
	{
		gol = 0;
	}

	if (instance_number(RadChest) < gol)
	{
		scrCreateMissingChest(RadChest,gol);
	}
	if (instance_number(HealthChest) < healthChestGol)
	{
		scrCreateMissingChest(HealthChest,healthChestGol);	
	}
	//Ultra chest
	if instance_exists(Player)
	{
		if Player.area == 134 || Player.area == 136 || (Player.loops > 1 && Player.level >= 10 && (Player.subarea == 1 || (Player.subarea == 2 && Player.skill_got[23])))
		{
			scrCreateMissingChest(UltraChest,1);
		}
		if UberCont.canSpawnInversionShards && scrIsInInvertedArea() && Player.area != 100 && Player.area != 104
		{
			var mindis = 64
			do {
				with Floor
				{
					var o = 16;
					if object_index == FloorExplo
						o = 8;
					var xx = x + o;
					var yy = y + o;
					var n = instance_nearest(x,y,chestprop);
					var n2 = instance_nearest(x,y,WeaponMod);
					var n3 = instance_nearest(x,y,ProtoStatue);
					var n4 = instance_nearest(x,y,RadChest);
					if !instance_exists(InversionShard) && point_distance(xx,yy,Player.x,Player.y) > mindis
					&& (!instance_exists(n) || n == noone || point_distance(xx,yy,n.x,n.y) > mindis)
					&& (!instance_exists(n2) || n2 == noone || point_distance(xx,yy,n2.x,n2.y) > mindis)
					&& (!instance_exists(n3) || n3 == noone || point_distance(xx,yy,n3.x,n3.y) > mindis)
					&& (!instance_exists(n4) || n4 == noone || point_distance(xx,yy,n4.x,n4.y) > mindis)
					{
						instance_create(xx,yy,InversionShard);
					}
				}
				mindis -= 32;
			} until (instance_exists(InversionShard) || mindis < 64)
		}
	}
	
	with ChestOpen
	instance_destroy()
	if instance_exists(Player)
	{
		if scrIsCrown(9)
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
			if random(12) < 1 and (Player.area >= 2 or Player.loops >= 1)
			{
				instance_create(x,y,Mimic)
				image_speed = 0.4
				instance_destroy(id,false);
			}
		}
		if instance_exists(Player)
		{
			if (Player.area == 119 || Player.area == 120)//Throne 2
			{
				with WeaponMod
					instance_destroy();
				with RogueAmmoChest
					instance_destroy(id,false);
			}
			if scrIsCrown(17)
			{
				var replaced = false;
				with WeaponMod
				{
					instance_destroy();
					if !replaced
					{
						instance_create(x,y,UltraChest);
						replaced = true;
					}
				}
			}
			if Player.race == 25 && !Player.skill_got[23]
			{
				with RadChest
				{
					instance_destroy(id,false);	
				}
			}
		}

		with HealthChest
		{
			if random(50) < 1 and (Player.area >= 2 or Player.loops >= 1)
			{
				instance_create(x,y,SuperMimic)
				image_speed = 0.4
				instance_destroy(id,false);
			}
		}
	}
	SetSeed();
}

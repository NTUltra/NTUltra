function scrDrop(itemdrop, weapondrop) {
	var pickup = noone;
	var isHard = scrIsHardMode();
	if instance_exists(DropReducer) && GetPlayerLoops() > 0 || isHard
	{
		var reductions = max(0.1,1 - (instance_number(DropReducer) * 0.1));
		itemdrop *= reductions;
	}
	if weapondrop > 0
	{
		if instance_number(WepPickup) > 20
			weapondrop = 0;
		else if instance_number(WepPickup) > 5
		{
			weapondrop *= 0.75;
			if instance_number(WepPickup) > 10
			{
				weapondrop *= 0.5;
				if instance_number(WepPickup) > 14
					weapondrop *= 0.5;
			}
		}
	}
	var canHealth = 1;
	var dropRateBuff = 0;
	var rabbit = 0;
	if instance_exists(Player)
	{
		var mh = Player.maxhealth;
		var h = Player.my_health;
		if Player.ultra_got[62] && Player.altUltra//Living armour
		{
			mh = Player.maxarmour
			h = Player.armour;
		}
		if instance_exists(WantHealth)
		{
			if h >= mh
			{
				with WantHealth
				{
					instance_destroy();	
				}
			}
			else
			{
				if GetPlayerLoops() > 0
					mh += (instance_number(WantHealth) * 0.05);
				else
					mh += (instance_number(WantHealth) * 0.1);
			}
		}
		var rebelBuff = 0;
		if Player.ultra_got[39] && !Player.altUltra
			rebelBuff = instance_number(Ally)*0.1;
		if itemdrop >= 100
			dropRateBuff = 0.07;
		else
			dropRateBuff = 0;
		rabbit = (Player.skill_got[4]*(0.34+Player.betterrabbitpaw));
		dropRateBuff += 0.98 + rabbit
		+ rebelBuff
		+ (Player.skill_got[28]*(Player.rage*0.0001))//max is 50%
		if scrIsCrown(21) //Crown of risk
		{
			if h >= floor(mh*0.75)
			{
				dropRateBuff += 0.7;
			}
			else
			{
				dropRateBuff -= 0.5;
			}
		}
		if isHard //HARD MODE
		{
			itemdrop *= 0.975;
			canHealth = 0.9;
			weapondrop *= 1.05
		}
		var lps = Player.loops;
		if lps > 0 && !scrIsCrown(5)
		{
			repeat(min(lps,4))
			{
				itemdrop *= 0.9;
				canHealth *= 0.9;//0.98
			}
		}
		if lps > 2
		{
			lps -= 2;
			repeat (min(lps,4))
			{
				weapondrop *= 0.95;
			}
		}
	if scrIsCrown(5)//crown of guns
	{
		weapondrop *= 1.65;
		weapondrop += 10;
	}
	else if scrIsCrown(15) //Crown of choice
	{
		weapondrop*=1.15;
		weapondrop+=4;
	}
	else if scrIsCrown(32)//Crown of Misfortune
	{
		itemdrop *= 0.5;
	}
	if Player.ultra_got[30] && !Player.altUltra {//Robot regurgitate
		weapondrop *= 1.15;
	}
	if Player.skill_got[0]//heavy heart
	{
		if Player.race == 25
			weapondrop=(weapondrop*1.6);
		else
			weapondrop=(weapondrop*1.5);
	}
	// adjusting for inflation ©2016
	//weapondrop *= 1.01;//weapon
	//itemdrop *= 1.01;//1.16//item
	//calculate need
/*
	if scrIsCrown(13)//no rads higher droprate crown
	{
		weapondrop *= 1.3;
		itemdrop *= 1.3;
		dropRateBuff += 0.3;
	}
*/

	if instance_exists(Player)
	{
		var ls = Player.loops;
		if ls > 0
			itemdrop*=0.9;

		if ls > 1
			itemdrop*=0.9;

		if ls > 2
			itemdrop*=0.8;

		if ls > 3
			itemdrop*=0.8;
	}

	if instance_exists(TemporaryBuff)
	{
		itemdrop*=2;
		weapondrop*=2;
	}

	if Player.ultra_got[85]
	{
		if random(Player.rogueammomax) > Player.rogueammo && random(180) < min(itemdrop * dropRateBuff, 150)
		{
			pickup = instance_create(x,y,RoguePickup)
			with pickup
			{
				if (rabbit > 0 && random(1) < rabbit+0.1)
				{
					with instance_create(x,y,RabbitPawFX)
					{
						speed = other.speed;
						direction = other.direction;
						friction = other.friction;
					}
				}	
			}
		}
	}
	need = 0

	if Player.ammo[Player.wep_type[Player.wep]] < Player.typ_amax[Player.wep_type[Player.wep]]*(0.2-(Player.skill_got[10]*0.04))
		need += 0.7//3
	else if Player.ammo[Player.wep_type[Player.wep]] > Player.typ_amax[Player.wep_type[Player.wep]]*(0.6-(Player.skill_got[10]*0.1))
		need += 0.08 
	else 
		need += 0.3//6

	if Player.bwep == 0 
		need += 0.3//6
	else if Player.ammo[Player.wep_type[Player.bwep]] < Player.typ_amax[Player.wep_type[Player.bwep]]*(0.2-(Player.skill_got[10]*0.04))
		need += 0.7//3
	else if Player.ammo[Player.wep_type[Player.bwep]] > Player.typ_amax[Player.wep_type[Player.bwep]]*(0.6-(Player.skill_got[10]*0.1))
		need += 0.08
	else 
		need += 0.3//6
	if random(mh) > h
		need += 0.08;

	if (Player.ultra_got[1]==1)//FISH ULTRA A Confiscate
	{
		var confDroprate = dropRateBuff
		if Player.skill_got[23]//Open mind
		{
			confDroprate += 0.15;
		}
		confDroprate *= 0.28;
		
		if confDropChanceIndex < 0
		{
			var ran = random(100);
			var ranReroll = random(100);
		}
		else
		{
			var ran = confDropChance[confDropChanceIndex];
			var ranReroll = confDropChance[confDropChanceIndex - 1];
		}

	    if (itemdrop > 0 && ran < min((itemdrop*0.5) * ((need*0.25) + confDroprate), 110))//rage=0.001
	    {
		    if ( scrIsCrown(2) && Player.canHeal && random(mh) > h || random(100) < 10) and random(3) < 2 and random(1) <= canHealth
			{
				pickup = instance_create(x,y,HealthChest)
			//return true;
			}
		    else if !scrIsCrown(5)
			{
				pickup = instance_create(x,y,AmmoChest)
			//return true;
			}
			//return false;
	    }
	    else if ranReroll < ((itemdrop*0.1)+weapondrop*0.75) * confDroprate
	    {
			pickup = instance_create(x,y,WeaponChest);
			//return true;
	    }
		confDropChanceIndex -= 2;
	}
	//drop items (10 + 2) * (0.75 + 0.5)
	if !variable_instance_exists(id,"itemDropChanceIndex") || itemDropChanceIndex < 0
		var ran = random(100);
	else
		var ran = itemDropChance[itemDropChanceIndex];
	if itemdrop > 0 && ran < min(itemdrop * (need + dropRateBuff), 100)
	{//0.3 for each ally Rebel has REBEL ULTRA C?
		//Nerves of Steel
		if (instance_exists(Player) && Player.skill_got[41] && Player.armour < Player.maxarmour && random(100) < (2.75 - Player.armour) ) {
			pickup = instance_create(x,y,HPPickup)
			with WantHealth
				instance_destroy();
			with pickup {
				isArmour = true;
				sprite_index = sprArmourPickup;
				if scrIsCrown(32)//Misfortune
				{
					sprite_index = sprArmourAmmo;
				}
				if (rabbit > 0 && random(1) < rabbit+0.1)
				{
					with instance_create(x,y,RabbitPawFX)
					{
						speed = other.speed;
						direction = other.direction;
						friction = other.friction;
					}
				}
			}
			return pickup;
		}
		else if random(mh) > h and random(3) < 2 and !scrIsCrown(2) and Player.canHeal and random(1) <= canHealth
		{
			pickup = instance_create(x,y,HPPickup)
			with WantHealth
				instance_destroy();
			with pickup {
				if (rabbit > 0 && random(1) < rabbit+0.1)
				{
					with instance_create(x,y,RabbitPawFX)
					{
						speed = other.speed;
						direction = other.direction;
						friction = other.friction;
					}
				}
			}
			return pickup;
		}
		else
		{
			if scrIsCrown(5)//Crown of guns roll again for healthdrop
			{
				if random(mh) > h and random(3) < 2 and !scrIsCrown(2) and Player.canHeal and random(1) <= canHealth
				{
					pickup = instance_create(x,y,HPPickup)
					with WantHealth
						instance_destroy();
					with pickup {
						if (rabbit > 0 && random(1) < rabbit+0.1)
						{
							with instance_create(x,y,RabbitPawFX)
							{
								speed = other.speed;
								direction = other.direction;
								friction = other.friction;
							}
						}
					}
					return pickup;
				}
			}
			else
			{
				if Player.canHeal && Player.my_health < Player.maxhealth
				{
					instance_create(x,y,WantHealth);
				}
				else
				{
					with WantHealth
						instance_destroy();
				}
				pickup = instance_create(x,y,AmmoPickup) 
				with pickup {
					if (rabbit > 0 && random(1) < rabbit+0.1)
					{
						with instance_create(x,y,RabbitPawFX)
						{
							speed = other.speed;
							direction = other.direction;
							friction = other.friction;
						}
					}
				}
				return pickup;
			}
		}
	}
	itemDropChanceIndex --;
	if weaponDropChanceIndex < 0
		var ran = random(100);
	else
		var ran = weaponDropChance[weaponDropChanceIndex];
	if ran < min(weapondrop*(dropRateBuff * 0.2), 100)
	{
		//drop weps
		pickup = instance_create(x,y,WepPickup)
		with pickup
		{
		scrWeapons()
		SetSeedWeapon();
		wep = scrDecideWep(0)
		name = wep_name[wep]
		type = wep_type[wep]
		ammo = 50
		curse = 0
		sprite_index = wep_sprt[wep];
		if collision_point(x,y,Wall,false,false)
		{
			var n = instance_nearest(x,y,Floor)
			if n != noone {
				var o = 16;
				if n.object_index == FloorExplo
				{
					o = 8;	
				}
				x = n.x + o;
				y = n.y + o;
				scrForcePosition60fps();
			}
		}
		}
		return pickup;
	}
	weaponDropChanceIndex --;
	}
	return pickup;
}

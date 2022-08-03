function scrDrop(itemdrop, weapondrop) {
	var canHealth = 1;
	var dropRateBuff = 0;
	if instance_exists(Player)
	{
		var rebelBuff = 0;
		if Player.ultra_got[39] && !Player.altUltra
			rebelBuff = instance_number(Ally)*0.25;
		dropRateBuff = 0.98 + (Player.skill_got[4]*(0.40+Player.betterrabbitpaw))
		+ rebelBuff
		+ (Player.skill_got[28]*(Player.rage*0.0004))
		if Player.crown == 21 //Crown of risk
		{
			if Player.my_health >= floor(Player.maxhealth*0.75)
			{
				dropRateBuff += 0.7;
			}
			else
			{
				dropRateBuff -= 0.5;
			}
		}
		if UberCont.opt_gamemode == 34 //HARD MODE
		{
			itemdrop *= 0.94;
			canHealth = 0.9;
			weapondrop *= 1.09
		}
		var lps = Player.loops;
		if lps > 1 && Player.crown != 5
		{
			lps --;
			repeat (min(lps,4))
			{
				canHealth *= 0.98;
			}
		}
		if lps > 6
		{
			lps -= 6;
			repeat (min(lps,4))
			{
				itemdrop *= 0.9;
				weapondrop *= 0.95;
			}
		}
	if Player.crown = 5//crown of guns
	{
		weapondrop*=1.4;
		weapondrop+=9;
	}
	else if Player.crown == 15 //Crown of choice
	{
		weapondrop*=1.15;
		weapondrop+=4;
	}

	if Player.skill_got[0] = 1//heavy heart
	{
		if Player.race=25
			weapondrop=(weapondrop*2.11);
		else
			weapondrop=(weapondrop*2.1);
	}
	// adjusting for inflation ©2016
	//weapondrop *= 1.01;//weapon
	//itemdrop *= 1.01;//1.16//item
	//calculate need

	if Player.crown = 13//no rads higher droprate crown
	{
		weapondrop *= 1.3;
		itemdrop *= 1.3;
		dropRateBuff += 0.3;
	}

	if UberCont.opt_gamemode=2{
		weapondrop+=100
		itemdrop+=100
	}

	if instance_exists(Player)
	{
		if Player.loops>0
			itemdrop*=0.9;

		if Player.loops>1
			itemdrop*=0.9;

		if Player.loops>2
			itemdrop*=0.8;

		if Player.loops>3
			itemdrop*=0.8;
	}

	if instance_exists(TemporaryBuff)
	{
		itemdrop*=2;
		weapondrop*=2;
	}

	if Player.ultra_got[85]
	{
		if random(Player.rogueammomax) > Player.rogueammo && random(160) < itemdrop * dropRateBuff
		{
			instance_create(x+random(4)-2,y+random(4)-2,RoguePickup);
		}
	}
	need = 0

	if Player.ammo[Player.wep_type[Player.wep]] < Player.typ_amax[Player.wep_type[Player.wep]]*(0.2-(Player.skill_got[10]*0.04))
		need += 0.73
	else if Player.ammo[Player.wep_type[Player.wep]] > Player.typ_amax[Player.wep_type[Player.wep]]*(0.6-(Player.skill_got[10]*0.1))
		need += 0.08 else need += 0.36

	if Player.bwep == 0 need += 0.36
	else if Player.ammo[Player.wep_type[Player.bwep]] < Player.typ_amax[Player.wep_type[Player.bwep]]*(0.2-(Player.skill_got[10]*0.04))
		need += 0.73
	else if Player.ammo[Player.wep_type[Player.bwep]] > Player.typ_amax[Player.wep_type[Player.bwep]]*(0.6-(Player.skill_got[10]*0.1))
		need += 0.08 else need += 0.36
	if random(Player.maxhealth) > Player.my_health
		need += 0.08;

	if (Player.ultra_got[1]==1)//FISH ULTRA A Confiscate
	{
		var confDroprate = dropRateBuff
		if Player.skill_got[23]//Open mind
		{
			confDroprate += 0.25;	
		}
		confDroprate *= 0.33;
	    if (itemdrop > 0 && random(110) < (itemdrop*0.5) * ((need*0.25) + confDroprate))//rage=0.001
	    {
		    if ( Player.crown != 2 && Player.canHeal && random(Player.maxhealth) > Player.my_health || random(100) < 10) and random(3) < 2 and random(1) <= canHealth
			{
				instance_create(x+random(4)-2,y+random(4)-2,HealthChest)
			//return true;
			}
		    else if Player.crown != 5
			{
				instance_create(x+random(4)-2,y+random(4)-2,AmmoChest)
			//return true;
			}
			//return false;
	    }
	    else if random(110) < ((itemdrop*0.1)+weapondrop*0.75) * confDroprate
	    {
			instance_create(x+random(4)-2,y+random(4)-2,WeaponChest);
			//return true;
	    }
	}
	//drop items (10 + 2) * (0.75 + 0.5)
	if itemdrop > 0 && random(100) < itemdrop * (need + dropRateBuff)
	{//0.3 for each ally Rebel has REBEL ULTRA C?

		if random(Player.maxhealth) > Player.my_health and random(3) < 2 and Player.crown != 2 and Player.canHeal and random(1) <= canHealth
		{
			instance_create(x+random(4)-2,y+random(4)-2,HPPickup)
			return true;
		}
		else
		{
			if Player.crown == 5//Crown of guns roll again for healthdrop
			{
				if random(Player.maxhealth) > Player.my_health and random(3) < 2 and Player.crown != 2 and Player.canHeal and random(1) <= canHealth
				{
					instance_create(x+random(4)-2,y+random(4)-2,HPPickup)
					return true;
				}
			}
			else
			{
				instance_create(x+random(4)-2,y+random(4)-2,AmmoPickup)
				return true;
			}
		}
	}
	else if random(100) < weapondrop*(dropRateBuff * 0.25)
	{
		//drop weps
		with instance_create(x+random(4)-2,y+random(4)-2,WepPickup)
		{
		scrWeapons()
		scrDecideWep(0)
		name = wep_name[wep]
		type = wep_type[wep]
		ammo = 50
		curse = 0
		sprite_index = wep_sprt[wep]
		}
		return true;
	}
	}
	return false;
}

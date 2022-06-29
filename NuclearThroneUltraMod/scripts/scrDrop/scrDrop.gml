function scrDrop(itemdrop, weapondrop) {
	var canHealth = 1;
	var dropRateBuff = 0;
	if instance_exists(Player)
	{
		dropRateBuff = 1 + Player.skill_got[4]*(0.45+Player.betterrabbitpaw) 
		+ (Player.ultra_got[39]*instance_number(Ally)*0.6)
		+ (Player.skill_got[28]*(Player.rage*0.0004))
		if Player.crown == 21 //Crown of risk
		{
			if Player.my_health >= floor(Player.maxhealth*0.5)
			{
				dropRateBuff += 0.7;
			}
			else
			{
				dropRateBuff -= 0.5;
			}
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
			weapondrop=(weapondrop*2.11)+3;
		else
			weapondrop=(weapondrop*2.1)+2;
	}
	// adjusting for inflation ©2016
	weapondrop *= 1.13;//weapon
	itemdrop *=1.18;//1.16//item
	//calculate need

	if Player.crown = 13//no rads higher droprate crown
	{
	weapondrop *= 1.22;
	itemdrop *=1.22;
	}

	if UberCont.opt_gamemode=2{
	weapondrop+=100
	itemdrop+=100}

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

	need = 0

	if Player.ammo[Player.wep_type[Player.wep]] < Player.typ_amax[Player.wep_type[Player.wep]]*(0.2-(Player.skill_got[10]*0.04))
		need += 0.75
	else if Player.ammo[Player.wep_type[Player.wep]] > Player.typ_amax[Player.wep_type[Player.wep]]*(0.6-(Player.skill_got[10]*0.1))
		need += 0.1 else need += 0.5

	if Player.bwep = 0 need += 0.5
	else if Player.ammo[Player.wep_type[Player.bwep]] < Player.typ_amax[Player.wep_type[Player.bwep]]*(0.2-(Player.skill_got[10]*0.04))
		need += 0.75
	else if Player.ammo[Player.wep_type[Player.bwep]] > Player.typ_amax[Player.wep_type[Player.bwep]]*(0.6-(Player.skill_got[10]*0.1))
		need += 0.1 else need += 0.5


	if (Player.ultra_got[1]==1)//FISH ULTRA A Confiscate
	{
	    if (random(100) < 12*dropRateBuff)//rage=0.001
	    {
		    if (random(Player.maxhealth) > Player.my_health || random(100) < 5) and random(3) < 2 and Player.crown != 2
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
	    else if random(100) < 12*dropRateBuff
	    {
			instance_create(x+random(4)-2,y+random(4)-2,WeaponChest);
			//return true;
	    }
	}
	//drop items (10 + 2) * (0.75 + 0.5)
	if itemdrop > 0 && random(100) < itemdrop*(need+dropRateBuff)
	{//0.3 for each ally Rebel has REBEL ULTRA C?

		if random(Player.maxhealth) > Player.my_health and random(3) < 2 and Player.crown != 2 and random(1) <= canHealth
		{
		instance_create(x+random(4)-2,y+random(4)-2,HPPickup)
		return true;
		}
		else if Player.crown != 5
		{
		instance_create(x+random(4)-2,y+random(4)-2,AmmoPickup)
		return true;
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

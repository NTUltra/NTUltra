///xxx();
// /@description
///@param
function scrRemoveCrown(oldcrown){
	//CROWN OF DESTINY
	//if oldcrown = 8 
	//Player.skillpoints -= 1
	//CROWN OF DEATH
	if oldcrown == 3
	{
		if instance_exists(Player) && Player.ultra_got[62] && Player.altUltra//Living armour
		{
			Player.maxarmour += 1
		}
		else
		{
			Player.maxhealth += 1
			UberCont.maxHpIncrease ++;
		}
	}
	//CROWN OF PROTECTION
	if oldcrown == 20
	{
		with Player {
			if gotMinimumArmour && !skill_got[41]//Nerves of steel
			{
				maxarmour --;
			}
			armour = min(armour, maxarmour);
		}
	}
	//Crown of mercenary
	if oldcrown = 30
	{
		if instance_exists(Player) && Player.ultra_got[62] && Player.altUltra//Living armour
		{
			var am = clamp(Player.maxarmour-1,0,1);
			Player.maxarmour -= am;
		}
		else
		{
			var am = clamp(Player.maxhealth-2,0,2);
			Player.maxhealth -= am;
			UberCont.maxHpIncrease -= am;
		}
	}
	//CROWN OF BOUNTY
	if oldcrown = 31
	{
		if instance_exists(Player) && Player.ultra_got[62] && Player.altUltra//Living armour
		{
			Player.maxarmour += 1
		}
		else
		{
			Player.maxhealth += 2
			UberCont.maxHpIncrease += 2;
		}
		if scrIsCrown(30)
		{
			var al = array_length(Player.crown);
			//Remove
			for (var i = 0; i < al; i++) {
				if (Player.crown[i] == 30)
				{
					array_delete(Player.crown,i,1);
					i = al;
				}
			}
			with Crown
			{
				if crown == 30
					instance_destroy();
			}	
		}
	}
	//Crown of drowning
	if oldcrown == 13
	{
		with Player {
			scrWeaponAdjustCost(0.5);
		}
	}
	//Crown of time
	if oldcrown == 34
	{
		Player.rewinds = 0;	
	}
	//Crown of popo
	if oldcrown == 16
	{
		with BackCont
		{
			wantVanAmount --;	
		}
	}
	if scrUsedEveryCrown()
	{
	with Player
		scrUnlockBSkin(18,"FOR TRYING EVERY CROWN",0);
	}

	if oldcrown == 23
	{
		//Crown of speed
		Player.pSpeedBoost -= 0.12;
		Player.maxSpeed -= 0.25;
	}
	//CROWN OF TIME
	if oldcrown == 24
	{
		//Crown of sloth
		Player.pSpeedBoost += 0.12;
		Player.maxSpeed += 0.3;
	}
	if oldcrown == 29
	{
		//Crown of purity
		with Player
		{
			var wantHealth = 0
			if wepmod1 != 0
				wantHealth += 1;
			if wepmod2 != 0 
				wantHealth += 1;
			if wepmod3 != 0
				wantHealth += 1;
			if wepmod4 != 0
				wantHealth += 1;
			
			maxhealth -= wantHealth;
			maxhealth = max(maxhealth,1);
			isPureHealthBoost = 0;
		}
	}

}
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
	if oldcrown == 4
	{
		Player.rushcrownlevels = 0;	
	}
	//CROWN OF PROTECTION
	if oldcrown == 20
	{
		with Player {
			if !(instance_exists(Player) && Player.ultra_got[62] && Player.altUltra)//Living armour
			{
				maxarmour --;
				maxhealth += 1;
				armour = min(armour, maxarmour);
			}
		}
	}
	//Crown of mercenary
	if oldcrown = 30
	{
		if instance_exists(Player) && Player.ultra_got[62] && Player.altUltra//Living armour
		{
			Player.maxarmour = max(Player.maxarmour - 1, 1);
			UberCont.maxHpIncrease = max(UberCont.maxHpIncrease - 1, 0);
		}
		else
		{
			Player.maxhealth = max(Player.maxhealth - 1, 1);
			UberCont.maxHpIncrease = max(UberCont.maxHpIncrease - 1, 0);
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
		with TimeRewinder
			instance_destroy();
	}
	//Crown of popo
	if oldcrown == 16
	{
		with BackCont
		{
			wantVanAmount --;	
		}
	}
	/*
	if scrUsedEveryCrown()
	{
	with Player
		scrUnlockBSkin(18,"FOR TRYING EVERY CROWN",0);
	}
	*/
	if oldcrown == 23
	{
		//Crown of speed
		Player.pSpeedBoost -= 0.12;
		Player.maxSpeed -= 0.25;
	}
	//CROWN OF Sloth
	if oldcrown == 24
	{
		Player.pSpeedBoost += 0.15;
		Player.maxSpeed += 0.37;
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
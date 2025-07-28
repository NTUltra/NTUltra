///scrCanArmourHeal();
// /@description
///@param
function scrCanArmourHeal(shouldTakeAmmo = false) {
	if armour >= maxarmour && (!skill_got[5] || freeArmourStrike)
		return false;
	
	/*
		var t = wep_type[wep]
		if t == 0
		{
			BackCont.shake += 5;
			with instance_create(x,y,PopupText)
			{
				mytext = "DOES NOT USE#AMMO"
				theColour=c_red;
			}
		}
		else if (t == 1 && ammo[t] > 190) || (t != 1 && ammo[t] > 40)
		{
			return true;
		}
	*/
	var takePercentage = 5;//4.75;//450%
	var doAgain = false; 
	var wepType = TargetWepTypeForAmmoConsumption(takePercentage, 3, true);
	var cost = typ_ammo[wepType]*takePercentage;
	var bWepType;
	var bCost;
	var cWepType;
	var cCost;
	if wepType != wep_type[bwep] && wepType != wep_type[wep]
	{
		doAgain = true;
		//var keepAmmo = ammo[wepType];
		//ammo[wepType] = ammo[wepType] - cost;
		bWepType = TargetWepTypeForAmmoConsumption(takePercentage, 3, true);
		bCost = typ_ammo[bWepType]*takePercentage;
		//ammo[wepType] = keepAmmo;
		
		cWepType = TargetWepTypeForAmmoConsumption(takePercentage, 3, true);
		cCost = typ_ammo[cWepType]*takePercentage;
	}
	if (ammo[wepType] - cost > 0 || (wepType != wep_type[wep] && ammo[wepType] > 0)
	&& (!doAgain || (ammo[bWepType] - bCost > 0 || (bWepType != wep_type[bwep] && ammo[bWepType] > 0))))
	{
		if (shouldTakeAmmo)
		{
			scrSpendingAmmo(wepType, cost);
			ammo[wepType] = ammo[wepType] - cost;
			if (ammo[wepType] <= 0)
			{
				scrSpendingAmmo(wepType, cost * 0.5);
				ammo[wepType] -= cost * 0.5;
				if scrIsCrown(13)
				{
					with Crown {
						event_user(0);	
					}
				}
			}
			if doAgain
			{
				scrSpendingAmmo(bWepType, bCost);
				ammo[bWepType] = ammo[bWepType] - bCost;
				if (ammo[bWepType] <= 0)
				{
					scrSpendingAmmo(bWepType, bCost * 0.5);
					ammo[bWepType] -= bCost * 0.5;
					if scrIsCrown(13)
					{
						with Crown {
							event_user(0);	
						}
					}
				}
				scrSpendingAmmo(bWepType, bCost);
				ammo[cWepType] = ammo[cWepType] - cCost;
				if (ammo[cWepType] <= 0)
				{
					scrSpendingAmmo(bWepType, bCost * 0.5);
					ammo[cWepType] -= cCost * 0.5;
					if scrIsCrown(13)
					{
						with Crown {
							event_user(0);	
						}
					}
				}
			}
		}
		return true;
	}
	else
	{
		snd_play(sndNoArmour);
		// snd_play_2d(snd_lowa,0,true,false,10);
		snd_play(sndEmpty)
		var dir = instance_create(x,y,PopupText)
		dir.mytext = "NOT ENOUGH AMMO";
		dir.theColour=c_red;
		drawempty = 30
		BackCont.shake += 5;
	}
	return false;
}
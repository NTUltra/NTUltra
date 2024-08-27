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
	var takePercentage = 4.75;//450%
	var doAgain = false; 
	var wepType = TargetWepTypeForAmmoConsumption(takePercentage, 1);
	var cost = typ_ammo[wepType]*takePercentage;
	var bWepType;
	var bCost;
	if wepType != wep_type[bwep] && wepType != wep_type[wep]
	{
		doAgain = true;
		var keepAmmo = ammo[wepType];
		ammo[wepType] = ammo[wepType] - cost;
		bWepType = TargetWepTypeForAmmoConsumption(takePercentage, 1);
		bCost = typ_ammo[bWepType]*takePercentage;
		ammo[wepType] = keepAmmo;
	}
	if (wepType != 0 && ammo[wepType] - cost > 0
	&& (!doAgain || (bWepType != 0 && ammo[bWepType] - bCost > 0)))
	{
		if (shouldTakeAmmo)
		{
			ammo[wepType] = ammo[wepType] - cost;
			if (ammo[wepType] <= 0)
			{
				if scrIsCrown(13)
				{
					with Crown {
						event_user(0);	
					}
				}
			}
			if doAgain
			{
				ammo[bWepType] = ammo[bWepType] - bCost;
				if (ammo[bWepType] <= 0)
				{
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
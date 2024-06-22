///TargetWepTypeForAmmoConsumption();
// /@description Take ammo from primary than if melee take from secondary otherwise take from other pools at random
///@param
function TargetWepTypeForAmmoConsumption(takePercentage, extraTake = 3){
	var pt = wep_type[wep]
	var bt = wep_type[bwep];
	var wepType = bt;
	var pcost = typ_ammo[pt]*takePercentage;
	var bcost = typ_ammo[bt]*takePercentage;
	if (wepType == 0 || bwep == 0 || ammo[bt] < bcost)
	{
		wepType = pt;
	}
	else
	{
		if !instance_exists(UseSecondaryAmmo)
			instance_create(x,y,UseSecondaryAmmo);
		else
			with UseSecondaryAmmo
				event_user(0);
	}
	if wepType == 0 || ammo[pt] < pcost
	{
		wepType = 0;
		with UseSecondaryAmmo
			instance_destroy();
		var tryType = irandom_range(1,5);
		
		totalTries = 0;
		while(totalTries <= 5 && wepType == 0)
		{
			var cost = typ_ammo[tryType]*takePercentage * extraTake;
			if (ammo[tryType] - cost > 0)
			{
				wepType = tryType;
			}
			else
			{
				tryType++
				totalTries++;
				if tryType > 5
					tryType = 1;
			}
		}
		if wepType == 0
		{
			wepType = bt;
			if bwep == 0
				wepType = pt;
		}
	}
	return wepType
}
function scrDecideWep(wepTierParam, maxTriesParam = 6, cursedParam = 0, minWepAreaParam = 0/*, areaWepTries = 0*/) {
	var wepTier = wepTierParam - 1;
	var maxTries = maxTriesParam;
	var cursed = cursedParam;
	var minWepArea = minWepAreaParam;
	var dataRef;
	if instance_exists(Player)
		dataRef = Player;
	else if instance_exists(PlayerSpawn)
		dataRef = PlayerSpawn;
	else if instance_exists(DataRef)
		dataRef = DataRef;
	else
		return 0;
	if scrIsGamemode(2) {
		//Favourable build
		if dataRef.loops > 0
			wep=choose(592, 591, 500, 508, 410, 24,79,12,11,562, 481, 360, 596, 598, 22, 99, 213, 220, 331, 221, 222, 223, 87, 234, 140, 236,197,127,128,395,397,536,540,542, 118, 563,543,541,538, 507, 506, 504, 494, 487, 120, 524, 266, 544, 396, 550, 121, 422, 456);
		else
			wep=choose(592, 591, 500, 508, 410, 24,79,12,11,562, 481, 360, 596, 598, 22, 99, 213, 220, 331, 221, 222, 223, 87, 234, 140);
	}
	else {
		var maxAreaGoodEnough = irandom_range(7,12);
		if dataRef.race = 8
		{
			wepTier += 1
			maxTries += 5;
		}
		if !dataRef.altUltra && dataRef.ultra_got[29]==1//Refined taste
		{
			wepTier += choose(1,2);
			minWepArea = min(7,dataRef.hard+wepTier);
			maxTries += 20;
		}
			
		if (cursed) {
			wepTier += 2;
			maxTries += 5;
			//do wep = round(random(maxwep-1)+1)
			//until (wep_area[wep] > dataRef.hard+wepTier or dataRef.hard > 20) and wep_area[wep] <= dataRef.hard+wepTier+5 and wep_area[wep] and ((wep != dataRef.wep and wep != dataRef.bwep) or dataRef.race = 7)
		}
		else if instance_exists(Player)
		{
			if (round(wepTier) == 21  || round(wepTier) == 24 || round(wepTier) == 30 || round(wepTier) == 50)
			&& !UberCont.start_wep_have_all[dataRef.race] && !scrIsGamemode(31)//THE GOLDEN TIER(s)
			{
				return scrDecideWepGold();	
			}
		}
		wepTier += dataRef.hard;
		if wepTier < 0
		{
			wepTier = 0;
		}
		wepTier = max(1,wepTier);
		if dataRef.race == 17
		{
			wepTier -= 1;
		}
		var triesForSpecificTier = 0;
		var maxValidTierWep = 0;
		if scrIsGamemode(31)//Only melee
		{
			var tries = 0;
			var tooBad = 0;
			do {
				wep = irandom(maxwep-1)+1;
			//Non melee has been excluded, but not every tier has multiple melees so do some shit
			if wep_area[wep]  <= wepTier && wep_area[wep] > wep_area[maxValidTierWep]
			{
				maxValidTierWep = wep;
			}
			if wep_area[wep]  <= wepTier
				triesForSpecificTier++;
				if tries > 1000
				{
					triesForSpecificTier = 0;
					if wepTier-tooBad - 1 > 0
						tooBad ++;
				}
			}
			until (
				(wep_area[wep] == max(1,wepTier-tooBad) || triesForSpecificTier > maxTries || wep_area[wep] >= maxAreaGoodEnough)
				&& wep_area[wep] >= minWepArea && wep_area[wep] <= wepTier
			)
		}
		else
		{
			var infiniteTries = 9999;
			do {
				wep = irandom(maxwep-1)+1;
				if wep_area[wep]  <= wepTier && wep_area[wep] > wep_area[maxValidTierWep]
				{
					maxValidTierWep = wep;
				}
				if wep_area[wep]  <= wepTier
					triesForSpecificTier++;
				infiniteTries --;
			}
			until (
			(wep_area[wep] == wepTier || triesForSpecificTier > maxTries || wep_area[wep] >= maxAreaGoodEnough)
			&& wep_area[wep] >= minWepArea && wep_area[wep] <= wepTier
			&& ( infiniteTries < 1 || (wep != dataRef.wep and wep != dataRef.bwep and wep != dataRef.cwep && !scrIsWeaponOnGround(wep)) || dataRef.race == 7/*roids can dual wield*/) 
			)
		}
		//Found a higher option than our result? Take that one
		if (wep_area[maxValidTierWep] > wep_area[wep] && ( (maxValidTierWep != dataRef.wep and maxValidTierWep != dataRef.bwep and maxValidTierWep != dataRef.cwep) || dataRef.race == 7/*roids can dual wield*/)
			&& (cursed || dataRef.race == 8 || random(5) < 4))
		{
			wep = maxValidTierWep;
		}
		//Weapon already on the ground?
		/*
		if (areaWepTries < 20 && dataRef.race != 7)
		{
			var theTier = wepTierParam;
			if theTier <= 0
				theTier++;
			var isOnGround = false;
			with WepPickup
			{
				if wep == other.wep
				{
					isOnGround = true;
				}
			}
			if isOnGround
				return scrDecideWep(theTier, maxTriesParam, cursedParam, minWepAreaParam, areaWepTries + 1);
		}
		*/
	}
	while (wep == 402 && !(scrIsCrown(5) || dataRef.skill_got[0] ))//Rolled gun gun? you must have crown of guns or heavy heart
	{
		wep = scrDecideWep(wepTierParam, maxTriesParam, cursedParam, minWepAreaParam);
	}
	return wep;
}

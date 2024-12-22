function scrDecideWep(wepTierParam, maxTriesParam = 10, cursedParam = 0, minWepAreaParam = 0/*, areaWepTries = 0*/, specificType = false) {
	var wepTier = wepTierParam - 1;
	var maxTries = maxTriesParam;
	var cursed = cursedParam;
	var minWepArea = minWepAreaParam;
	var dataRef;
	var decideWep = 0;
	if instance_exists(Player)
		dataRef = Player;
	else if instance_exists(PlayerSpawn)
		dataRef = PlayerSpawn;
	else if instance_exists(DataRef)
		dataRef = DataRef;
	else
		return 0;
	if dataRef.hard > 13
	{
		maxTriesParam *= 0.5;
	}
	var isFactory = dataRef.area == 130 || dataRef.area == 131 || dataRef.area == 132 || dataRef.area == 133 || dataRef.area == 134
	if scrIsGamemode(2) {
		//Favourable build
		if isFactory || dataRef.loops > 0
			decideWep=choose(592, 591, 500, 508, 410, 24,79,12,11,562, 481, 360, 596, 598, 22, 99, 213, 220, 331, 221, 222, 223, 87, 234, 140, 236,197,127,128,395,397,536,540,542, 118, 563,543,541,538, 507, 506, 504, 494, 487, 120, 524, 266, 544, 396, 550, 121, 422, 456);
		else
			decideWep=choose(592, 591, 500, 508, 410, 24,79,12,11,562, 481, 360, 596, 598, 22, 99, 213, 220, 331, 221, 222, 223, 87, 234, 140);
	}
	else {
		var maxAreaGoodEnough = irandom_range(6,12);
		if dataRef.race = 8
		{
			wepTier += 1
			maxTries += 5;
		}
		if !dataRef.altUltra && dataRef.ultra_got[29]==1//Refined taste
		{
			wepTier += choose(1,2);
			minWepArea = min(7,dataRef.hard+wepTier);
			minWepArea = floor(minWepArea);
			maxTries += 20;
		}
		if (cursed) {
			wepTier += 2;
			maxTries += 5;
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
		if isFactory
		{
			wepTier += 2;
			maxTries *= 1.25;
			maxAreaGoodEnough += 1;
			minWepArea += 1;
		}
		wepTier = floor(wepTier);
		wepTier = max(1,wepTier);
		if dataRef.race == 17
		{
			wepTier -= 1;
		}
		var triesForSpecificTier = 0;
		var maxValidTierWep = 0;
		if specificType || scrIsGamemode(31)//Only melee
		{
			var tooBad = 0;
			do {
				decideWep = irandom(maxwep-1)+1;
				//Non melee has been excluded, but not every tier has multiple melees so do some shit
				if wep_area[decideWep]  <= wepTier && wep_area[decideWep] > wep_area[maxValidTierWep]
				{
					maxValidTierWep = decideWep;
				}
				if wep_area[decideWep]  <= wepTier
					triesForSpecificTier++;
				if triesForSpecificTier > max(maxTries,1000)
				{
					triesForSpecificTier = 0;
					if wepTier-tooBad - 1 > 0
						tooBad ++;
				}
			}
			until (
				(wep_area[decideWep] == max(0,wepTier-tooBad) || triesForSpecificTier > maxTries || (wep_area[decideWep] >= maxAreaGoodEnough && triesForSpecificTier > maxTries))
				&& wep_area[decideWep] >= minWepArea && wep_area[decideWep] <= wepTier
			)
		}
		else
		{
			var infiniteTries = 9999;
			do {
				decideWep = irandom(maxwep-1)+1;
				if wep_area[decideWep]  <= wepTier && wep_area[decideWep] > wep_area[maxValidTierWep]
				{
					maxValidTierWep = decideWep;
				}
				else
				{
					if wepTier >= maxAreaGoodEnough || wep_area[decideWep]  <= wepTier
						triesForSpecificTier++;
				}
				infiniteTries --;
			}
			until (
			(wep_area[decideWep] == wepTier || triesForSpecificTier > maxTries || (wep_area[decideWep] >= maxAreaGoodEnough && triesForSpecificTier > maxTries))
			&& wep_area[decideWep] >= minWepArea && wep_area[decideWep] <= wepTier
			&& ( infiniteTries < 1 || (dataRef.race == 7 || ( decideWep != dataRef.wep and decideWep != dataRef.bwep and decideWep != dataRef.cwep && !scrIsWeaponOnGround(decideWep))) /*roids can dual wield*/) 
			)
		}
		//Found a higher option than our result? Take that one
		if (wep_area[maxValidTierWep] > wep_area[decideWep]
		&& (dataRef.race == 7 || (maxValidTierWep != dataRef.wep and maxValidTierWep != dataRef.bwep and maxValidTierWep != dataRef.cwep && !scrIsWeaponOnGround(maxValidTierWep)) /*roids can dual wield*/)
			&& (cursed || dataRef.race == 8 || random(5) < 4))
		{
			decideWep = maxValidTierWep;
		}
	}
	while (decideWep == 402 && !(scrIsCrown(5) || dataRef.skill_got[0] || isFactory))//Rolled gun gun? you must have crown of guns or heavy heart
	{
		decideWep = scrDecideWep(wepTierParam, maxTriesParam, cursedParam, minWepAreaParam);
	}
	return decideWep;
}

function scrDecideWep(wepTierParam, maxTriesParam = 10, cursedParam = 0, minWepAreaParam = 0, areaWepTries = 0) {
	var wepTier = wepTierParam;
	var maxTries = maxTriesParam;
	var cursed = cursedParam;
	var minWepArea = minWepAreaParam;
	if instance_exists(Player)
	{
		if scrIsGamemode(2) {
			//Favourable build
			if Player.loops > 0
				wep=choose(592, 591, 500, 508, 410, 24,79,12,11,562, 481, 360, 596, 598, 22, 99, 213, 220, 331, 221, 222, 223, 87, 234, 140, 236,197,127,128,395,397,536,540,542, 118, 563,543,541,538, 507, 506, 504, 494, 487, 120, 524, 266, 544, 396, 550, 121, 422, 456);
			else
				wep=choose(592, 591, 500, 508, 410, 24,79,12,11,562, 481, 360, 596, 598, 22, 99, 213, 220, 331, 221, 222, 223, 87, 234, 140);
		}
		else {
			var maxAreaGoodEnough = irandom_range(7,12);
			if Player.race = 8
			{
				wepTier += 1
				maxTries += 2;
			}
			if !Player.altUltra && Player.ultra_got[29]==1//Refined taste
			{
				wepTier += choose(1,2);
				minWepArea = min(7,Player.hard+wepTier);
				maxTries += 20;
			}
			
			if (cursed) {
				wepTier += 2;
				maxTries += 5;
				//do wep = round(random(maxwep-1)+1)
				//until (wep_area[wep] > Player.hard+wepTier or Player.hard > 20) and wep_area[wep] <= Player.hard+wepTier+5 and wep_area[wep] and ((wep != Player.wep and wep != Player.bwep) or Player.race = 7)
			}
			else if instance_exists(Player)
			{
				if (round(wepTier) == 21  || round(wepTier) == 24 || round(wepTier) == 30 || round(wepTier) == 50)
				&& !UberCont.start_wep_have_all[Player.race] && UberCont.opt_gamemode != 31//THE GOLDEN TIER(s)
				{
					return scrDecideWepGold();	
				}
			}
			if Player.hard + wepTier < 0
			{
				wepTier = 0;
			}
			var triesForSpecificTier = 0;
			var maxValidTierWep = 0;
			if UberCont.scrIsGamemode(31)//Only melee
			{
				var tries = 0;
				var tooBad = 0;
				var h = max(1,Player.hard);
				do {
					wep = irandom(maxwep-1)+1;
				//Non melee has been excluded, but not every tier has multiple melees so do some shit
				if wep_area[wep]  <= h + wepTier && wep_area[wep] > wep_area[maxValidTierWep]
				{
					maxValidTierWep = wep;
				}
				triesForSpecificTier++;
					if tries > 1000
					{
						triesForSpecificTier = 0;
						tooBad --;
					}
				}
				until (
					(wep_area[wep] == h + wepTier-tooBad || triesForSpecificTier > maxTries || wep_area[wep] >= maxAreaGoodEnough)
					&& wep_area[wep] >= minWepArea && wep_area[wep] <= h + wepTier
				)
			}
			else
			{
				do {
					wep = irandom(maxwep-1)+1;
					if wep_area[wep]  <= Player.hard+wepTier && wep_area[wep] > wep_area[maxValidTierWep]
					{
						maxValidTierWep = wep;
					}
					triesForSpecificTier++;
				}
				until (
				(wep_area[wep] == Player.hard+wepTier || triesForSpecificTier > maxTries || wep_area[wep] >= maxAreaGoodEnough)
				&& wep_area[wep] >= minWepArea && wep_area[wep] <= Player.hard+wepTier
				&& ( (wep != Player.wep and wep != Player.bwep and wep != Player.cwep) || Player.race == 7/*roids can dual wield*/) 
				)
			}
			//Found a higher option than our result? Take that one
			if (wep_area[maxValidTierWep] > wep_area[wep] && ( (maxValidTierWep != Player.wep and maxValidTierWep != Player.bwep and maxValidTierWep != Player.cwep) || Player.race == 7/*roids can dual wield*/)
				&& (cursed || Player.race == 8 || random(5) < 4))
			{
				wep = maxValidTierWep;
			}
			//Weapon already on the ground?
			if (areaWepTries < 20 && Player.race != 7)
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
		}
		while (wep == 402 && Player.crown != 5)//Rolled gun gun? you must have crown of guns
		{
			wep = scrDecideWep(wepTierParam, maxTriesParam, cursedParam, minWepAreaParam);
		}
	}
	else
	{
		do {
			wep = round(random(maxwep-1)+1);
		}
		until (wep_area[wep] != -1)
	}
	return wep;
}

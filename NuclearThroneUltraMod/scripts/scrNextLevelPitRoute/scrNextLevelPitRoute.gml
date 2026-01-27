///xxx();
// /@description
///@param
function scrNextLevelPitRoute() {
	switch (area)
	{
		case 137:
			if !instance_exists(RegalNavigation)
			{
				with UberCont
				{
					if !scrIsCrown(44)
						portalEssence += 4 * scrGetPortalEssenceBoost();
				}
				area = 141;
				subarea = 1;
				lastarea = 141;
				lastsubarea = 1;
				baseWeaponTier -= 1;
				gameDifficulty -= 1;
				baseWeaponTier = max(baseWeaponTier,0);
				gameDifficulty = max(gameDifficulty,0);
			}
		break
		case 100:
		case 139://THE PIT
			inverted = true;
			area = 140;//Get regal!
			subarea = 1;
			baseWeaponTier += 1;
			gameDifficulty += 1;
		break;
		case 107:
			//Jungle to palace and end
			area = 9;//Palace
			subarea = 1;
			with PitNavigation
				instance_destroy();
		break;
	}
	if loops < 1 && area != 100
	{
		baseWeaponTier += 1;
		gameDifficulty += 1;
		if scrIsCrown(10)
		{
			baseWeaponTier += 1;
			gameDifficulty += 1;
		}
	}
}
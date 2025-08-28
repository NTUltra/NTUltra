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
				hard -= 1;
				hard = max(hard,0);
			}
		break
		case 139://THE PIT
			inverted = true;
			area = 140;//Get regal!
			subarea = 1;
			hard += 1;
		break;
		case 107:
			//Jungle to palace and end
			area = 9;//Palace
			subarea = 1;
			with PitNavigation
				instance_destroy();
		break;
	}
	if loops < 1
	{
		hard += 1;
		if scrIsCrown(10)
		{
			hard += 1;
		}
	}
}
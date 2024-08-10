///xxx();
// /@description
///@param
function scrNextLevelPitRoute() {
	switch (area)
	{
		case 139:
			area = 124;//Mushroom INV VOLCANO AND THEN INV FROZ
		break;
		case 107:
			area = 121;//Inv frozen city to Inv savanna
		break;
		case 138:
			area = 106//cloud to inv scrap
		break;
		case 125:
			//Jungle to palace and end
			area = 9;//Palace
			subarea = 1;
			with PitNavigation
				instance_destroy();
		break;
	}
}
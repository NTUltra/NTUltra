///scrExitCrownVault();
// /@description
///@param
function scrExitCrownVault(){
	if instance_exists(Player)
	{
		Player.area = Player.lastarea
		var ar = Player.area;
		if ar == 105 || ar == 106 || ar == 107 || ar == 109 || ar == 118//CROWN in inverted area
			Player.subarea = 2;
		if Player.crownvisits == 0
		|| Player.area == 126 || Player.area == 127 //Graveyard
		|| Player.area == 115 || Player.area == 124	//Mushroom
			Player.subarea = 0;
		else if Player.area == 6 || Player.area == 111 //Caves
		|| Player.area == 114 || Player.area == 123//Jungle
			Player.subarea = 1;
		else
			Player.subarea = 2
	}
}
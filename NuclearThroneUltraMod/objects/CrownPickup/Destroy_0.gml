if instance_exists(Player)
{
	Player.area = Player.lastarea
	var ar = Player.area;
	if ar == 105 || ar == 106 || ar == 107 || ar == 109 || ar == 118//CROWN in inverted area
		Player.subarea = 2;
if Player.level=1
Player.subarea=0;
else
Player.subarea = 2}


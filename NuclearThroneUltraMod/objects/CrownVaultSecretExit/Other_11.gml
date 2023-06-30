/// @description Navigate 2
if instance_exists(Player)
{
	switch(Player.lastarea)
	{
		//Desert -> Graveyard
		case 1:
		case 105:
			nav = 126
			name = "2C - 1"
		break;
		//Scrapyard -> Mushroom
		case 2:
		case 106:
			nav = 117
			name = "4C - 1"
		break;
		//Frozen City -> Wonderland
		case 5:
		case 107:
			nav = 126
			name = "5B - 3"
		break;
		//Palace -> Graveyard
		case 9:
		case 118:
			nav = 9
			name = "7 - 3"
		break;
		//Vulcano -> Jungle
		case 7:
		case 108:
			nav = 126
			name = "5C - 2"
		break;
		//Wonderland -> Caves
		case 8:
		case 109:
			nav = 4
			name = "6 - 2"
		break;
		//Savanna -> Oasis
		case 10:
		case 121:
			nav = 101;
			name = "1B - 3";
			break;
		//Oasis -> Savanna
		case 101:
		case 122:
			nav = 10;
			name = "1C - 3";
			break;
		default:
			nav = Player.lastarea;
		break;
	}
}
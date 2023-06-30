/// @description Navigate 1 Inverted
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
			nav = 124
			name = "4C - 1"
		break;
		//Frozen City -> Wonderland
		case 5:
		case 107:
			nav = 108
			name = "5B - 3"
		break;
		//Palace -> Palace
		case 9:
		case 118:
			nav = 118
			name = "7 - 3"
		break;
		//Vulcano -> Jungle
		case 7:
		case 108:
			nav = 123
			name = "5C - 2"
		break;
		//Wonderland -> Caves
		case 8:
		case 109:
			nav = 111
			name = "6 - 2"
		break;
		//Savanna -> Oasis
		case 10:
		case 121:
			nav = 122;
			name = "1B - 3";
			break;
		//Oasis -> Savanna
		case 101:
		case 122:
			nav = 121;
			name = "1C - 3";
			break;
		default:
			nav = Player.lastarea;
		break;
	}
}
image_yscale *= -1;
textScaleX = -1;
textAngle = 180;
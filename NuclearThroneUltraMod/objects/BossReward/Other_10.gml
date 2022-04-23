/// @description Activated
sprite_index = sprBossHolder;
active = true;
name = "CHALLENGE TO#";
switch(UberCont.array_length(collectedRewards))
{
	case 0:
		name += "GAIN 1 MAX HP";
	break;
	case 1:
		name += "INCREASE THE VALUE OF RADIATION BY 15%";
	break;
	case 2:
		name += "GAIN ONE LIFE";
	break;
	case 3:
		name += "GAIN 1 MAX HP";
	break;
	case 4:
		name += "UNLOCK THE MUTATION REROLL STATION#AVAILABLE NEXT VAUL VISIT";
	break;
	case 5:
		name += "INCREASE YOUR MAX LEVEL BY ONE";
	break;
}

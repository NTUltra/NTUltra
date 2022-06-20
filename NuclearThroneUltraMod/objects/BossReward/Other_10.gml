/// @description Activated
sprite_index = sprBossHolder;
active = true;
name = "";
switch(array_length(UberCont.collectedRewards))
{
	case 0:
	//One hit wonder
		if UberCont.opt_gamemode == 32
			name += "GAIN ONE MUTATION";
		else
			name += "GAIN 1 MAX HP";
	break;
	case 1:
		name += "INCREASE THE VALUE OF RADIATION BY 15%";
	break;
	case 2:
		name += "GAIN ONE LIFE";
	break;
	case 3:
		name += "UNLOCK THE MUTATION REROLL STATION#AVAILABLE NEXT VAULT VISIT";
	break;
	case 4:
		name += "INCREASE YOUR MAX LEVEL BY ONE";
	break;
	case 5:
		if UberCont.opt_gamemode == 32
			name += "GAIN ONE ULTRA MUTATION";
		else
			name += "GAIN 1 MAX HP";
	break;
}

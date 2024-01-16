/// @description Activated
sprite_index = sprBossHolder;
active = true;
name = "";
switch(array_length(UberCont.collectedRewards))
{
	case 0:
		//name += "COLLECT TWO GUARANTEED RE-ROLLS";
		name += "CROWNVAULTS (OVER)HEAL 1HP";
	break;
	case 1:
		name += "INCREASE THE VALUE OF RADIATION BY 10%";
	break;
	case 2:
		//One hit wonder
		if scrIsGamemode(32)
			name += "GAIN ONE MUTATION";
		else
			name += "GAIN 1 MAX HP";
	break;
	case 3:
		name += "UNLOCK THE MUTATION REROLL STATION";
	break;
	case 4:
		name += "INCREASE YOUR MAX LEVEL BY ONE";
	break;
	case 5:
		if scrIsGamemode(32)
			name += "GAIN ONE ULTRA MUTATION";
		else
			name += "GAIN 1 MAX HP";
	break;
}

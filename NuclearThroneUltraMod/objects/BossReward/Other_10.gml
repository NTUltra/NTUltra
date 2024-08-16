/// @description Activated
sprite_index = sprBossHolder;
active = true;
name = "";
switch(array_length(UberCont.collectedRewards))
{
	case 0:
		//name += "COLLECT TWO GUARANTEED RE-ROLLS";
		name += "CROWNVAULTS HEAL 2HP";
	break;
	case 1:
		name += "INCREASE THE VALUE OF RADIATION BY 10%";
	break;
	case 2:
		name += "GAIN 10 PORTAL ESSENCE";
	break;
	case 3:
		name += "UNLOCK THE MUTATION REROLL STATION";
	break;
	case 4:
		name += "INCREASE YOUR MAX LEVEL BY ONE";
	break;
	case 5:
		if scrIsGamemode(32)
			name += "GAIN ONE MUTATION";
		else
		{
			if instance_exists(Player) && Player.ultra_got[62] && Player.altUltra//LIVING ARMOUR
				name += "GAIN 1 MAX ARMOUR";
			else
				name += "GAIN 1 MAX HP";
		}
	break;
}

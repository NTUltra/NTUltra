/// @description Muchas clickas
switch(UberCont.array_length(collectedRewards))
{
	case 0:
		with Player
		{
			maxhealth += 1;
			my_health += 1;
		}
		snd_play(other.snd_chst);
	break;
	case 1:
		//name += "INCREASE THE VALUE OF RADIATION";
		UberCont.radUp = true;
		snd_play(other.snd_chst);
	break;
	case 2:
		with Player
		{
			skeletonlives += 1;
		}
		snd_play(other.snd_crwn);
	break;
	case 3:
		with Player
		{
			maxhealth += 1;
			my_health += 1;
		}
		snd_play(other.snd_thrn);
	break;
	case 4:
		UberCont.enableReroll = true;
		snd_play(other.snd_valt);
	break;
	case 5:
		with Player
		{
			maxlevel ++;// In room end check it will be set
			UberCont.levelIncrease += 1;
		}
		snd_play(other.snd_thrn);
		//name += "INCREASE YOUR IFRAMES BY 25%";
	break;
}

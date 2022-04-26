/// @description Muchas clickas
switch(array_length(UberCont.collectedRewards))
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
		snd_play(other.snd_chst);
	break;
	case 3:
		with Player
		{
			maxhealth += 1;
			my_health += 1;
		}
		snd_play(other.snd_chst);
	break;
	case 4:
		UberCont.enableReroll = true;
		snd_play(other.snd_crwn);
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
with UberCont
{
	collectedRewards[array_length(collectedRewards)] = other.myBoss;
}
with BecomeBallBoss
{
	event_user(0);	//Update ring
}
with BossReward {
	alarm[0] = 1;//Update rewards
}
instance_create(x,y,Flash);
active = false;
alarm[0] = 0;
sprite_index = sprBossHolderDead;
image_speed = 0.4;
image_index = 0;

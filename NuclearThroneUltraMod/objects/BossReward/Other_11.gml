/// @description Muchas clickas
switch(array_length(UberCont.collectedRewards))
{
	case 0:
		//One hit wonder
		if UberCont.opt_gamemode == 32
		{
			with Player
			{
				skillpoints ++;
				skillsChosen--;
			}
		}
		else
		{
			with Player
			{
				maxhealth += 1;
				my_health += 1;
			}
			UberCont.maxHpIncrease += 1
		}
		snd_play(other.snd_chst);
	break;
	case 1:
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
		UberCont.enableReroll = true;
		snd_play(other.snd_crwn);
	break;
	case 4:
		with Player
		{
			maxlevel ++;// In room end check it will be set
			UberCont.levelIncrease += 1;
		}
		snd_play(other.snd_thrn);
		//name += "INCREASE YOUR IFRAMES BY 25%";
	break;
	case 5:
		//One hit wonder
		if UberCont.opt_gamemode == 32
		{
			with Player
			{
				skillpoints ++;
				skillsChosen --;
				ultraNow = true;
			}
		}
		else
		{
			with Player
			{
				maxhealth += 1;
				my_health += 1;
			}
			UberCont.maxHpIncrease += 1;
		}
		snd_play(other.snd_chst);
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
debug("COLLECTED REWARDS:",array_length(UberCont.collectedRewards)	);
/// @description Muchas clickas
scrUnlockGameMode(40,"FOR COLLECTING#A BOSS BOUNTY REWARD");
switch(array_length(UberCont.collectedRewards))
{
	case 0:
		/*
		with Player
		{
			guarenteedReroll += 2;
		}
		*/
		UberCont.crownHeal = true;
		snd_play(other.snd_chst);
		with instance_create(x,y,PopupText)
		{
			mytext = "CROWNVAULTS NOW HEAL!"
			theColour = c_lime;
			moveSpeed = 1;
			alarm[1] = 60;
		}
	break;
	case 1:
		UberCont.radUp = true;
		snd_play(other.snd_chst);
		with instance_create(x,y,PopupText)
		{
			mytext = "+10% RADIATION VALUE!"
			theColour = c_lime;
			moveSpeed = 1;
			alarm[1] = 60;
		}
	break;
	case 2:
		with UberCont {
			instance_create(x,y,ShowVoidEssenceTemporarily);
			var gotamount = 10 * scrGetPortalEssenceBoost();
			portalEssence += gotamount;
			with instance_create(x,y,PopupText)
			{
				mytext = "+" + string(gotamount) + " PORTAL ESSENCE!"
				theColour = c_lime;
				moveSpeed = 1;
				alarm[1] = 60;
			}
		}
		snd_play(other.snd_chst);
	break;
	case 3:
		UberCont.enableReroll = true;
		with InactiveRerollStation
		{
			alarm[1] = 80;
			instance_create(x,y,CameraLerp);
		}
		snd_play(other.snd_crwn);
		with instance_create(other.x,other.y,PopupText)
		{
			mytext = "UNLOCKED RE-ROLL STATION!"
			theColour = c_lime;
			moveSpeed = 1;
			alarm[1] = 60;
		}
		//UNLOCK GOOD OL' HUMPHRY
		scrUnlockCharacter(26,"COLLECTING FOUR BOUNTIES");
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
		if scrIsGamemode(32)
		{
			with Player
			{
				skillpoints ++;
				skillsChosen--;
				with instance_create(x,y,PopupText)
				{
					mytext = "+1 MUTATION!"
					theColour = c_lime;
					moveSpeed = 1;
					alarm[1] = 60;
				}
			}
		}
		else
		{
			with Player
			{
				if ultra_got[62] && altUltra//LIVING ARMOUR
				{
					maxarmour += 1;
					armour += 1;
					with instance_create(x,y,PopupText)
					{
						mytext = "+1 MAX ARMOUR!"
						theColour = c_lime;
						moveSpeed = 1;
						alarm[1] = 60;
					}
				}
				else
				{
					maxhealth += 1;
					my_health += 1;
					with instance_create(x,y,PopupText)
					{
						mytext = "+1 MAX HP!"
						theColour = c_lime;
						moveSpeed = 1;
						alarm[1] = 60;
					}
				}
			}
			UberCont.maxHpIncrease += 1
		}
		/*
		//One hit wonder
		if scrIsGamemode(32)
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
		*/
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
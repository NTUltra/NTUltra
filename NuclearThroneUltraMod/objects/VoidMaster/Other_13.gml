/// @description Collect any challenge rewards!
if completedChallenge && !collectedRewards
{
	collectedRewards = true;
	with UberCont
	{
		if voidChallengeGoing[0] && !voidChallengeCompleted[0]
		{
			voidChallengeCompleted[0] = true;
			voidChallengeGoing[0] = false;
		}
		if voidChallengeGoing[1] && !voidChallengeCompleted[1]
		{
			voidChallengeCompleted[1] = true;
			voidChallengeGoing[1] = false;
			with Player
			{
				var currentLives = array_length(livesRegain);
				var si = currentLives;
				skeletonlives += 1;
				livesRegain[si] = 3;
				si++;
				if array_length(livesRegain) > 2
					scrUnlockBSkin(19,"FOR HAVING THREE LIVES",0);
					
				with instance_create(x,y,PopupText)
				{
					mytext = "+1 LIFE!"
					theColour = c_lime;
					moveSpeed = 1;
					alarm[1] = 60;
				}
			}
		}
		if voidChallengeGoing[2] && !voidChallengeCompleted[2]
		{
			voidChallengeCompleted[2] = true;
			voidChallengeGoing[2] = false;
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
		if voidChallengeGoing[3] && !voidChallengeCompleted[3]
		{
			voidChallengeCompleted[3] = true;
			voidChallengeGoing[3] = false;
			with UberCont
			{
				levelIncrease ++;
				
			}
			with Player
			{
				if array_length(UberCont.voidWeaponDeposit) > 0
					wep = UberCont.voidWeaponDeposit[0];
				if array_length(UberCont.voidWeaponDeposit) > 1
					bwep = UberCont.voidWeaponDeposit[1];
				if array_length(UberCont.voidWeaponDeposit) > 2
					cwep = UberCont.voidWeaponDeposit[2];
				maxlevel++;
				with instance_create(x,y,PopupText)
				{
					mytext = "+1 MAX LEVEL!"
					theColour = c_lime;
					moveSpeed = 1;
					alarm[1] = 60;
				}
			}
		}
		if voidChallengeGoing[4] && !voidChallengeCompleted[4]
		{
			voidChallengeCompleted[4] = true;
			voidChallengeGoing[4] = false;
			with UberCont
			{
				levelIncrease ++;
			}
			with Player
			{
				maxlevel++;
				refundPoints = array_length(UberCont.skillDeposit);
				with instance_create(x,y,PopupText)
				{
					mytext = "+1 MAX LEVEL!"
					theColour = c_lime;
					moveSpeed = 1;
					alarm[1] = 60;
				}
			}
		}
		if voidChallengeGoing[5] && !voidChallengeCompleted[5]
		{
			voidChallengeCompleted[5] = true;
			voidChallengeGoing[5] = false;
			with UberCont
			{
				levelIncrease ++;
			}
			with Player
			{
				maxlevel++;
				with instance_create(x,y,PopupText)
				{
					mytext = "+1 MAX LEVEL!"
					theColour = c_lime;
					moveSpeed = 1;
					alarm[1] = 60;
				}
			}
		}
	}
}
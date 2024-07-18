/// @description Init
event_inherited();
talkPopupY += 12;
image_speed = 0;
spr_intro = sprVoidMasterIntro;
spr_idle = sprVoidMasterIdle;
alarm[0] = 15;
depth = 3;
dialogueStep = 0;
with instance_create(x,y + 24,BallBossPlateau)
{
	sprite_index = sprVoidMasterPlateau;
}
loops = GetPlayerLoops();
introSpiel = false;
completedChallenge = false;
collectedRewards = false;
if loops < 1
{
	introSpiel = true;
}
else
{
	with UberCont
	{
		var al = array_length(voidChallengeGoing);
		for (var i = 0; i < al; i ++)
		{
			if voidChallengeGoing[i]
			{
				other.completedChallenge = true;	
			}
		}
	}
}
openedShop = false;
keepTalking = 0;
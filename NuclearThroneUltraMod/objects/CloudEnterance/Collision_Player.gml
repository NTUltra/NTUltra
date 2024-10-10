/// @description Go to the clouds
with GameRender
{
	mutationDynamicHud = max(mutationDynamicHud,dynamicHudResetTime * 0.5);
}
if used
	isInteractableNow = false;	
else if cAlpha > 0 && hasEnoughMuts && !instance_exists(WantBoss) && !instance_exists(BigBadBat)
{
	with Player
		isOnInteractable = true;
	if KeyCont.key_pick[Player.p] = 1 
	{
		KeyCont.key_pick[Player.p] = 2;
		with Player
		{
			var gottenSkills = [];
			var si = 0;
			repeat(maxskill)
			{
				if skill_got[si] && si != 27//NOT PATIENCE
				{
					array_push(gottenSkills,si);
				}
				si++;
			}
		}
		if array_length(gottenSkills) > 2
		{
			with Portal
			{
				instance_destroy();	
			}
			instance_create(x,y,becomenemy);//CANT SPAWN A PORTAL NOW
			used = true;
			isInteractableNow = false;
			image_index = 1;
			mask_index = mskPickupThroughWall;
			alarm[3] = 60;
			alarm[7] = 30;
			snd_play(sndAboutToLoseSkill);
			alarm[0] = 5;
			BackCont.shake += 10;
			with GameRender
			{
				mutationDynamicHud = max(90,dynamicHudResetTime);
			}
		}
		else
		{
			BackCont.shake += 5;
			with instance_create(x,y,PopupText)
			{
				mytext = "NOT ENOUGH MUTATIONS!";
				theColour=c_red;
			}
			if alarm[2] < 1
			{
				alarm[1] = 0;
				alarm[2] = 1;
			}
			hasEnoughMuts = false;
		}
	}
}
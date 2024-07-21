/// @description Exit
with Player
	isOnInteractable = true;
if KeyCont.key_pick[other.p] = 1 && !instance_exists(Throne2) && isOpen
{
	snd_play(sndPortalOld);
	KeyCont.key_pick[Player.p] = 2;
	mask_index = mskPickupThroughWall;
	isOpen = false;
	//COLLECT ANY REWARDS YOU HAD NOT COLLECTED
	with VoidMaster
	{
		event_user(3);
	}
	if UberCont.voidChallengeGoing[3]
	{
		UberCont.voidWeaponDeposit[0] = Player.wep;
		UberCont.voidWeaponDeposit[1] = Player.bwep;
		UberCont.voidWeaponDeposit[2] = Player.cwep;
		with WepPickup
		{
			instance_destroy();
		}
		with Player
		{
			cwep = 0;
			bwep = 0;
			wep = 56;//RUSTY REVOLVER
		}
	}
	if UberCont.voidChallengeGoing[4]
	{
		with Player
		{
			var al = array_length(skill_got);
			for (var i = 0; i < al; i++)
			{
				if i != maxskill + 1 && skill_got[i]//Not regal
				{
					array_push(UberCont.skillDeposit,i);
					scrLoseSkill(i,true);	
				}
			}
		}
	}
	with instance_create(x,y,Portal)
	{
		type = 1;
		pullstrength = 3;
		x = other.x;
		y = other.y;
		scrForcePosition60fps();
		with Player
		{
			lockout = true;
			x = other.x;
			y = other.y;
			scrForcePosition60fps();
		}
		alarm[1] = 1;
	}
}
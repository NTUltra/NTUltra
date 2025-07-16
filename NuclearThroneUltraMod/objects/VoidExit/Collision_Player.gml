/// @description Exit
with Player
	isOnInteractable = true;
if KeyCont.key_pick[other.p] = 1 && !instance_exists(Throne2) && isOpen
{
	snd_play(sndPortalOld);
	UberCont.hasBeenInVoid = true;
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
			if !isPermanent
				instance_destroy();
		}
		with ThrowWep
		{
			if !isPermanent
				instance_destroy();	
		}
		with Player
		{
			cwep = 0;
			bwep = 0;
			wep = 56;//RUSTY REVOLVER
			scrAddNewWeaponDrop(wep);
			ammo[1] = max(ammo[1],round(typ_ammo[1]*4));
		}
	}
	if UberCont.voidChallengeGoing[4]
	{
		with Player
		{
			var i = 0;
			repeat(maxskill + 1)//Not regal
			{
				if skill_got[i]
				{
					array_push(UberCont.skillDeposit,i);
					scrLoseSkill(i,true);	
				}
				i += 1;
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
	if instance_exists(PitNavigation)
	{
		with RegalNavigation
			instance_destroy();
	}
}
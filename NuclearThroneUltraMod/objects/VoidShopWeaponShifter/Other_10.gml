/// @description Shift weapon
event_inherited();
if chooseTimer == 0
{
	chooseTimer = 10;
	alarm[0] = 30;
	with Player
	{
		if wep == 0
		{
			snd_play(sndEmpty)
			with instance_create(x,y,PopupText)
			{
				mytext = "NOT A WEAPON";
				theColour=c_red;
			}
			other.chooseTimer = 0;
			UberCont.portalEssence += other.cost;
			exit;
		}
		other.originalWep = wep;
		var wantTier = wep_area[wep];
		if wantTier < -1
			wantTier = 19;
		if array_contains(other.start_wep, wep) || array_contains(other.race_swep,wep)
			wantTier = 13;
		//wep = irandom(maxwep);
		wep += 1;
		if wep > maxwep
			wep = 1;
		var tries = maxwep * 2;
		while (tries > 0 && wantTier > -2 && wep_area[wep] != wantTier && wep != other.originalWep && array_contains(other.wantedToReroll, wep))
		{
			wep ++;
			if wep > maxwep
				wep = 1;
			tries -= 1;
		}
		other.chosenWep = wep;
		//UNLOCK GOLDEN WEAPON
		if scrCheckGold(wep_name[wep])
		{
			scrUnlockGoldWeapon(wep);
		}
		scrAddNewWeaponDrop(wep, true);
		with instance_create(x,y,PopupText) {
			mytext = other.wep_name[other.wep];
			theColour=c_lime;
			vspeed = -1;
			alarm[1] = 60;
		}
		scrWeaponHold();
	}
	name = "RESET WEAPON BACK TO ORIGINAL?\n" + string(chooseTimer);
	cost = 0;
}
else
{
	with Player
	{
		//Reset weapon
		var targetWep = wep;
		if cwep == other.chosenWep
		{
			cwep = other.originalWep;
			targetWep = cwep;
		}
		else if bwep == other.chosenWep
		{
			bwep = other.originalWep;
			targetWep = bwep;
		}
		else
			wep = other.originalWep;
		with instance_create(x,y,PopupText) {
			mytext = other.wep_name[targetWep];
			theColour=c_lime;
			vspeed = -1;
			alarm[1] = 60;
		}
		scrWeaponHold();
	}
	chooseTimer = 0;
	cost = 1;
}
array_push(wantedToReroll,Player.wep);
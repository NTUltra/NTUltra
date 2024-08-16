/// @description Shift weapon
event_inherited();
if chooseTimer == 0
{
	chooseTimer = 10;
	alarm[0] = 30;
	with Player
	{
		other.originalWep = wep;
		var wantTier = wep_area[wep];
		wep = irandom(maxwep);
		if wep > maxwep
			wep = 1;
		var tries = maxwep * 2;
		while (tries > 0 && wep_area[wep] != wantTier && wep != other.originalWep)
		{
			wep ++;
			if wep > maxwep
				wep = 1;
			tries -= 1;
		}
		with instance_create(x,y,PopupText) {
			mytext = other.wep_name[other.wep];
			theColour=c_lime;
			moveSpeed = 1;
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
		wep = other.originalWep;
		with instance_create(x,y,PopupText) {
			mytext = other.wep_name[other.wep];
			theColour=c_lime;
			moveSpeed = 1;
			alarm[1] = 60;
		}
		scrWeaponHold();
	}
	chooseTimer = 0;
	cost = 1;
}
///scrPandaRoll();
// /@description
///@param
function scrPandaRoll(){
	//if isOneWeaponOnlyModes()
	//	exit;
	if UberCont.useSeed
	{
		random_set_seed(UberCont.pandaRan);
		UberCont.pandaRan += 69;
	}
	var dir= 0;
	var prevwep;
        
	prevwep=wep;
        
	//handling golden weapons
	if scrCheckGold(wep_name[prevwep])
	{
		prevwep=9//minigun tier 6
		scrUnlockBSkin(14,"FOR CONVERTING A GOLDEN WEAPON",0)
	}
    else if wep_area[prevwep] == -1
	{
		 prevwep = 8;
		 //Double shotgun (tier 2)
	}
		if Player.ultra_got[55]
		{
			do {wep = irandom(maxwep-1)+1;dir+=1;
			if dir >999
			wep=prevwep;}
			until ( ( (wep_area[wep] = wep_area[prevwep]) || (wep_area[wep] = wep_area[prevwep+1]) || (wep_area[wep] = wep_area[prevwep+2]) )||(dir>1000) )
		}
		else{
			do {wep = irandom(maxwep-1)+1;dir++;
			if dir >999
			wep=prevwep;}
			until ( (wep_area[wep] = wep_area[prevwep])||(dir>1000) )
		}
		sprite_index = wep_sprt[wep]
		name = wep_name[wep]
		type = wep_type[wep]
		//dont start empty handed
		if (type != 0 && Player.ammo[type] < Player.typ_ammo[type]*2 )//if ammo below two times an ammo drop
		{
			ammo = 30;
		}
}
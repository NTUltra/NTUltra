function scrDecideLightningWep() {
	var ar = [];
    if instance_exists(Player)
    {
		ar = scrLightningWaponsArray(Player.loops,scrIsGamemode(31));
		do 
	    {
	        wep = ar[irandom(array_length(ar)-1)];
	        maxTries --;
	    }
	    until (((wep != Player.wep and wep != Player.bwep) or Player.race = 7)
	    || maxTries <= 0)
    }
    else
	{
		ar = scrLightningWaponsArray(0,scrIsGamemode(31));
		wep = ar[irandom(array_length(ar)-1)];
	}
    return wep;
}
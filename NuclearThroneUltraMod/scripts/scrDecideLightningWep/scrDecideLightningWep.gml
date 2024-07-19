function scrDecideLightningWep() {
	var ar = [];
	var myWep = 0;
    if instance_exists(Player)
    {
		ar = scrLightningWeaponsArray(Player.loops,scrIsGamemode(31));
		 var maxTries = 1000;
        if Player.race = 8
            maxTries = 2000;
		do 
	    {
	        myWep = ar[irandom(array_length(ar)-1)];
	        maxTries --;
	    }
	    until (((myWep != Player.wep and myWep != Player.bwep) or Player.race = 7)
	    || maxTries <= 0)
    }
    else
	{
		ar = scrLightningWeaponsArray(0,scrIsGamemode(31));
		myWep = ar[irandom(array_length(ar)-1)];
	}
    return myWep;
}
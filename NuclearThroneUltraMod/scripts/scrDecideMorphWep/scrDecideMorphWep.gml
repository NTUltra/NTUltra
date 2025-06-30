function scrDecideMorphWep() {
	var ar = [];
    if instance_exists(Player)
    {
	    var maxTries = 1000;
		ar = scrMorphWeaponsArray(Player.loops,scrIsGamemode(31));
	    if Player.race == 8
			maxTries = 2000;
		do 
	    {
			myWep = ar[irandom(array_length(ar)-1)];
			maxTries --;
	    }
	    until (((wep != Player.wep and wep != Player.bwep and wep != Player.cwep) or Player.race = 7)
	    || maxTries <= 0)
    }
    else
	{
		ar = scrMorphWeaponsArray(0,scrIsGamemode(31));
		myWep = ar[irandom(array_length(ar)-1)];	
	}
    
    return myWep;
}
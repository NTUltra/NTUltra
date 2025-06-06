function scrDecideMorphWep() {
	var ar = [];
    if instance_exists(Player)
    {
		if scrIsGamemode(31)
		    return choose(198,495);
	        var maxTries = 1000;
			ar = scrMorphWeaponsArray(Player.loops,scrIsGamemode(31));
	        if Player.race == 8
				maxTries = 2000;
		do 
	    {
	        wep = scrMorphWeaponsArray(Player.loops,scrIsGamemode(31));//choose(70, 73, 98, 198, 408, 659, 468, 495, 646, 663, 750, 755)
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
    
    return wep;
}
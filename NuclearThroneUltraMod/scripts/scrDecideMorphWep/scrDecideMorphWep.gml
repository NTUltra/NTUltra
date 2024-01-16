function scrDecideMorphWep() {
    if instance_exists(Player)
    {
		if scrIsGamemode(31)
		    return choose(198,495);
        var maxTries = 1000;
        if Player.race = 8
            maxTries = 2000;
        do 
        {
            wep = choose(70, 73, 98, 198, 307, 408, 468, 659, 495, 646, 663)
            maxTries --;
        }
        until (((wep != Player.wep and wep != Player.bwep) or Player.race = 7)
        || maxTries <= 0)
    }
    else
        wep = choose(70, 73, 98, 198, 307, 408, 468, 659, 495, 646, 663)
    
    return wep;
}
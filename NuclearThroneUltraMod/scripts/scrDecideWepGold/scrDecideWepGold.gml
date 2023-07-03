function scrDecideWepGold() {
	if instance_exists(Player)
	{
		if scrIsGamemode(31)
		{
			return choose(40,230,286);
		}
		var maxTries = 1000;
		if Player.race = 8
			maxTries = 2000;
		if Player.area!=103
		{
			do 
			{
				wep = choose(40,41,42,43,44,45,280,281,282,284,285,286,287,288,290, 617,
				225,226,227,228,229,230,276,277,278,279,527,567,224,391,400,383,589)
				maxTries --;
			}
			until (((wep != Player.wep and wep != Player.bwep) or Player.race = 7)
			&& UberCont.start_wep_have_all[Player.race] ||
			scrCheckStartingWepUnlocked(wep,Player.race) > -1 ||
			maxTries <= 0
			)
		}
		else
		{//money gun can only be found in yv's crib
			do 
			{
				wep = choose(40,41,42,43,44,45,280,281,282,284,285,286,287,288,290, 617,
				225,226,227,228,229,230,276,277,278,279,315,527,567,224,391,400,383,589)
				maxTries --;
			}
			until (((wep != Player.wep and wep != Player.bwep) or Player.race = 7)
			&& UberCont.start_wep_have_all[Player.race] ||
			scrCheckStartingWepUnlocked(wep,Player.race) > -1 ||
			maxTries <= 0
			)
		}

	}
	else
	wep = choose(40,41,42,43,44,45,280,281,282,284,285,286,287,288,290,589, 617,
			225,226,227,228,229,230,276,277,278,279,315,527,567,224,391,400,383)
	
	return wep;
}

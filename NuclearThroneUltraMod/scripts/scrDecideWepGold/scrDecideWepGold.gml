function scrDecideWepGold() {
	var myWep = 0;
	if instance_exists(Player)
	{
		var otherChestWeps = [];
		var i = 0;
		with GoldChest
		{
			if id != other.id
			{
				otherChestWeps[i] = myWep;
				i++;
			}
		}
		if scrIsGamemode(31)
		{
			return choose(40,230,286,651,731);
		}
		var maxTries = 1000;
		if Player.race = 8
			maxTries = 2000;
		if Player.area!=103
		{
			do 
			{
				myWep = choose(40,41,42,43,44,45,280,281,282,284,285,286,287,288,290, 617,
				225,226,227,228,229,230,276,277,278,279,527,567,224,391,400,383,589,
				645,646,647,649,651,653,731,765,771)
				maxTries --;
			}
			until ((!array_contains(otherChestWeps,myWep) &&
			((myWep != Player.myWep and myWep != Player.bwep) or Player.race = 7))
			&& UberCont.start_wep_have_all[Player.race] ||
			scrCheckStartingWepUnlocked(myWep,Player.race) > -1 ||
			maxTries <= 0
			)
		}
		else
		{//money gun can only be found in yv's crib
			do 
			{
				myWep = choose(40,41,42,43,44,45,280,281,282,284,285,286,287,288,290, 617,
				225,226,227,228,229,230,276,277,278,279,315,527,567,224,391,400,383,589,
				645,646,647,649,651,653,731,765,771)
				maxTries --;
			}
			until (((myWep != Player.myWep and myWep != Player.bwep) or Player.race = 7)
			&& UberCont.start_wep_have_all[Player.race] ||
			scrCheckStartingWepUnlocked(myWep,Player.race) > -1 ||
			maxTries <= 0
			)
		}

	}
	else
	myWep = choose(40,41,42,43,44,45,280,281,282,284,285,286,287,288,290,589, 617,
			225,226,227,228,229,230,276,277,278,279,315,527,567,224,391,400,383,
			645,646,647,649,651,653,731,765,771)
	
	return myWep;
}

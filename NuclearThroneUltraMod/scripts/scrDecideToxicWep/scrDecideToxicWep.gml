function scrDecideToxicWep() {
	var newWep = 31;
	if scrIsGamemode(31)
	{
		//Melee only
		instance_destroy(id,false);
		//For now no toxic melee
		return 722;
		//return choose(198,495);
	}
	var tier = 3;
	if instance_exists(Player)
	{
		tier += Player.baseWeaponTier;
	}
		var maxTries = 5000;
		if Player.race = 8
		{
			tier += 1;
		}
		if !Player.altUltra && Player.ultra_got[29]//Refined taste
		{
			tier += 2;
		}
		do 
		{
			newWep = choose(31,130,146,317,318,319,326,417,469,564,565,566,574,580,581,648,649)
			maxTries --;
		}
		until (((wep_area[newWep] <= tier && (newWep != Player.wep and newWep != Player.bwep)) or Player.race = 7)
		|| maxTries <= 0)
	
	return newWep;
}

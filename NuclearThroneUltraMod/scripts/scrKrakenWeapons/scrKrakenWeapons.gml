function scrKrakenWeapons(targetWep) {
	with Player
	{
		if (string_copy(wep_name[targetWep],0,5) == "KRAKEN" || targetWep = 195 || 
		targetWep = 340 || targetWep = 341 || targetWep = 343 || targetWep == 589
		|| ( targetWep=352 && wep_type[targetWep]=4 ) || ( targetWep=323 && wep_type[targetWep]=4 ))
		return true
	}
		return false
}

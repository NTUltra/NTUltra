function scrKrakenWeapons(targetWep) {
	with Player
	{
		if (string_copy(wep_name[targetWep],0,6) == "KRAKEN" || targetWep = 195 || targetWep == 543 || targetWep == 613 || 
		targetWep = 340 || targetWep = 341 || targetWep = 343 || targetWep == 589 || targetWep == 619 || targetWep == 692
		|| targetWep=352 || targetWep=323 || targetWep == 869 || targetWep == 870 || targetWep == 841)
		return true
	}
		return false
}

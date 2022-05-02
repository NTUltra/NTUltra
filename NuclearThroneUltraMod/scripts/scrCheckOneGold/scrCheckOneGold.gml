function scrCheckOneGold() {
	with UberCont
	{


	var racedir=1;
	var thischarhasagoldwep=0;

	repeat(racemax)
	{
		var wepdir=1;
		var gotthisone=0;

		repeat(maxstartwep)
		{
			if start_wep_have[wepdir,racedir]=1
				gotthisone++;
		}
		if gotthisone>0
			thischarhasagoldwep++;
	racedir++;
	}

	if thischarhasagoldwep >= racemax-1
		return true
	else
		return false

	}



}

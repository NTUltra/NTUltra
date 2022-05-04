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
			wepdir++;
		}
		if gotthisone>0
			thischarhasagoldwep++;
	racedir++;
	}
	debug(thischarhasagoldwep);
	if thischarhasagoldwep >= racemax
		return true
	else
		return false

	}



}

function scrCheckAllGold() {
	with UberCont
	{
		var racedir=1;
		repeat(racemax)
		{

			var wepdir=0;

			var gotthisone=0;

			repeat(maxstartwep)
			{
				if (start_wep_have[wepdir,racedir] == 1)
					gotthisone++;
			
				wepdir++;
			}

			racedir++;
			if gotthisone >= maxstartwep
				return true;

		}
	}
		return false
}

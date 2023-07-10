function scrUsedEveryCrown() {
	with UberCont
	{
		var dir=0;
		var used=0;
		repeat(crownmax + secretcrownmax)
		{

		if crown_used[dir] > 0
			used++;

		dir++;
		}

		if used >= 10//Don't count the daily crowns
			return true;
		else
			return false;
	}
}

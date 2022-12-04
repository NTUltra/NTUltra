function scrUsedEveryCrown() {
	with UberCont
	{
		var dir=0;
		var used=0;
		repeat(crownmax+7)
		{

		if crown_used[dir]=1 || dir > crownmax
			used++;

		dir++;
		}

		if used>=crownmax+7//Don't count the daily crowns
			return true;
		else
			return false;
	}
}

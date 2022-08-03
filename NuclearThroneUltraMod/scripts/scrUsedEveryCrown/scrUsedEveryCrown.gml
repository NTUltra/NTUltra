function scrUsedEveryCrown() {
	with UberCont
	{
		var dir=0;
		var used=0;
		repeat(crownmax+4)
		{

		if crown_used[dir]=1
		used++;

		dir++;
		}

		if used>=crownmax+4
			return true;
		else
			return false;
	}
}

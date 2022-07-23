function scrUsedEveryCrown() {
	with UberCont
	{
		var dir=0;
		var used=0;
		repeat(crownmax+3)
		{

		if crown_used[dir]=1
		used++;

		dir++;
		}

		if used>=crownmax+3
			return true;
		else
			return false;
	}
}

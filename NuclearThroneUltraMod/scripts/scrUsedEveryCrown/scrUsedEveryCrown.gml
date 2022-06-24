function scrUsedEveryCrown() {
	with UberCont
	{
		var dir=0;
		var used=0;
		repeat(crownmax+2)
		{

		if crown_used[dir]=1
		used++;

		dir++;
		}

		if used>=crownmax+2
			return true;
		else
			return false;
	}
}

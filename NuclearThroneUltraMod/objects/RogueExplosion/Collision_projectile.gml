with other
{
	if team != 2 && team != other.team
	{
		if (typ = 1 or typ = 2)
		{
			if isGrenade
				instance_destroy(id,false);
			else
				instance_destroy();
		}
		else if typ == 3
		{
			x = xprevious;
			y = yprevious;
		}
	}
}

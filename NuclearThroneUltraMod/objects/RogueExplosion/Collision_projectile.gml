if team != other.team and other.team != 2
{
	if (typ = 1 or typ = 2)
	{
		if isGrenade
			instance_destroy(id,false);
		else
			instance_destroy();
	}
	else if other.typ == 3
	{
		with other
		{
			x = xprevious;
			y = yprevious;
		}
	}
}


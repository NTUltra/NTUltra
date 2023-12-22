if other.team != 2
{
	with other
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
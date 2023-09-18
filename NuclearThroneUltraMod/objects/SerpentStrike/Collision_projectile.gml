if other.team != 2
{
	with other
	{
		if isGrenade
			instance_destroy(id,false);
		else
			instance_destroy();
	}
}
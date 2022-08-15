if team != other.team and (other.typ == 1 or other.typ == 2)
{
	with other
	{
		if isGrenade
			instance_destroy(id,false);
		else
			instance_destroy();
	}
}


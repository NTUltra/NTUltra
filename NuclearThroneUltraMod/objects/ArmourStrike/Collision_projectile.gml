if instance_exists(Player)
{
	if Player.ultra_got[61]
	{
		if other.team != 2
		{
			with other
			{
				if other.isGrenade
					instance_destroy(id,false);
				else
					instance_destroy();
			}
		}
	}
}


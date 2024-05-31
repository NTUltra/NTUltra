with other
{
	if team != other.team
	{
		if other.object_index == Player
		{
			if other.skill_got[2]
				exit;
		}
	    x = xprevious+hspeed*other.slowdown
	    y = yprevious+vspeed*other.slowdown
	}
}


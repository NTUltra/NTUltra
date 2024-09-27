if team != other.team && (image_index < 1 || canAlwaysDeflect)
{
	if other.isGrenade
	{
		if other.alarm[10] < 1
		{
			if scrMeleeAmmoCost(1)
				exit;
			Sleep(30)
			BackCont.shake += 3
			with other
				instance_destroy();
		}
	}
	else if other.typ = 2 or other.typ = 1
	{
		if scrMeleeAmmoCost(1)
			exit;
		with other
			instance_destroy()
	}
	else if other.typ == 3
	{
		if scrMeleeAmmoCost(2)
			exit;
		if canKillSquares
			with other
				instance_destroy();
		else
			with other
			{
				x = xprevious;
				y = yprevious;
			}
	}
}


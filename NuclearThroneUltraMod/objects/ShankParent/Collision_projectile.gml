if team != other.team && (image_index < 1 || canAlwaysDeflect)
{
	if other.isGrenade
	{
		if other.alarm[9] < 1
		{
			Sleep(30)
			BackCont.shake += 3
			with other
				instance_destroy();
		}
	}
	else if other.typ = 2 or other.typ = 1
	{
		with other
			instance_destroy()
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


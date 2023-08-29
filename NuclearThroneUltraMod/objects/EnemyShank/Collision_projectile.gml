if team != other.team && other.alarm[11] < 1
{

	if other.typ == 1 || other.typ == 2
	{
		with other
			instance_destroy()
	}
}
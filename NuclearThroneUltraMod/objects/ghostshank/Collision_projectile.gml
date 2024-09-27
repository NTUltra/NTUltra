/// @description Fucking up squares
if image_index == 0
{
	if team != other.team
	{
		if other.isGrenade
		{
			if other.alarm[10] < 1
			{
				Sleep(40)
				BackCont.shake += 3
				with other
					instance_destroy();
			}
		}
		else if other.typ = 2 or other.typ = 1 or other.typ == 3
		{
			with other
				instance_destroy()
		}
	}
}
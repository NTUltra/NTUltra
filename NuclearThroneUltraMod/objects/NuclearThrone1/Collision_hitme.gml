/// @description Get off me
if other.team != team
{
	var s = 2;
	if UberCont.normalGameSpeed == 60
		s = 1;
	with other
	{
		vspeed += s;
	}
}


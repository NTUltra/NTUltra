/// @description
if team != 2
{
	if startDelay > 0
	{
		var dt = 1;
		if UberCont.normalGameSpeed == 60
			dt = 0.5;
		startDelay -= 0.125 * dt;
		alarm[2] = 4;
		if startDelay <= 0
			image_index = 1;
		else
			image_index = 0;
	}
}
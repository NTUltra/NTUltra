/// @description xxx
if alarm[0] < 5
{
	image_index = 4;
}
else if alarm[0] < 20
{
	if loop
		with myTop
		{
			image_index = 1;
		}
	else if side == 0
	{
		//Horizontal
		with myTop
		{
			image_index = 3;
		}
	}
	else if side == 1
	{
		//Vertical
		with myTop
		{
			image_index = 2;
		}
	}
}
else
{
	with myTop
	{
		image_index = 0;
	}	
}
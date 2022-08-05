/// @description xxx
with all
{
	var i = 0;
	repeat(13)
	{
		if alarm[i] > 0.5
			alarm[i] += 1;
		i++;
	}
}
alarm[0] = 2;
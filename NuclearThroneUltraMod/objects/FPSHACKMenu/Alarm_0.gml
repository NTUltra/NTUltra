/// @description xxx
with all
{
	var i = 0;
	repeat(13)
	{
		var a = alarm_get(i);
		if a > 0
			alarm_set(i, a + 1);
		i++;
	}
}
alarm[0] = 2;
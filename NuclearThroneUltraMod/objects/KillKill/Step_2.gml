/// @description xxx
var is60fps = (UberCont.normalGameSpeed == 60);
with owner
{
	speed = 0;
	walk = 0;
	if alarm[1] > 1
	{
		if (is60fps)
			alarm[1] += 0.5;
		else
			alarm[1] += 1;
	}
}
if alarm[0] < 1
with target
{
	speed = 0;
	walk = 0;
	if alarm[1] > 1
	{
		if (is60fps)
			alarm[1] += 0.5;
		else
			alarm[1] += 1;
	}
}
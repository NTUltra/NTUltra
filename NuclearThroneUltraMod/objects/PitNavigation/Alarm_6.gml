/// @description Shake shake
if alarm[2] > 0
{
	if alarm[2] < 10
		BackCont.shake += 10;
	else
		BackCont.shake += 5;
	alarm[6] = 2;
}
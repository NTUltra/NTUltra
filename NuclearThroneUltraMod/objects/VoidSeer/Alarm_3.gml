/// @description FUCKING SHAKE
if alarm[2] > 5
{
	alarm[3] = 1;
	BackCont.shake = max(BackCont.shake + 2,2);
	if alarm[2] < 15
	{
		BackCont.shake += 4;
	}
}
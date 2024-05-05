/// @description Fading
if alpha < 1
{
	alpha += alphaIncrease;
	alarm[0] = 1;
}
else
{
	alpha = 1;
	alarm[1] = 60;
}
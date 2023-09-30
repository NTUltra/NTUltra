/// @description Fade in
if alpha < 0.5
{
	alpha += 0.05;
	alarm[2] = 1;
}
else
{
	alpha = 0.5;
	alarm[3] = alarm[0] - 9;
}
/// @description Decrease alpha
cAlpha -= 0.1;
if cAlpha <= 0
{
	cAlpha = 0;
	alarm[1] = 60 + irandom(90);
}
else
{
	alarm[2] = 1;	
}

/// @description Increase alpha
cAlpha += 0.1;
if cAlpha > 1
{
	cAlpha = 1;
	alarm[2] = 120 + irandom(90);
}
else
{
	alarm[1] = 1;	
}
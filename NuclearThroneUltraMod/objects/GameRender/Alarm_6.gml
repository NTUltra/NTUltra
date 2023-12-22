/// @description routeGlow +
routeGlow += 0.1;
if routeGlow >= 1
{
	routeGlow = 1;
	alarm[7] = 30;
}
else
	alarm[6] = 1;
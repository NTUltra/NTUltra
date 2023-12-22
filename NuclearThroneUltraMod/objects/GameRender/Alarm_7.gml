/// @description routeGlow -
routeGlow -= 0.1;
if routeGlow < 0
{
	routeGlow = 0;
	alarm[6] = 30;
}
else
	alarm[7] = 1;
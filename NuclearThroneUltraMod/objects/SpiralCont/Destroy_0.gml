/// @description Start the vanman
with BackCont
{
	with Bones
	{
		depth = y*-1;
	}
	if (wantVanAmount < 1 || (Player.area == 9 && Player.subarea == 3)
	|| (Player.area == 118 && Player.subarea == 3)
	|| Player.area == 100 || Player.area == 104 || Player.area == 119
	|| Player.area == 120 || Player.area == 137)//Not vannable areas
	{
		exit;
	}
	else
	{
		alarm[2] = max(260,vanDelay+irandom(vanDelayRandom)+60);
	}
}
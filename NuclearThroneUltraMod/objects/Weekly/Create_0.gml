selected = 0
image_speed = 0;
depth = -100;
hover = false;
if scrIsGamemode(37)
{
	image_index = 1;
	with UberCont
	{
		seed = todaysSeed;
		useSeed = true;
		//seedText = seed;
		isLeaderboardGamemode = true;
		viewDailyGamemode = false;
		useSeed = true;
		if !scrIsGamemode(37) && !scrIsGamemode(26) && !scrIsGamemode(27)
			previous_gamemode = opt_gamemode;
		opt_gamemode = [37];
	}
}
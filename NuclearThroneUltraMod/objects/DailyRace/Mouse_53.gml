if hover
{
	snd_play_2d(sndClick);
	with DailyScore
		image_index = 0;
	with Weekly
		image_index = 0;
	if scrIsGamemode(26)
	{
		dailyDone = false;
		with UberCont
		{
			useSeed = false;
			canRestart = true;
			seedText = "";
			opt_gamemode = previous_gamemode;
			isWeekly = false;
		}
		image_index = 0;
	}
	else
	{
		image_index = 3;
		with UberCont
		{
			seed = todaysSeed;
			//seedText = seed;
			useSeed = true;
			canRestart = true;
			if !scrIsGamemode(37) && !scrIsGamemode(26) && !scrIsGamemode(27)
				previous_gamemode = opt_gamemode;
			opt_gamemode = [26];
			isWeekly = false;
		}
			
	}
}
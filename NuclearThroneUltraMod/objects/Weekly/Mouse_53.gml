if hover
{
	snd_play_2d(sndClick);
	with DailyRace
		image_index = 0;
	with DailyScore
		image_index = 0;
	if image_index == 2
	{
		image_index = 3;
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
	else
	{
		with UberCont
		{
			useSeed = false;
			isLeaderboardGamemode = false;
			viewDailyGamemode = false;
			seedText = "";
			opt_gamemode = previous_gamemode;
		}
		image_index = 0;
	}
	/*
		with UberCont
		{
			goToLeaderboard = true;
			runScore = [];
			runRace = [];
			opt_gamemode = previous_gamemode;
			leaderboardType = LEADERBOARD.WEEKLY;
		}
		scrRestart();
	*/
}
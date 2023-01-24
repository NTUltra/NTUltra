if hover
{
	snd_play_2d(sndClick);
	with DailyRace
		image_index = 0;
	with DailyScore
		image_index = 0;
	if image_index == 0
	{
		image_index = 1;
		with UberCont
		{
			seed = todaysSeed;
			//seedText = seed;
			isWeekly = true;
			useSeed = true;
			canRestart = true;
			if opt_gamemode != 37 && opt_gamemode != 26 && opt_gamemode != 27
				previous_gamemode = opt_gamemode;
			opt_gamemode = 37;
		}
	}
	else
	{
		with UberCont
		{
			useSeed = false;
			canRestart = true;
			isWeekly = false;
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
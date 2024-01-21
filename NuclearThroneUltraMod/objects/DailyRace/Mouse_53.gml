if hover
{
	snd_play_2d(sndClick);
	with DailyScore
		image_index = 0;
	with Weekly
		image_index = 0;
	if !dailyDone || isRace
	{
		if scrIsGamemode(26)
		{
			dailyDone = false;
			with UberCont
			{
				useSeed = false;
				seedText = "";
				opt_gamemode = previous_gamemode;
				isLeaderboardGamemode = false;
				viewDailyGamemode = false;
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
				if !scrIsGamemode(37) && !scrIsGamemode(26) && !scrIsGamemode(27)
					previous_gamemode = opt_gamemode;
				opt_gamemode = [26];
				isLeaderboardGamemode = false;
				viewDailyGamemode = false;
			}
			
		}
	}
	else
	{
		with UberCont
		{
			goToLeaderboard = true;
			runScore = [];
			runRace = [];
			// opt_gamemode = previous_gamemode;
			leaderboardType = LEADERBOARD.WEEKLY;
			isLeaderboardGamemode = true;
			viewDailyGamemode = true;
		}
		scrRestart();
	}
}
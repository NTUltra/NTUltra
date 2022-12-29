if hover
{
	snd_play_2d(sndClick);
	with DailyRace
		image_index = 0;
	if !dailyDone {
		if UberCont.opt_gamemode == 27
		{
			dailyDone = false;
			with UberCont
			{
				useSeed = false;
				canRestart = true;
				seedText = "";
				opt_gamemode = previous_gamemode;
			}
			image_index = 0;
		}
		else
		{
			image_index = 1;
			with UberCont
			{
				seed = todaysSeed;
				//seedText = seed;
				useSeed = true;
				canRestart = false;
				previous_gamemode = opt_gamemode;
				opt_gamemode = 27;
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
			opt_gamemode = previous_gamemode;
			leaderboardType = LEADERBOARD.SCORE;
		}
		scrRestart();
	}
}
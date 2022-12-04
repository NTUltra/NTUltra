if hover
{
	snd_play_2d(sndClick);
	with DailyScore
		image_index = 0;
	if !dailyDone {
		if UberCont.opt_gamemode == 26
		{
			dailyDone = false;
			with UberCont
			{
				useSeed = false;
				canRestart = true;
				seedText = "";
				opt_gamemode = 0;
			}
			image_index = 0;
		}
		else
		{
			image_index = 1;
			with UberCont
			{
				seed = todaysSeed + 1;
				//seedText = seed;
				useSeed = true;
				canRestart = false;
				opt_gamemode = 26;
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
			leaderboardType = LEADERBOARD.RACE;
		}
		scrRestart();
	}
}
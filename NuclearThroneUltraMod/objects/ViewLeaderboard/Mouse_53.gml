if hover
{
	snd_play_2d(sndClick);
	with UberCont
	{
		goToLeaderboard = true;
		runScore = [];
		runRace = [];
		opt_gamemode = previous_gamemode;
		leaderboardType = LEADERBOARD.SCORE;
		isWeekly = false;
	}
	scrRestart();
}
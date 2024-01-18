///scrItteratePotentialRaceGamemodeLeaderboard();
// /@description
///@param
function scrItteratePotentialRaceGamemodeLeaderboard(){
	if UberCont.dailyDay > 95//First time daily gamemode
	{
		if (leaderboardType == LEADERBOARD.RACE)
		{
			if (UberCont.dailyDay % 2 == 0)
			{
				leaderboardType = LEADERBOARD.WEEKLY;
				UberCont.viewDailyGamemode = true;
			}
			else
			{
				UberCont.viewDailyGamemode = false;	
			}
		} else if UberCont.viewDailyGamemode && UberCont.dailyDay % 2 == 1 {
			leaderboardType = LEADERBOARD.RACE
			UberCont.viewDailyGamemode = false;
		}
		else
		{
			UberCont.viewDailyGamemode = false;
		}
	}
	else if UberCont.viewDailyGamemode {
		UberCont.viewDailyGamemode = false;
		leaderboardType = LEADERBOARD.RACE;
	}
}
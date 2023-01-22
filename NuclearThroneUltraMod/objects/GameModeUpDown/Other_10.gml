/// @description Just switched gm check dailies
dailyDone = false;
if (gamemodeOrder[gamemodenr] == 26)
{
	if (array_length(UberCont.encrypted_data.daily_race_dates) > 0)
	{
		dailyDone = UberCont.encrypted_data.daily_race_dates[array_length(UberCont.encrypted_data.daily_race_dates)-1] == UberCont.today
	}
	if !dailyDone
	{
		with UberCont
		{
			seed = todaysSeed + 1;
			//seedText = seed;
			useSeed = true;
			canRestart = false;
		}
		with DailyScore
			image_index = 0;
		with DailyRace
			image_index = 1;
		with Weekly
			image_index = 0;
	}
}
else if (gamemodeOrder[gamemodenr] == 27)
{
	if (array_length(UberCont.encrypted_data.daily_score_dates) > 0)
	{
		dailyDone = UberCont.encrypted_data.daily_score_dates[array_length(UberCont.encrypted_data.daily_score_dates)-1] == UberCont.today
	}
	if !dailyDone
	{
		with UberCont
		{
			seed = todaysSeed;
			//seedText = seed;
			useSeed = true;
			canRestart = false;
		}
		with DailyScore
			image_index = 1;
		with DailyRace
			image_index = 0;
		with Weekly
			image_index = 0;
	}
}
else if gamemodeOrder[gamemodenr] == 37 {
	with Weekly
		image_index = 1;
	with UberCont
	{
		isWeekly = true;
		canRestart = false;
		useSeed = true;
	}
}
else
{
	dailyDone = false;
	with UberCont
	{
		isWeekly = false;
		useSeed = false;
		canRestart = true;
		seedText = "";
	}
	with DailyScore
		image_index = 0;
	with DailyRace
		image_index = 0;
	with Weekly
		image_index = 0;
}
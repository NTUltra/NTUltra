/// @description Just switched gm check dailies
dailyDone = false;
if (gamemodeOrder[gamemodenr] == 26)
{
	if (array_length(UberCont.encrypted_data.ctot_dailies_race_seed) > 0)
	{
		dailyDone = UberCont.encrypted_data.ctot_dailies_race_seed[array_length(UberCont.encrypted_data.ctot_dailies_race_seed)-1] == UberCont.todaysSeed
	}
	if !dailyDone
	with UberCont
	{
		seed = todaysSeed;
		seedText = seed;
		useSeed = true;
		canRestart = false;
	}
}
else if (gamemodeOrder[gamemodenr] == 27)
{
	if (array_length(UberCont.encrypted_data.ctot_dailies_score_seed) > 0)
	{
		dailyDone = UberCont.encrypted_data.ctot_dailies_score_seed[array_length(UberCont.encrypted_data.ctot_dailies_score_seed)-1] == UberCont.todaysSeed
	}
	if !dailyDone
	with UberCont
	{
		seed = todaysSeed;
		seedText = seed;
		useSeed = true;
		canRestart = false;
	}
}
else
{
	dailyDone = false;
	UberCont.useSeed = false;
	UberCont.canRestart = true;	
}
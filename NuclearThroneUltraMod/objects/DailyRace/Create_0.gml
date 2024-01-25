selected = 0
image_speed = 0;
depth = -100;
dailyDone = false;
isRace = true;
hover = false;
if (array_length(UberCont.encrypted_data.daily_race_dates) > 0)
	dailyDone = UberCont.encrypted_data.daily_race_dates[array_length(UberCont.encrypted_data.daily_race_dates)-1] == UberCont.today
if dailyDone
	sprite_index = sprDailyChallengeOffRace;
dailyName = "DAILY RACE";
dailyDone = !UpdateChecker.canParticipateInGamemode;

isRace = UpdateChecker.isRace;
if !isRace
{
	dailyName = "DAILY GAMEMODE";
	if !dailyDone
		sprite_index = sprDailyChallengeOnGM
	else
		sprite_index = sprDailyChallengeOffGM
}
if scrIsGamemode(26)
	image_index = 1;
selected = 0
image_speed = 0;
depth = -100;
dailyDone = false;
if (array_length(UberCont.encrypted_data.daily_score_dates) > 0)
	dailyDone = UberCont.encrypted_data.daily_score_dates[array_length(UberCont.encrypted_data.daily_score_dates)-1] == UberCont.today
if dailyDone
	sprite_index = sprDailyChallengeOff;
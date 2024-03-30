///xxx();
// /@description
///@param
function scrUpdateScore(theOther, isPerliminary = false){
	debug("updating with kills: ",theOther.kills);
	if (scrIsGamemode(27) && !instance_exists(StartDaily))
	{
		if !isPerliminary
		{
			encrypted_data.ctot_dailies_score_score[
			array_length(encrypted_data.ctot_dailies_score_score)-1] = theOther.kills;
			scrSaveEncrypted();
			useSeed = false;
			opt_gamemode = [0];
			leaderboardType = LEADERBOARD.SCORE;
			goToLeaderboard = true;
		}
		runScore[0] = max(0,theOther.kills);
		runScore[1] = encrypted_data.userid;
		runScore[2] = encrypted_data.username;
		runScore[3] = theOther.area;
		runScore[4] = theOther.subarea;
		runScore[5] = theOther.loops;
		runScore[6] = theOther.race;
		runScore[7] = theOther.bskin;
		if getUltraMutation() != 255 || array_length(runScore) <= 14
			runScore[8] = theOther.altUltra;
		runScore[9] = theOther.wep;
		runScore[10] = theOther.bwep;
		runScore[11] = theOther.cwep;
		runScore[12] = string_replace_all(string(theOther.crown)," ","");
		runScore[13] = theOther.ultramod;
		if getUltraMutation() != 255 || array_length(runScore) <= 14//Keep ultra display after using lives
		{
			runScore[14] = getUltraMutation();//Its possible to start with an ultra such as fish's buddy, but then have no new mutations.
			runScore[15] = scrGetAllMutations();//Can be empty what then
		}
		// canRestart = true;
	}
	else if (isLeaderboardGamemode && !instance_exists(StartDaily)) {
		if scrIsGamemode(26) {
			UberCont.viewDailyGamemode = true;
			debug("ITS A DAILY GAMEMODE");
		}
		// useSeed = false;
		if !isPerliminary
		{
			leaderboardType = LEADERBOARD.WEEKLY;
			goToLeaderboard = true;
		}
		// canRestart = true;
		//Do I need to send the gamemode?
		/*
			Send gamemode and week to post it in ofcourse
			check how daily does this.
		*/
		if scrIsGamemode(8)// VAN FAN
		{
			//Check if this is your highest score
			var tf = round(VanFan.time_frame);
			debug("tf: ", tf);
			debug("data: ", encrypted_data.ctot_weeklies_score[1][$"w"+string(weeklyWeek)]);
			//if (tf > encrypted_data.ctot_weeklies_score[1][$"w"+string(weeklyWeek)])
			//{
				encrypted_data.ctot_weeklies_score[1][$"w"+string(weeklyWeek)] = tf;
				scrSaveEncrypted();
				runRace[0] = tf;
				runRace[1] = encrypted_data.userid;
				runRace[2] = encrypted_data.username;
				runRace[3] = Player.race;
				runRace[4] = Player.bskin;
			//}
		}
		else
		{
			//Check if this is your highest score
			debug("kills: ", theOther.kills);
			debug("data: ", encrypted_data.ctot_weeklies_score[1][$"w"+string(weeklyWeek)]);
			//Also in UltraIcon to set ultra,
			//if (scrIsWeeklyScoreHigher(theOther.kills))
			//{
				if !isPerliminary
				{
					encrypted_data.ctot_weeklies_score[1][$"w"+string(weeklyWeek)] = theOther.kills;
					scrSaveEncrypted();
				}
				runScore[0] = max(0,theOther.kills);
				runScore[1] = encrypted_data.userid;
				runScore[2] = encrypted_data.username;
				if scrIsGamemode(25) //Survival area
					runScore[3] = 116;
				else
					runScore[3] = theOther.area;
				runScore[4] = theOther.subarea;
				runScore[5] = theOther.loops;
				runScore[6] = theOther.race;
				runScore[7] = theOther.bskin
				if getUltraMutation() != 255 || array_length(runScore) <= 14
					runScore[8] = theOther.altUltra;
				runScore[9] = theOther.wep;
				runScore[10] = theOther.bwep;
				runScore[11] = theOther.cwep;
				runScore[12] = string_replace_all(string(theOther.crown)," ","");
				runScore[13] = theOther.ultramod;
				if getUltraMutation() != 255 || array_length(runScore) <= 14
				{
					runScore[14] = getUltraMutation();
					runScore[15] = scrGetAllMutations();
				}
			//}
		}
		if !scrIsGamemode(26) && !isPerliminary{
			instance_create(x,y,SendWeekly);
		}
	}
	else if (!isPerliminary && scrIsGamemode(26) && !instance_exists(StartDaily))
	{
		// useSeed = false;
		//opt_gamemode = [0];
		leaderboardType = LEADERBOARD.RACE;
		goToLeaderboard = true;
		// canRestart = true;
	}
	debug("Update score:", runScore);
}
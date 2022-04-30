///scrEndOfRun();
// /@description reset some important variables
///@param
function scrEndOfRun(){
	debug("END OF RUN");
	with UberCont
	{
		crownVaultChallenge = 0;
		killedBoss = [];
		collectedRewards = [];
		enableReroll = false;
		maxHpIncrease = 0;
		canSave = false;
		useSeed = false;
		time_microseconds=0;
		microseconds=""//string for microseconds
		time_seconds=0;
		secondsstring="";
		time_minutes=0;
		minutesstring="";
		time_hours=0;
		txttime="00:00:00:00";
	}
}
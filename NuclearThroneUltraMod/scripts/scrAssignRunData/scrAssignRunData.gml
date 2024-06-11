///scrAssignRunData();
// /@description
///@param
function scrAssignRunData(encryptedRun){
	return {
		lastarea: encryptedRun.lastarea,
		lastsubarea: encryptedRun.lastsubarea,
		loops: encryptedRun.loops,
		race: encryptedRun.race,
		time_seconds: encryptedRun.time_seconds,
		time_minutes: encryptedRun.time_minutes,
		time_hours: encryptedRun.time_hours,
	};
}
///scrWeekTimeLeft();
// /@description
///@param
function scrWeekTimeLeft(){
	var nextWeek = date_inc_week(date_current_datetime(),1);
	var cutoff = date_create_datetime
		(
			date_get_year(nextWeek),
			date_get_month(nextWeek),
			0,
			0,
			0,
			0
		);
	var secondsLeft = string(date_get_second(
		date_inc_second(cutoff,-current_second)
	))
	if string_length(secondsLeft) < 2
		secondsLeft = "0" + secondsLeft;
			
	var minutesLeft = string(date_get_minute(
		date_inc_minute(cutoff,-current_minute)
	))
	if string_length(minutesLeft) < 2
		minutesLeft = "0" + minutesLeft;
			
	var hoursLeft = string(date_get_hour(
		date_inc_hour(cutoff,-current_hour)
	))
	if string_length(hoursLeft) < 2
		hoursLeft = "0" + hoursLeft;
		
	var daysLeft = string(7 - current_weekday);

	return daysLeft + ":" + hoursLeft + ":" + minutesLeft + ":" + secondsLeft;
}
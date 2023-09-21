///scrDayTimeLeft();
// /@description
///@param
function scrDayTimeLeft(){
	var tomorrow = date_inc_day(date_current_datetime(),1);
	var cutoff = date_create_datetime
		(
			date_get_year(tomorrow),
			date_get_month(tomorrow),
			date_get_day(tomorrow),
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
			
	return hoursLeft + ":" + minutesLeft + ":" + secondsLeft;
}
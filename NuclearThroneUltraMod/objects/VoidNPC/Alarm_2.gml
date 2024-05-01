/// @description Itterate sequence
if TextHandler.showCanSkip
{
	if TextHandler.text != ""
		alarm[2] = 30;
}
else
{
	dialogueStep += 1;
	event_user(0);
}
/// @description Itterate sequence
debug("SKIP!?", TextHandler.showCanSkip);
if TextHandler.showCanSkip
{
	alarm[2] = 30;
}
else
{
	dialogueStep += 1;
	event_user(0);
}
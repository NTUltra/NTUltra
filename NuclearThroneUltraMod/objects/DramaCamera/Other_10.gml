/// @description Pause the fucking game
with UberCont
{
	event_user(0);
	alarm[1] = other.introDuration;
	other.depth = depth - 999;
}
alarm[1] = 1;
alarm[0] = introDuration;
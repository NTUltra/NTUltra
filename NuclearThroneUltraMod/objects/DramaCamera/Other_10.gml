/// @description Pause the fucking game
name = string_replace_all(name," ", "  ");
with UberCont
{
	event_user(0);
	alarm[1] = 60;
	other.depth = depth - 999;
}
alarm[1] = 1;
alarm[0] = 120;
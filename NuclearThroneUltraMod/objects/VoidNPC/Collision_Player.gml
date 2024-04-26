/// @description Brother talk
if hasShitToSay && KeyCont.key_pick[other.p] == 1 && sprite_index == spr_idle && TextHandler.text == ""
{
	KeyCont.key_pick[other.p] = 0;
	event_user(1);
}
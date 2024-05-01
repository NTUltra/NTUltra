/// @description Brother talk
var t  = "";
with TextHandler
{
	t = text;	
}

debug("hasShitToSay ", hasShitToSay);
debug("KeyCont.key_pick[other.p] ", KeyCont.key_pick[other.p]);
debug("TextHandler.showCanSkip ", TextHandler.showCanSkip);
debug("t ", t);

if hasShitToSay && KeyCont.key_pick[other.p] == 1 && sprite_index == spr_idle && t == "" && TextHandler.canStartTalking
{
	KeyCont.key_pick[other.p] = 2;
	event_user(1);
}
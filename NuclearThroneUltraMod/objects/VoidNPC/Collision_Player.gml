/// @description Brother talk
var t  = "";
with TextHandler
{
	t = text;	
}

if hasShitToSay && sprite_index == spr_idle && t == "" && TextHandler.canStartTalking
{
	with Player
	{
		isOnInteractable = true;	
	}
	if KeyCont.key_pick[other.p] == 1
	{
		KeyCont.key_pick[other.p] = 2;
		event_user(1);
	}
}
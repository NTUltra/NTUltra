/// @description Collect reward click
if active
{
	if KeyCont.key_pick[other.p] = 1
	{
		KeyCont.key_pick[Player.p] = 2;
		event_user(1)
	}
}
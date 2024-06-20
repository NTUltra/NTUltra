with Player
	isOnInteractable = true;
if KeyCont.key_pick[Player.p] = 1
{
	KeyCont.key_pick[Player.p] = 2;
	close=true;
	instance_destroy();

	Sleep(100);
}



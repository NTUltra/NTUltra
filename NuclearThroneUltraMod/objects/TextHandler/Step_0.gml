/// @description Skip lines
if instance_exists(KeyCont)
{
	with VoidNPC
	{
		if alarm[2] > 1
		{
			Player.isOnInteractable = true;
			if (KeyCont.key_pick[0] = 1)
			{
				KeyCont.key_pick[0] = 2;
				alarm[2] = 0;
				dialogueStep += 1;
				event_user(0);
			}
			exit;
		}
	}
}
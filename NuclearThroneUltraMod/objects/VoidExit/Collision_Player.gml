/// @description Exit
with Player
	isOnInteractable = true;
if KeyCont.key_pick[other.p] = 1 && !instance_exists(Throne2) && isOpen
{
	snd_play(sndPortalOld);
	KeyCont.key_pick[Player.p] = 2;
	mask_index = mskPickupThroughWall;
	isOpen = false;
	//COLLECT ANY REWARDS YOU HAD NOT COLLECTED
	with VoidMaster
	{
		event_user(3);	
	}
	with instance_create(x,y,Portal)
	{
		type = 1;
		pullstrength = 3;
		x = other.x;
		y = other.y;
		scrForcePosition60fps();
		with Player
		{
			lockout = true;
			x = other.x;
			y = other.y;
			scrForcePosition60fps();
		}
		alarm[1] = 1;
	}
}
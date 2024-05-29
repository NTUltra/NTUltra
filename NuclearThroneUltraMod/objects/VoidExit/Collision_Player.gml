/// @description Exit
if KeyCont.key_pick[other.p] = 1 && !instance_exists(Throne2)
{
	snd_play(sndPortalOld);
	KeyCont.key_pick[Player.p] = 2;
	mask_index = mskPickupThroughWall;
	with instance_create(x,y,Portal)
	{
		type = 1;
		pullstrength = 3;
		with Player
		{
			lockout = true;	
		}
		alarm[1] = 1;
		x = other.x;
		y = other.y;
	}
}
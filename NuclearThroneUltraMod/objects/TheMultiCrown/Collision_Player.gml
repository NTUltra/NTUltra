/// @description Exit
if KeyCont.key_pick[other.p] = 1
{
	snd_play(sndPortalOld);
	KeyCont.key_pick[Player.p] = 2;
	mask_index = mskPickupThroughWall;
	instance_create(x,y,SmallChestPickup);
	BackCont.shake += 10;
	with Player
	{
		snd_play(snd_crwn);	
	}
	UberCont.canMultiCrown = true;
	Sleep(20);
	instance_destroy();
}
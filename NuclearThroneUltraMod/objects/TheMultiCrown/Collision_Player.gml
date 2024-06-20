/// @description Exit
with Player
	isOnInteractable = true;
if KeyCont.key_pick[other.p] = 1
{
	snd_play(sndPortalOld);
	KeyCont.key_pick[Player.p] = 2;
	mask_index = mskPickupThroughWall;
	with instance_create(x,y,SmallChestPickup)
	{
		sprite_index = sprPickupMultiCrown;	
	}
	BackCont.shake += 10;
	with Player
	{
		snd_play(snd_crwn);
		scrGiveCrownPoints(1);
	}
	UberCont.canMultiCrown = true;
	Sleep(20);
	instance_destroy();
	scrUnlockGameMode(43,"FOR AQUIRING THE MULTI-CROWN!");
	with instance_create(x,y,UnlockPopup)
		mytext="YOU CAN NOW EQUIP#MULTIPLE CROWNS#AT THE SAME TIME!";
}
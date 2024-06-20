/// @description Exit
with Player
	isOnInteractable = true;
if KeyCont.key_pick[other.p] = 1
{
	snd_play(sndPortalOld);
	KeyCont.key_pick[Player.p] = 2;
	mask_index = mskPickupThroughWall;
	sprite_index = sprCrownSecretExitDeactivated;
	with CrownVaultSecretExit
	{
		sprite_index = sprCrownSecretExitDeactivated;
		mask_index = mskPickupThroughWall;
	}
	Player.lastarea = nav;
	if textScaleX == -1
		Player.inverted = true;
}
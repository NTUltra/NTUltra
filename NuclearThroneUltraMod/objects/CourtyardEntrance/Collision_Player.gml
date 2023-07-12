/// @description Exit
if KeyCont.key_pick[other.p] = 1
{
	snd_play(sndPortalOld);
	KeyCont.key_pick[Player.p] = 2;
	mask_index = mskPickupThroughWall;
	sprite_index = sprCourtyardEntranceDeactivated;
	with CrownVaultSecretExit
	{
		sprite_index = sprCrownSecretExitDeactivated;
		mask_index = mskPickupThroughWall;
	}
	with CrownVaultExit
	{
		mask_index = mskPickupThroughWall;
	}
	with Player
	{
		area = 128;
		subarea = 0;
	}
	with instance_create(x,y,Portal)
	{
		type = 3;
		pullstrength = 3;
		alarm[1] = 1;
		x = other.x;
		y = other.y;
	}
}
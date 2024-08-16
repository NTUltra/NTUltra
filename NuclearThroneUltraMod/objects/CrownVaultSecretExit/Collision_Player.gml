/// @description Exit
with Player
	isOnInteractable = true;
if KeyCont.key_pick[other.p] = 1
{
	KeyCont.key_pick[Player.p] = 2;
	mask_index = mskPickupThroughWall;
	if sprite_index == sprCrownSecretExitVoid
	{
		snd_play(sndVoidCreepEnd);
		image_index = 1;
		with instance_create(x,y,SecretSheepNavigation)
		{
			lastarea = Player.lastarea;
			inverted = Player.inverted;
			lastsubarea = Player.lastsubarea;
		}
	}
	else 
	{
		snd_play(sndPortalOld);
		image_index = 0;
	}
	sprite_index = sprCrownSecretExitDeactivated;
	image_speed = 0;
	with CrownVaultSecretExit
	{
		if sprite_index != sprCrownSecretExitDeactivated
		{
			sprite_index = sprCrownSecretExitDeactivated;
			image_speed = 0;
			if sprite_index == sprCrownSecretExitVoid
			{
				image_index = 1;
			}
			else 
			{
				image_index = 0;
			}
		}
		mask_index = mskPickupThroughWall;
	}
	Player.lastarea = nav;
	if textScaleX == -1
		Player.inverted = true;
}
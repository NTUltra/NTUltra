/// @description Exit
with Player
	isOnInteractable = true;
if KeyCont.key_pick[other.p] = 1 && !instance_exists(Throne2)
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
		x = other.x;
		y = other.y;
		scrForcePosition60fps();
		type = 3;
		pullstrength = 3
		if !instance_exists(enemy) && !instance_exists(becomenemy)
		{
			with Player
			{
				lockout = true;
				x = other.x;
				y = other.y;
				scrForcePosition60fps();
			}
		}
		alarm[1] = 1;
	}
	with enemy
	{
		if object_index != 	CrownGuardian && object_index != Throne2
			instance_destroy(id,false);
	}
	with becomenemy
		instance_destroy(id,false);
}
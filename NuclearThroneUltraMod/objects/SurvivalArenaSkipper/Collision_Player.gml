/// @description Start wave
//Surprise attack
with Player
	isOnInteractable = true;
if KeyCont.key_pick[other.p] = 1 && !overwritten
{
	KeyCont.key_pick[Player.p] = 2;
	mask_index = mskPickupThroughWall;
	image_speed = 0.5;
	instance_create(x,y,Portal);
	with SurvivalArenaStarter
	{
		mask_index = mskPickupThroughWall;
		instance_destroy();
		scrRaddrop(30);
		with Player {
			tookDamageThisArea = true;
		}
	}
}
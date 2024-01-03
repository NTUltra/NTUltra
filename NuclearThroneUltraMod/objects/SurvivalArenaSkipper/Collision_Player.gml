/// @description Start wave
//Surprise attack
if KeyCont.key_pick[other.p] = 1
{
	KeyCont.key_pick[Player.p] = 2;
	mask_index = mskPickupThroughWall;
	image_speed = 0.5;
	instance_create(x,y,Portal);
	with SurvivalArenaStarter
	{
		mask_index = mskPickupThroughWall;
		instance_destroy();
		scrRaddrop(20);
		with Player {
			tookDamageThisArea = true;
		}
	}
}
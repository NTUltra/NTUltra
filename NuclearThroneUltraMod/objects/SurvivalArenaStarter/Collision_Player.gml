/// @description Start wave
//Surprise attack
if !jumpScared && scrIsGamemode(25) && instance_exists(SurvivalWave) && other.subarea == 10 && !scrIsGamemode(42)
{
	jumpScared = true;
	mask_index = mskPickupThroughWall;
	scrTurnIntoPortalArea();
	instance_create(x,y,BecomeThrone2);
}
else if KeyCont.key_pick[other.p] = 1
{
	KeyCont.key_pick[Player.p] = 2;
	mask_index = mskPickupThroughWall;
	with SurvivalWave
	{
		if scrIsGamemode(25)
			event_user(0);
		else if object_index != BallBossWave
			event_user(1);
	}
	image_speed = 0.5;
	with SurvivalArenaSkipper
	{
		instance_destroy();
	}
}
with SurvivalArenaSkipper {
	overwritten = true;	
}
/// @description Get patience
if KeyCont.key_pick[other.p] = 1
{
	instance_create(x,y,InactivePatienceStation);
	snd_play(sndCursedReminder,0,0,true,1,false,false,1);
	KeyCont.key_pick[Player.p] = 2;
	mask_index = mskPickupThroughWall;
	instance_destroy();
	BackCont.shake += 50;
	snd_play(sndUltraGrenadeSuck);
	with Player {
		guarenteedReroll += 3;
	}
	instance_create(x,y,PortalChecker);
}
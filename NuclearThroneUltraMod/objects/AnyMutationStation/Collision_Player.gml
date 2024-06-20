/// @description Get patience
with Player
		isOnInteractable = true;
if KeyCont.key_pick[other.p] = 1
{
	instance_create(x,y,InactiveAnyMutationStation);
	snd_play(sndCursedReminder,0,0,true,1,false,false,1);
	KeyCont.key_pick[Player.p] = 2;
	mask_index = mskPickupThroughWall;
	instance_destroy();
	BackCont.shake += 50;
	snd_play(sndUltraGrenadeSuck);
	with Player {
		anyMutation += 1;
	}
	instance_create(x,y,PortalChecker);
	with CorpseCollector
	{
		px = other.x;
		py = other.y;
	}
}
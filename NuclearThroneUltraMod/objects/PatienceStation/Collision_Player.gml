/// @description Get patience
if KeyCont.key_pick[other.p] = 1
{
	sprite_index = sprInactivePatienceStation;
	snd_play(sndCursedReminder,0,0,true,1,false,false,1);
	KeyCont.key_pick[Player.p] = 2;
	mask_index = mskPickupThroughWall;
	BackCont.shake += 50;
	snd_play(sndUltraGrenadeSuck);
	with Player {
		guarenteedReroll += 2;
	}
}
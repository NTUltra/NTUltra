/// @description Go summon a boss
if KeyCont.key_pick[Player.p] = 1
{
	KeyCont.key_pick[Player.p] = 2;
	snd_play(sndVoidCreepEnd);
	with instance_create(x,y,DarkOverlay)
	{
		alarm[0] = 90;
	}
	mask_index = mskPickupThroughWall;
	with instance_create(x,y,PortalEnviromentReplacer)
	{
		area = 137;
		prevArea = 138;
	}
}
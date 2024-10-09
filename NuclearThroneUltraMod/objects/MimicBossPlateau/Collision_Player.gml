/// @description Go summon a boss
if !used
{
	with Player
		isOnInteractable = true;
	if KeyCont.key_pick[Player.p] = 1
	{
		used = true;
		KeyCont.key_pick[Player.p] = 2;
		mask_index = mskPickupThroughWall;
		snd_play_2d(sndVoidCreepEnd);
		with MusCont
		{
			audio_stop_sound(song);	
		}
		with instance_create(x,y,DarkOverlay)
		{
			alarm[0] = 90;
		}
		alarm[0] = 60;
		mask_index = mskPickupThroughWall;
		var preva = Player.area;
		with instance_create(x,y,PortalEnviromentReplacer)
		{
			area = 137;
			prevArea = preva;
		}
		image_index = 1;
		instance_create(x,y,MimicBossSummonFail)
	}
}
else
{
		
}
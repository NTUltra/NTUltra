/// @description Go to Vulcano
isInteractableNow = false;
if spr_idle == sprHotDrakeSkullIdleOpen
{
	isInteractableNow = true;
	if KeyCont.key_pick[Player.p] = 1
	{
		KeyCont.key_pick[Player.p] = 2;
		mask_index = mskPickupThroughWall;
		with Player
		{
			if array_length(snd_good) > 0
				snd_play(snd_good[irandom(array_length(snd_good)-1)]);
			else
				snd_play(snd_thrn);
			area = 7
			subarea = 0
		}
		spr_idle = sprHotDrakeSkullIdleClosed;
		spr_hurt = sprHotDrakeSkullHurtClosed;
		with instance_create(x,y,Portal)
		{
			type = 1;
			pullstrength = 3;
			with Player
			{
				lockout = true;	
			}
			alarm[1] = 1;
		}
		with instance_create(x,y,PortalEnviromentReplacer)
		{
			area = 7;
			prevArea = 3;
		}
	}
}
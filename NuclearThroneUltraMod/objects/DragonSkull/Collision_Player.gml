/// @description Go to Vulcano
if spr_idle == sprHotDrakeSkullIdleOpen
{
	if KeyCont.key_pick[other.p] = 1
	{
		KeyCont.key_pick[Player.p] = 2;
		mask_index = mskPickupThroughWall;
		with other
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
			alarm[1] = 1;
		}
		with instance_create(x,y,PortalEnviromentReplacer)
		{
			area = 7;
			prevArea = 3;
		}
	}
}
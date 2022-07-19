/// @description Go to Vulcano
if spr_idle == sprHotDrakeSkullIdleOpen
{
	if KeyCont.key_pick[other.p] = 1
	{
		KeyCont.key_pick[Player.p] = 2;
		snd_play(other.snd_thrn);

		with other
		{
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
	
	}
}
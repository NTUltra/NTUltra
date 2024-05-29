/// @description Loop oasis
if loops > 0 && spr_idle = sprBigFishSkullOpen && !instance_exists(WantBoss) && !instance_exists(SandWorm)
{
	if KeyCont.key_pick[Player.p] = 1
	{
		KeyCont.key_pick[Player.p] = 2;
		snd_play(sndOasisHorn);
		/*
		snd_play(other.snd_thrn);

		with other
		{
			area = 101
			subarea = 0
		}
*/
		//with enemy
		//	my_health = 0
		alarm[1] += 230;
		spr_idle = sprBigFishSkull;
		spr_hurt = sprBigFishSkullHurt;
		with instance_create(x,y,WantBoss)
		{oasis=true;
		event_perform(ev_alarm,0) }
		with instance_create(x,y,PortalEnviromentReplacer)
		{
			area = 101;
			prevArea = 1;
		}
	}
}
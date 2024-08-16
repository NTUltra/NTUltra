/// @description Loop oasis
isInteractableNow = false;
if spr_idle == sprBigFishSkullOpen
{
	isInteractableNow = true;
	var thereIsBoss = false;
	with WantBoss
	{
		if !oasis
			thereIsBoss = true;
	}
	if KeyCont.key_pick[Player.p] = 1 && !thereIsBoss && !instance_exists(SandWorm)
	{
		with Portal
		{
			instance_destroy();	
		}
		with Player
		{
			roll = 0;
			angle = 0;
		}
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
/// @description Go to Factory
if my_health > 0
{
	if KeyCont.key_pick[other.p] = 1
	{
		spr_idle = sprFactoryEntranceActive;
		spr_hurt = sprFactoryEntranceActiveHurt;
		sprite_index = sprFactoryEntranceActive;
		KeyCont.key_pick[Player.p] = 2;
		mask_index = mskPickupThroughWall;
		with instance_create(x,y,WantBoss)
		{
			event_perform(ev_alarm,0) 
		}
		with Player {
			area = 130;
			subarea = 0;
			snd_play(choose(snd_lowa,snd_lowh));
		}
		with instance_create(x,y,Portal)
		{
			type = 1
			pullstrength = 3;
			alarm[1] = 1;
		}
	}
}
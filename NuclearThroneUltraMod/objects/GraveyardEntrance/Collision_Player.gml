/// @description Go to Graveyard
if my_health > 0
{
	if KeyCont.key_pick[other.p] = 1
	{
		snd_play(sndCursedReminder,0,0,true,1,false,false,1);
		KeyCont.key_pick[Player.p] = 2;
		mask_index = mskPickupThroughWall;
		maxhealth = 200 * clamp(loops*5,1,10)
		alarm[1] += 630;
		with instance_create(x,y,WantBoss)
		{
			event_perform(ev_alarm,0) 
		}
		with Player {
			curse = 1;
			bcurse = 1;
			ccurse = 1;
		}
		/*
		with instance_create(x,y,Portal)
		{
			type = 1
			pullstrength = 3;
			alarm[1] = 1;
		}*/
	}
	
}
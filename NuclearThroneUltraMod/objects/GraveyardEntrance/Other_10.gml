/// @description Go to Graveyard
if my_health > 0
{
	if KeyCont.key_pick[Player.p] = 1
	{
		with Player
		{
			if place_meeting(x,y,Portal)
				exit;
		}
		with Portal
		{
			instance_destroy();	
		}
		snd_play(sndCursedReminder,0,0,true,1,false,false,1);
		KeyCont.key_pick[Player.p] = 2;
		mask_index = mskPickupThroughWall;
		maxhealth = 200 * clamp(loops*5,1,10)
		alarm[1] += 700;
		with instance_create(x,y,WantBoss)
		{
			event_perform(ev_alarm,0);
		}
		with Player {
			curse = 1;
			bcurse = 1;
			ccurse = 1;
			snd_play(choose(snd_lowa,snd_lowh));
			image_angle = 0;
			angle = 0;
		}
		with WepPickup {
			curse = 1;
			repeat(6)
			{
				with instance_create_depth(other.x,other.y,depth - 1, Curse)
				{
					motion_add(random(360),1 + random(2));	
				}
			}
		}
		with WeaponChest
		{
			curse = 1;
			repeat(6)
			{
				with instance_create_depth(other.x,other.y,depth - 1, Curse)
				{
					motion_add(random(360),1 + random(2));	
				}
			}
		}
		repeat(12)
		{
			with instance_create_depth(other.x,other.y,depth - 1, Curse)
			{
				motion_add(random(360),1 + random(2));	
			}
		}
		
		with instance_create(x,y,PortalEnviromentReplacer)
		{
			area = 126;
			prevArea = 10;
		}
	}
	
}
/// @description Go to Graveyard
if isActivated
	isInteractableNow = false;
if my_health > 0 && isInteractableNow && !instance_exists(HyenaBoss) && !instance_exists(BallMom)
{
	if instance_exists(Player) && KeyCont.key_pick[Player.p] = 1
	{
		UberCont.hadBossIntro = false;
		isActivated = true;
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
		isInteractableNow = false;
		maxhealth = 150 * clamp(loops*5,1,10)
		my_health = maxhealth;
		alarm[1] += 900;
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
		var prevA = 10;
		if instance_exists(Player)
			preva = Player.area;
		else if instance_exists(PlayerSpawn)
			prevA = PlayerSpawn.area;
	
		with instance_create(x,y,PortalEnviromentReplacer)
		{
			area = 126;
			prevArea = prevA;
		}
	}
}
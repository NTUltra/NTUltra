/// @description Go to Bloodland
if isActivated
	isInteractableNow = false;
if my_health > 0 && isInteractableNow && !instance_exists(WantBoss) && !instance_exists(HotDrake) && !instance_exists(InvertedHotDrake)
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
		with instance_create(x,y,Portal)
		{
			type = 1
			pullstrength = 3;
			x = other.x;
			y = other.y;
			scrForcePosition60fps();
			with Player
			{
				lockout = true;
				x = other.x;
				y = other.y;
				scrForcePosition60fps();
			}
			alarm[1] = 1;
		}
		with enemy
		{
			my_health = 0;
			prevhealth = 0;
		}
		instance_create(x,y,NoHealing);
		with Player {
			my_health = 3;
			prevhealth = 3;
			snd_play(choose(snd_lowa,snd_lowh));
			image_angle = 0;
			angle = 0;
			area = 146
			subarea = 0;
		}
		KeyCont.key_pick[Player.p] = 2;
		mask_index = mskPickupThroughWall;
		var prevA = 7;
		if instance_exists(Player)
			preva = Player.area;
		else if instance_exists(PlayerSpawn)
			prevA = PlayerSpawn.area;
	
		with instance_create(x,y,PortalEnviromentReplacer)
		{
			area = 146;
			prevArea = prevA;
		}
		
		var splatDir = random(360);
		var rpt = 8;
		var angStep = 360 / rpt;
		repeat(rpt)
		{
			with instance_create(x,y,BloodStreak)
			{
				motion_add(splatDir,12)
				image_angle = direction
			}
			scrAddToBGFXLayer(
				sprBloodSplat,
				irandom(sprite_get_number(sprBloodSplat)),
				x + lengthdir_x(random_range(10,16),splatDir),
				y + lengthdir_y(random_range(10,16),splatDir),
				random_range(0.8,1),
				random_range(0.8,1),
				splatDir,
				c_white,
				1
			);
			splatDir += angStep;
		}
	}
}
/// @description Go to jungle or back to frozen city
if !instance_exists(Player)
	exit;
with Player
	isOnInteractable = true;
if instance_exists(WantBoss) || instance_exists(JungleBoss) || instance_exists(BecomeJungleBoss)
|| instance_exists(InvertedJungleBoss) || instance_exists(BecomeInvertedJungleBoss) || instance_exists(InvertedBigDisc)
|| instance_exists(LilHunter) || instance_exists(LilHunterFly) || instance_exists(InvertedLilHunter) || instance_exists(InvertedLilHunterFly)
{
	name = "DEFEAT BOSS FIRST";
}
else
{
	name = constantName;
	if KeyCont.key_pick[Player.p] = 1 && !used
	{
		if blood >= bloodNeeded
		{
			var prevA = Player.area;
			var a = 114;
			if Player.area == 114 || Player.area == 123
			{
				a = 5;
			}
			with instance_create(x,y,PortalEnviromentReplacer)
			{
				area = a;
				prevArea = prevA;
			}
			used = true;
			KeyCont.key_pick[Player.p] = 2;
			with Player
			{
				with PitNavigation
				{
					instance_destroy();	
				}
				if array_length(snd_good) > 0
					snd_play(snd_good[irandom(array_length(snd_good)-1)]);
				else
					snd_play(snd_thrn);
				if area == 114 || area == 123
				{
					if area != 100
					{
						area = 5;
						subarea = 2;
					}
					lastarea = 5;
					lastsubarea = 2;
					inverted = false;
				}
				else
				{
					if area != 100
					{
						area = 114;
						subarea = 1;
					}
					lastarea = 114;
					lastsubarea = 1;
					inverted = false;
					/*
					if subarea == 2
						subarea = 2;
					else
						subarea = 1;*/
				}
			}
			with instance_create(x,y,Portal)
			{
				type = 1;
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
		}
		else
		{
			blood ++;
			var prevA = Player.area;
			var a = 114;
			if Player.area == 114 || Player.area == 123
			{
				a = 5;
			}
			with instance_create(x,y,PortalEnviromentReplacer)
			{
				area = a;
				prevArea = prevA;
				maxRadius = 72;
			}
			if blood >= bloodNeeded
			{
				name = "ENTER?";	
			}
			with Player
			{
				my_health --;
				snd_play(snd_hurt);
				sprite_index = spr_hurt;
				image_index = 0;
				var ang = random(360)
				repeat(3)
				{
					with instance_create(x,y,BloodStreak)
					{
						motion_add(ang,8)
						image_angle = direction
					}
					scrAddToBGFXLayer(
						sprBloodSplat,
						irandom(sprite_get_number(sprBloodSplat)),
						x + lengthdir_x(random_range(4,8),ang),
						y + lengthdir_y(random_range(4,8),ang),
						random_range(0.8,1),
						random_range(0.8,1),
						ang,
						c_white,
						1
					);
					ang += 120
				}
			}
		}
	}
}
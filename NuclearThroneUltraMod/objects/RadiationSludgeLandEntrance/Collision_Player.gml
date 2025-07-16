/// @description You want to go for pizza?
if !wentIn && !instance_exists(LilHunter) && !instance_exists(InvertedLilHunter) && !instance_exists(WantBoss) && !instance_exists(LilHunterFly) && !instance_exists(LilHunterDie) && !instance_exists(InvertedLilHunterFly) && !instance_exists(InvertedLilHunterDie)
{
	with Player
		isOnInteractable = true;
	if KeyCont.key_pick[other.p] = 1
	{
		wentIn = true;
		snd_play(sndOasisHorn);
		name = "";
		KeyCont.key_pick[Player.p] = 2;
		with Player
		{
			area = 144
			snd_play_2d(sndVenom);
			var am = 8;
			var ang = random(360);
			var angStep = 360/am;
			repeat(am)
			{
				with instance_create(x,y,AcidStreak)
				{
					motion_add(ang,6 + random(3));
					image_angle = direction;
				}
				ang += angStep;
			}
			rad = 0;
		}
		var prevA = 5;
		if instance_exists(Player)
			prevA = Player.area;
		with instance_create(x,y,PortalEnviromentReplacer)
		{
			area = 144;
			prevArea = prevA;
		}
		with instance_create(x+16,y+16,Portal){
			type = 1
			pullstrength = 3;
			alarm[1] = 1;
			x = other.x+16;
			y = other.y+16;
			scrForcePosition60fps();
			with Player
			{
				lockout = true;
				x = other.x;
				y = other.y;
				scrForcePosition60fps();
			}
		}
		with enemy
		{
			my_health = 0;
			prevhealth = 0;
		}
		with Pickup
		{
			instance_destroy(id,false);	
		}
	}
}
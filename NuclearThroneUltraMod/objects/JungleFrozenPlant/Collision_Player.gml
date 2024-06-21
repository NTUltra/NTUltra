/// @description Go to jungle or back to frozen city
with Player
	isOnInteractable = true;
if KeyCont.key_pick[other.p] = 1 && !used
{
	if blood >= bloodNeeded
	{
		with instance_create(x,y,PortalEnviromentReplacer)
		{
			area = 5;
			prevArea = 114;
		}
		used = true;
		KeyCont.key_pick[Player.p] = 2;
		with Player
		{
			if array_length(snd_good) > 0
				snd_play(snd_good[irandom(array_length(snd_good)-1)]);
			else
				snd_play(snd_thrn);
			if area == 114
			{
				area = 5;
				subarea = 2;
			}
			else
			{
				area = 114;
				subarea = 1;
				/*
				if subarea == 2
					subarea = 2;
				else
					subarea = 1;*/
			}
		}

		//with enemy
		//	my_health = 0

		with instance_create(x,y,Portal)
		{
			type = 1;
			pullstrength = 3;
			with Player
			{
				lockout = true;	
			}
			alarm[1] = 1;
		}

	}
	else
	{
		blood ++;
		with instance_create(x,y,PortalEnviromentReplacer)
		{
			area = 5;
			prevArea = 114;
			maxRadius = 72;
		}
		if blood >= bloodNeeded
		{
			name = "ENTER?";	
		}
		with other
		{
			my_health --;
			snd_play(snd_hurt);
			sprite_index = spr_hurt;
			image_index = 0;
		}
	}
}
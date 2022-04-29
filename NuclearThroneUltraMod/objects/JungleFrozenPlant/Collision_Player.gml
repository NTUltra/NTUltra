/// @description Go to jungle or back to frozen city
if KeyCont.key_pick[other.p] = 1
{
	if other.skill_got[18] && UberCont.lastwishused
	{
		UberCont.lastwishused = false;
		dir= instance_create(x,y-8,PopupText)
		dir.mytext = "LAST WISH#CAN GIVE A LIFE AGAIN!";
	}
	if blood >= bloodNeeded
	{
		KeyCont.key_pick[Player.p] = 2;
		with other
		{
			snd_play(snd_thrn);
			if area == 114
			{
				area = 5;
				subarea = 2;
			}
			else
			{
				area = 114;
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
		}

		instance_change(Wind,false)
	}
	else
	{
		blood ++;
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
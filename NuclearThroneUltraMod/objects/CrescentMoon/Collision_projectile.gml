if (deflectDurability < maxDeflect || alarm[1] > 0)
{
	var deflected = false;
	with other
	{
		if isGrenade
		{
			BackCont.shake += 2;
			snd_play(sndRicochet,0.1,true);
			scrDeflectNade(other.image_angle);
		}
		else if team != 2
		{
			if (angle_difference(other.image_angle,direction + 180) < 90)
			{
				if typ == 1
				{
					team = 2
					with other
						var aimDirection = scrCresentMoonAimAssist(image_angle);
					BackCont.shake += 2;
					snd_play(sndRicochet,0.1,true);
					direction = aimDirection
					speed = max(other.deflectSpeed,speed + 2);
					image_angle = direction;
					with instance_create(other.x,other.y,Deflect)
						image_angle = other.image_angle;
					//Deflect sprite
					event_user(15);
					if object_index != Disc
						deflected = true;
				}
				else if typ == 2 || (typ == 0 && canBeMoved)
				{
					snd_play(sndProjectileDestroy,0.1,true);
					BackCont.shake += 1;
					instance_destroy();
					deflected = true;
				}
				else if typ == 3
				{
					x = xprevious;
					y = yprevious;
				}
			}
		}
	}
	if alarm[3] < 1 && deflected && sprite_index != sprCrescentMoonDeflecting && alarm[0] < 1 && alarm[1] < 1
	{
		if deflectDurability >= maxDeflect - 1
		{
			snd_play(sndCrescentMoonBreak);
		}
		else
		{
			snd_play(sndCrescentMoonBlock);
		}
		alarm[0] = deflectDuration;
		alarm[2] = deflectDuration + alarmRate;
		sprite_index = sprCrescentMoonDeflecting;
		image_index = 0;
	}
}
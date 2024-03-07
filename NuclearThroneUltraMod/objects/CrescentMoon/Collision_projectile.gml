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
			deflected = true;
		}
		else if team != 2
		{
			if typ == 1
			{
				team = 2
				BackCont.shake += 2;
				snd_play(sndRicochet,0.1,true);
				direction = other.image_angle
				speed = max(other.deflectSpeed,speed);
				image_angle = direction;
				with instance_create(other.x,other.y,Deflect)
					image_angle = other.image_angle;
				//Deflect sprite
				event_user(15);
				deflected = true;
			}
			else if typ == 2
			{
				snd_play(sndProjectileDestroy,0.1,true);
				BackCont.shake += 1;
				instance_destroy();
				deflected = true;
			}
		}
	}
	if alarm[3] < 1 && deflected && sprite_index != sprCrescentMoonDeflecting && alarm[0] < 1 && alarm[1] < 1
	{
		alarm[0] = deflectDuration;
		alarm[2] = deflectDuration + alarmRate;
		sprite_index = sprCrescentMoonDeflecting;
		image_index = 0;
	}
}
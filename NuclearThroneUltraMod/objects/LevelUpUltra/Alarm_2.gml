/// @description BIg lightning
BackCont.shake += 10;
Sleep(20);
with Player
{
	snd_play_2d(sndThunder);
	var langle = random(360);
	var langstep = 360/8;
	repeat(8)
	{
		with instance_create(x,y,UltraLightning)
		{
			fork -= 3;
			image_angle = langle;
			team = 2
			ammo = 12+irandom(6)//60
			event_perform(ev_alarm,0)
			with instance_create(x,y,LightningSpawn)
			image_angle = other.image_angle
		}
		langle += langstep;
	}
}

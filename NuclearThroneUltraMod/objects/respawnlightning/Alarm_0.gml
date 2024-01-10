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
			image_angle = langle;
			team = 2
			ammo = 10+random(6)//60
			///if Player.ultra_got[59]=1 
			///ammo+=4;
			event_perform(ev_alarm,0)
			with instance_create(x,y,LightningSpawn)
			image_angle = other.image_angle
		}
		langle += langstep;
	}
}
if amount < 0
{
	instance_destroy();	
}
alarm[0] = 20;
amount --;
/// @description Ultra lightning why not
alarm[1] = 4;
BackCont.shake += 4;
with Player
{
	if !audio_is_playing(sndSpark1)&&!audio_is_playing(sndSpark2)
	snd_play(choose(sndSpark1,sndSpark2))

	with instance_create(x,y,UltraLightning)
	{
		image_angle = random(360);
		team = 2
		ammo = 4+random(6)//60
		///if Player.ultra_got[59]=1 
		///ammo+=4;
		event_perform(ev_alarm,0)
		visible = 0
		with instance_create(x,y,LightningSpawn)
		image_angle = other.image_angle
	}
}
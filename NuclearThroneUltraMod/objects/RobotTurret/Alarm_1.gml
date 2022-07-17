/// @description Ultra Lightning
alarm[1] = clamp(reload*1.1,15,40);
BackCont.shake += 1;
if !audio_is_playing(sndSpark1)&&!audio_is_playing(sndSpark2)
snd_play(choose(sndSpark1,sndSpark2))

var langle = random(360);
var langstep = 360/3;
repeat(3)
{
	with instance_create(x,y,UltraLightning)
	{
		image_angle = langle;
		team = 2
		ammo = 5
		event_perform(ev_alarm,0)
		visible = 0
		with instance_create(x,y,LightningSpawn)
		image_angle = other.image_angle
	}
	langle += langstep;
}
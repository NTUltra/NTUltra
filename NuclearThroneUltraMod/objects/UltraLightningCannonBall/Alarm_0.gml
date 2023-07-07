/// @description lightning lightning ever so frightning
if !audio_is_playing(sndSpark1)&&!audio_is_playing(sndSpark2)
snd_play(choose(sndSpark1,sndSpark2,sndLightning1,sndLightning3,sndLightningHammer))

with instance_create(x,y,UltraLightning)
{
	iframeskip -= 0.02;
	image_angle = random(360);
	accuracy=0;
	team = other.team
	ammo = 18;
	event_perform(ev_alarm,0)
	visible = 0
	with instance_create(x,y,LightningSpawn)
		image_angle = other.image_angle
}
alarm[0] = 3+irandom(2);
BackCont.shake += 4
instance_create(x,y,BigWallBreak);
/// @description Electricity
// Inherit the parent event
event_inherited();


if !audio_is_playing(sndSpark1)&&!audio_is_playing(sndSpark2)
	snd_play(choose(sndSpark1,sndSpark2))
	with instance_create(x,y,Lightning)
	{
		image_angle = other.image_angle+choose(60,-60);
		accuracy=0;
		team = other.team
		ammo = 8;
		event_perform(ev_alarm,0)
		visible = 0
		with instance_create(x,y,LightningSpawn)
			image_angle = other.image_angle
	}

/// @description xxx
image_angle = direction


if speed < 6 and sprite_index != sprLightningSlugDisappear
{
	sprite_index = sprLightningSlugDisappear
	image_index = 0
	image_speed = 0.4
	snd_play(choose(sndSpark1,sndSpark2),0.1,true)
	repeat(2)
	with instance_create(x,y,Lightning)
	{
		image_angle = random(360);
		accuracy=0;
		team = other.team
		ammo = 4;
		event_perform(ev_alarm,0)
		visible = 0
		with instance_create(x,y,LightningSpawn)
			image_angle = other.image_angle
	}
}
/// @description lightning on hit
if my_health < prevhealth
{
	snd_play(choose(sndSpark1,sndSpark2))
	repeat(3)
	with instance_create(x,y,Lightning)
	{
		image_angle = random(360);
		team = other.team
		ammo = 3
		event_perform(ev_alarm,0)
		visible = 0
		with instance_create(x,y,LightningSpawn)
			image_angle = other.image_angle
	}
}

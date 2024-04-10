event_inherited()
scrDrop(10,20)
if !sleeping
{
	repeat(4)
	with instance_create(x,y,Lightning)
	{
		image_angle = random(360);
		team = other.team
		ammo = 3
		event_perform(ev_alarm,0)
		with instance_create(x,y,LightningSpawn)
			image_angle = other.image_angle
	}
	snd_play(sndLightning1,0.1)
	with instance_create(x,y,Lightning)
	{
		image_angle = 0
		team = 1
		ammo = other.l
		event_perform(ev_alarm,0)
		with instance_create(x,y,LightningSpawn)
		image_angle = other.image_angle
	}
	with instance_create(x,y,Lightning)
	{
		image_angle = 90
		team = 1
		ammo = other.l
		event_perform(ev_alarm,0)
		with instance_create(x,y,LightningSpawn)
		image_angle = other.image_angle
	}
	with instance_create(x,y,Lightning)
	{
		image_angle = 180
		team = 1
		ammo = other.l
		event_perform(ev_alarm,0)
		with instance_create(x,y,LightningSpawn)
		image_angle = other.image_angle
	}
	with instance_create(x,y,Lightning)
	{
		image_angle = 270
		team = 1
		ammo = other.l
		event_perform(ev_alarm,0)
		with instance_create(x,y,LightningSpawn)
		image_angle = other.image_angle
	}
}
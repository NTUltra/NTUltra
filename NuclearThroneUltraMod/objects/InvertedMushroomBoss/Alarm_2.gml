/// @description Close range toxic spawm / buddy healing
alarm[1] += alarm[2];
forceAnimation = spr_idle;
event_user(14);
scrDrop(10,0);
if mode == 1
{
	var l = 10;
	snd_play(sndBigMushroomBossLightning,0.1)
	repeat(4)
		with instance_create(x,y,Lightning)
		{
			image_angle = random(360);
			team = other.team
			ammo = 5
			enemyAccuracy = 18;
			event_perform(ev_alarm,0)
			with instance_create(x,y,LightningSpawn)
				image_angle = other.image_angle
		}
	snd_play(sndLightning1,0.1)
	with instance_create(x,y,Lightning)
	{
		image_angle = 0
		team = 1
		ammo = l
		event_perform(ev_alarm,0)
		with instance_create(x,y,LightningSpawn)
		image_angle = other.image_angle
	}
	with instance_create(x,y,Lightning)
	{
		image_angle = 90
		team = 1
		ammo = l
		event_perform(ev_alarm,0)
		with instance_create(x,y,LightningSpawn)
		image_angle = other.image_angle
	}
	with instance_create(x,y,Lightning)
	{
		image_angle = 180
		team = 1
		ammo = l
		event_perform(ev_alarm,0)
		with instance_create(x,y,LightningSpawn)
		image_angle = other.image_angle
	}
	with instance_create(x,y,Lightning)
	{
		image_angle = 270
		team = 1
		ammo = l
		event_perform(ev_alarm,0)
		with instance_create(x,y,LightningSpawn)
		image_angle = other.image_angle
	}
}
else {
	snd_play(sndBigMushroomBossFrost,0.1);
	var ang = random(360);
	repeat(6)
	{
		with instance_create(x,y,EnemyIceFlame)
		{
			motion_add(ang,2.5);
			image_angle = direction
			team = other.team
		}
		ang += 60;	
	}
	ang += 30;
	repeat(6)
	{
		with instance_create(x,y,EnemyIceFlame)
		{
			motion_add(ang,4);
			image_angle = direction
			team = other.team
		}
		ang += 30;
	}	
}
alarm[1] = 1;
if fire > 0
{
	fire -= 1
	if side = 1 || loop
	{
		if !position_meeting(x-4,y+8,Wall)
			with instance_create(x-4,y+8,EnemyIceFlame)
			{
				hspeed = -8;
				dodgeAble = false;
			}
		if !position_meeting(x+20,y+8,Wall)
			with instance_create(x+20,y+8,EnemyIceFlame)
			{
				hspeed = 8;
				dodgeAble = false;
			}

		if !position_meeting(x+8,y-4,Wall)
			with instance_create(x+8,y-4,EnemyIceFlame)
			{
				vspeed = -8;
				dodgeAble = false;
			}
		if !position_meeting(x+8,y+20,Wall)
			with instance_create(x+8,y+20,EnemyIceFlame)
			{
				vspeed = 8;
				dodgeAble = false;
			}
	}
	if ((side = 0 || loop) && fire % 2 == 0)
	{
		alarm[1] = 2;
		snd_play(choose(sndSpark1,sndSpark2),0.1);
		if !position_meeting(x-4,y+8,Wall)
			with instance_create(x-4,y+8,Lightning)
			{
				team = 0;
				image_angle = 180;
				ammo = 8
				dodgeAble = false;
				event_perform(ev_alarm,0)
				visible = 0
				with instance_create(x,y,LightningSpawn)
					image_angle = other.image_angle
			}
		if !position_meeting(x+20,y+8,Wall)
			with instance_create(x+20,y+8,Lightning)
			{
				team = 0;
				image_angle = 0;
				ammo = 8
				dodgeAble = false;
				event_perform(ev_alarm,0)
				visible = 0
				with instance_create(x,y,LightningSpawn)
					image_angle = other.image_angle
			}

		if !position_meeting(x+8,y-4,Wall)
			with instance_create(x+8,y-4,Lightning)
			{
				team = 0;
				image_angle = 90;
				ammo = 8
				dodgeAble = false;
				event_perform(ev_alarm,0)
				visible = 0
				with instance_create(x,y,LightningSpawn)
					image_angle = other.image_angle
			}
		if !position_meeting(x+8,y+20,Wall)
			with instance_create(x+8,y+20,Lightning)
			{
				team = 0;
				image_angle = 270;
				ammo = 8
				dodgeAble = false;
				event_perform(ev_alarm,0)
				visible = 0
				with instance_create(x,y,LightningSpawn)
					image_angle = other.image_angle
			}
	}
}
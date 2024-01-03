if ammo > 0
{
ammo -= 1
alarm[3] = 5
snd_play(choose(sndSpark1,sndSpark2))
sprite_index = spr_fire
    /*with instance_create(x,y,Lightning)
    {image_angle = other.gunangle+random(6)-3
    team = other.team
    ammo=6;
    //event_perform(ev_alarm,0)
    }*/
	with instance_create(x,y,Lightning)
	{
		image_angle = random(360);
		team = other.team
		ammo = 10
		event_perform(ev_alarm,0)
		with instance_create(x,y,LightningSpawn)
			image_angle = other.image_angle
	}
}
else
{
sprite_index = spr_idle
}

/* */
/*  */

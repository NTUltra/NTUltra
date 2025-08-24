var inArray = array_contains(hitEntities,other.id)
if other.team != team && (!inArray || other.sprite_index != other.spr_hurt)
{
	if !inArray
		hitEntities[array_length(hitEntities)] = other.id;
	alarm[1] = hitDelay;
	snd_play(sndRoll,0,true);
	//snd_play(sndBloodLauncher,0,true);

	snd_play(choose(sndWater1,sndWater2,sndTentacle,sndTentacle2) ,0,true);

	if other.my_health > 0
	{
		with instance_create(x,y,Tentacle)
		{
			image_angle = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(random(30)-15)
		team = other.team
		ammo = other.length
		sprite_index=sprUltraTentacle;
		ultra=true;
		dmg += 6;
		event_perform(ev_alarm,0)
		visible = 0
		with instance_create(x,y,LightningSpawn)
		{
		sprite_index=sprTentacleSpawn
		image_angle = other.image_angle
		}

		    with instance_create(x,y,FishBoost)
		    {
		    motion_add( point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+random(60)-30,3);
		    }

		}
		with other
		{
			DealDamage(other.dmg);
			snd_play(snd_hurt, hurt_pitch_variation)
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.direction,8)
		
			BackCont.shake += 5
		}
	}
}


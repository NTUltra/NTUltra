if other.team != team and other.my_health > 0
{instance_destroy()

	var hits = ds_list_create();
	var range = 28;
	if instance_exists(Player) && Player.skill_got[15] //Shotgun shoulder
	{
		range += 12;
		with instance_create(x,y,BulletHit)
		{
			sprite_index = sprHeavySlugHit
			image_xscale = 1.3;
			image_yscale = 1.3;
		}
	}
	else
	{
		with instance_create(x,y,BulletHit)
			sprite_index = sprHeavySlugHit
	}
	var direct = other.id;
	var al = collision_circle_list(x,y,range,hitme,false,false,hits,false)
	for (var i = 0; i < al; i++) {
	    // code here
		with hits[| i]
		{
			if team != other.team && my_health > 0
			{
				my_health -= other.dmg - 20
				if id == direct
					my_health -= 20;
				sprite_index = spr_hurt
				image_index = 0
				motion_add(other.direction,9)
				scrForcePosition60fps();
				if speed > maxSpeed+1
					speed = maxSpeed+1;
				snd_play(snd_hurt, hurt_pitch_variation,true)
			}
		}
	}


with instance_create(x,y,BulletHit)
	sprite_index = sprUltraSlugHit

}


if other.team != team and other.my_health > 0
{
	with instance_create(x,y,BulletHit)
		sprite_index = sprHeavySlugHit
	var hits = ds_list_create();
	var range = 24;
	if instance_exists(Player) && Player.skill_got[15] //Shotgun shoulder
	{
		range += 12;
		with instance_create(x,y,BulletHit)
		{
			if other.object_index == UltraHeavySlug
				sprite_index = sprUltraHeavySlugHit;
			else
				sprite_index = sprHeavySlugHit
			image_xscale = 1.3;
			image_yscale = 1.3;
		}
	}
	else
	{
		if object_index == UltraHeavySlug
			with instance_create(x,y,BulletHit)
				sprite_index = sprUltraHeavySlugHit
		else
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
				if id == direct
					DealDamage(other.dmg);
				else
					DealDamage(other.dmg - 40);
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
	ds_list_destroy(hits);
	instance_destroy();
}


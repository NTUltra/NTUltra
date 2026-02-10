if candmg and other.my_health > 0 and other.team != team
{
	if (!array_contains(hitEntities,other.id))
	{
		var actualDmg = scrCalculateFinalDamage(dmg);
		var pierceDmg = scrGetBoltPierceDamage(actualDmg);
		if other.my_health >= pierceDmg
		{
			instance_destroy();
		}
		with other
		{
			snd_play(snd_hurt, hurt_pitch_variation,true)
			DealDamage(other.dmg);
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.direction,3)
		}
		if other.my_health > 0
		{
			hitEntities[array_length(hitEntities)] = other.id;
			target = other.id
			x += hspeed;
			y += vspeed;
			with scrBoltTrail(trailColour,0.11,0.75)
			{
				image_speed -= 0.1;
			}
			with instance_create(x,y,BoltStick)
			{
				sprite_index = other.boltStick
				image_angle = other.image_angle
				target = other.target
			}
		}
	}
}


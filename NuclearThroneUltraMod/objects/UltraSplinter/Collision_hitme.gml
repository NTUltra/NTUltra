if (candmg && other.team != team && other.my_health > 0 && !array_contains(hitEntities,other.id))
{
	hitEntities[array_length(hitEntities)] = other.id;
	var actualDmg = scrCalculateFinalDamage(dmg);
	with other
	{
		if my_health >= actualDmg
		{
			with other
			{
				dmg += 8;
				instance_destroy();
				x += hspeed//(other.x - x)*0.75;
				y += vspeed//(other.y - y)*0.75;
				with scrBoltTrail(trailColour,0.11,0.75)
				{
					image_speed -= 0.1;
				}
				target = other.id
				with instance_create(x,y,BoltStick)
				{
					sprite_index = other.boltStick
					image_angle = other.image_angle
					target = other.target
					team = other.team;
				}
			}
		}
		snd_play(snd_hurt, hurt_pitch_variation,true)
		DealDamage(other.dmg);
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.direction,6)
	}
}


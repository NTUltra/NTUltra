if candmg and other.team != team
{
	if (!array_contains(hitEntities,other.id))
	{
		if instance_exists(Player) && Player.skill_got[21]
			var pierceDmg = dmg*0.75
		else
			var pierceDmg = dmg*0.5
		if other.my_health >= pierceDmg
		{
			instance_destroy();
			with other
			{
				snd_play(snd_hurt, hurt_pitch_variation,true)
				my_health -= other.dmg
				sprite_index = spr_hurt
				image_index = 0
				motion_add(other.direction,other.knockback + 2)
			}
			x += (other.x - x)*0.75;
			y += (other.y - y)*0.75;
			with scrBoltTrail(trailColour,0.11,0.75)
			{
				image_speed -= 0.1;
			}
			target = other.id
			with instance_create(x,y,boltStick)
			{
				image_angle = other.image_angle
				target = other.target
				team = other.team;
			}
		}
		else if other.my_health > 0
		{
			hitEntities[array_length(hitEntities)] = other.id;
			with other
			{
				snd_play(snd_hurt, hurt_pitch_variation,true)
				my_health -= other.dmg;
				sprite_index = spr_hurt
				image_index = 0
				motion_add(other.direction,other.knockback)
			}
		}
	}
}


if speed > 2 and other.team != team && !array_contains(hitEntities,other.id)
{
	if other.my_health >= dmg
	{
		instance_destroy()
		with other
		{
			snd_play(snd_hurt, hurt_pitch_variation,true)
			DealDamage(other.dmg)
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.direction,8)
		}
		target = other.id
		with instance_create(x,y,BoltStick)
		{
			sprite_index = sprSpearStick;
			image_angle = other.image_angle
			target = other.target
			team = other.team;
		}
	}
	else if other.my_health > 0
	{
		if boltMarrow
		{
			friction += 0.26;
			speed /= min(1.6,other.my_health*0.13);
			speed -= 1;
		}
		else
		{
			friction += 0.4;
			speed /= max(2,other.my_health*0.2);
			speed -= 1.3;
		}
		if speed < 0
			speed = 0;
		hitEntities[array_length(hitEntities)] = other.id;
		with other
		{
			snd_play(snd_hurt, hurt_pitch_variation,true)
			DealDamage(other.dmg)
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.direction,8)
		}
		target = other.id
	}
	event_user(1);
}


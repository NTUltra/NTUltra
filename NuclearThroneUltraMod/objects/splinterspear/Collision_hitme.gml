if speed > 2 and other.team != team && !array_contains(hitEntities,other.id)
{
	if other.my_health >= dmg
	{
		instance_destroy()
		with other
		{
			snd_play(snd_hurt, hurt_pitch_variation,true)
			my_health -= other.dmg
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
	else
	{
		friction += 0.4;
		speed *= min(1,other.my_health*0.1);
		speed --;
		if speed < 0
			speed = 0;
		hitEntities[array_length(hitEntities)] = other.id;
		with other
		{
			snd_play(snd_hurt, hurt_pitch_variation,true)
			my_health -= other.dmg
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.direction,8)
		}
		target = other.id
	}
	with instance_create(x,y,Splinter)//5 splinters
	{
		motion_add(other.direction,18)
		image_angle = direction
		team = other.team
	}
}


if candmg and other.team != team
{


if other.my_health >= (dmg*0.5) && !array_contains(hitEntities,other.id)//other.sprite_index != other.spr_hurt
{
	snd_play(other.snd_hurt, other.hurt_pitch_variation,true)
	instance_destroy()

	with other
	{
		my_health -= other.dmg
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.direction,8)
	}
	target = other.id
	with instance_create(x,y,boltStick)
	{
		image_angle = other.image_angle
		target = other.target
		team = other.team;
	}
}
else if other.my_health < (dmg*0.5) and !array_contains(hitEntities,other.id)// other.sprite_index != other.spr_hurt)//other.sprite_index != other.spr_hurt
{
	snd_play(other.snd_hurt, other.hurt_pitch_variation,true)
	hitEntities[array_length(hitEntities)] = other.id;
	with other
	{
		my_health -= other.dmg;
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.direction,6)
	}
alarm[1]=4
}
}


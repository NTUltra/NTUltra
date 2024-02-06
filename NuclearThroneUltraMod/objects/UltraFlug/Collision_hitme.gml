if other.team != team and other.my_health > 0 && !array_contains(hitEntities,other.id)
{
	hitEntities[array_length(hitEntities)] = other.id;
	with other
	{
		DealDamage(other.dmg)
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.direction,9)
		snd_play(snd_hurt, hurt_pitch_variation,true);

	}
	repeat(amountOfPellets)
	{
		with instance_create(x,y,Bullet5)
		{
			alarm[0] = 5;
			motion_add(random(360),14)//12 + ran(6)
			image_angle = direction
			team = other.team
		}
	}
}


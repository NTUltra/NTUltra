if other.team != team
{
	instance_destroy()
	Sleep(50)
	with instance_create(x,y,BulletHit)
	{
		if other.team == 2
			sprite_index = sprFlakHit;
		else
			sprite_index = sprEFlakHit;
	}
	with other
	{
		var dealDamage = true;
		if object_index == Player
		{
			hitBy = other.sprite_index;	
			if sprite_index != spr_hurt
				dealDamage = true;
		}
		if dealDamage
		{
			snd_play(snd_hurt, hurt_pitch_variation,true)
			DealDamage(other.dmg);
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.direction,6);	
		}
	
	}
}


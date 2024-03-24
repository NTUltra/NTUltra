if other.team != team and other.my_health > 0
{instance_destroy()

	with other
	{
		var dealDmg = false;
		if object_index == Player
		{
		    if sprite_index != spr_hurt
		    {
				hitBy = other.sprite_index;
				dealDmg = true;
		    }
		}
		else
		{
			dealDmg = true;
		}
		if (dealDmg)
		{
			DealDamage(other.dmg)
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.direction,8)
			snd_play(snd_hurt, hurt_pitch_variation,true)
		}
	}
	instance_create(x,y,EBulletHit)
}




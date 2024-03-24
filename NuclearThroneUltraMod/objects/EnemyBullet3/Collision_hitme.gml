if other.team != team and other.my_health > 0 && image_index < 3
{
	instance_destroy()
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
			snd_play(snd_hurt, hurt_pitch_variation)
			DealDamage(other.dmg)
		    sprite_index = spr_hurt
		    image_index = 0
		    motion_add(other.direction,3)	
		}
	}
	with instance_create(x,y,BulletHit)
		sprite_index = sprBullet2Disappear
}


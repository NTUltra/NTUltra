/// @description Damage
if other.team != team and other.my_health > 0
{
	instance_destroy()
	with other
	{
		if object_index == Player
		{
			if sprite_index != spr_hurt
			{
				hitBy = other.sprite_index;
				DealDamage(other.dmg)
				sprite_index = spr_hurt
				image_index = 0
				Sleep(20);
				motion_add(other.direction,6)
			}
		}
		else
		{
			snd_play(snd_hurt, hurt_pitch_variation,true)
			DealDamage(other.dmg);
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.direction,6)
			scrForcePosition60fps();
			if speed > maxSpeed+1
				speed = maxSpeed+1;
		}
	}
	with instance_create(x,y,BulletHit)
	{
		sprite_index = other.hitSprite;	
	}
}




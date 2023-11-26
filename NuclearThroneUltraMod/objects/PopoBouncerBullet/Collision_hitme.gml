/// @description Different hit
if other.team != team and other.my_health > 0
{
	instance_destroy()
	with other
	{
		if sprite_index != spr_hurt
		{
			my_health -= other.dmg;
			sprite_index = spr_hurt
			image_index = 0
			snd_play(snd_hurt, hurt_pitch_variation,true)
			motion_add(other.direction,4)
			if object_index == Player
			{
				hitBy = other.sprite_index;	
			}
		}
	}
	with instance_create(x,y,BulletHit)
		sprite_index=sprIDPDBulletHit

}



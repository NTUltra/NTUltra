/// @description Damage
if other.team != team and other.my_health > 0
{
	instance_destroy()
	with other
	{
		if object_index == Player
		{
			if sprite_index != spr_hurt && !collision_line(x,y,other.x,other.y,Wall,false,false)
			{
				hitBy = other.sprite_index;
				DealDamage(other.dmg)
				sprite_index = spr_hurt
				image_index = 0
				Sleep(30);
				motion_add(other.direction,6)
				snd_play(snd_hurt, hurt_pitch_variation,true)
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
}




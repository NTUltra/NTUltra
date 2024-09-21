if time >= 1 && other.team != team && other.my_health > 0
{
	BackCont.shake += 1
	var is60fps = UberCont.normalGameSpeed == 60
	if is60fps
		dmg = max(dmg-1,1);
	else
		dmg = max(dmg-2,1);
	with other
	{
		if object_index == Player
		{
			if sprite_index != spr_hurt
			{
				DealDamage(4, true)
				sprite_index = spr_hurt
				image_index = 0
				motion_add(other.direction,6)
				snd_play(snd_hurt, hurt_pitch_variation,true)
				hitBy = other.sprite_index;
			}
		}
		else
		{
			if is60fps
				DealDamage(other.dmg * 0.5, true)
			else
				DealDamage(other.dmg, true)
			if sprite_index != spr_hurt
				snd_play(snd_hurt, hurt_pitch_variation,true)
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.direction,6)
		}
	}
}

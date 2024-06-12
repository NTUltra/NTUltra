if other.team != team and other.my_health > 0
{
	BackCont.shake += 1
	Sleep(5);
	var is60fps = UberCont.normalGameSpeed == 60
	if is60fps
		dmg = max(dmg-0.5,7);
	else
		dmg = max(dmg-1,7);
	with other
	{
		if object_index == Player
		{
			if sprite_index != spr_hurt
			{
				if is60fps
				DealDamage(other.dmg * 0.5, true)
				else
					DealDamage(other.dmg, true)
				sprite_index = spr_hurt
				image_index = 0
				motion_add(other.direction,4)
				snd_play(snd_hurt, hurt_pitch_variation,true)
				hitBy = other.sprite_index;
			}
		}
		else
		{
			if is60fps
				DealDamage(other.dmg * 0.5, true);
			else
				DealDamage(other.dmg, true);
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.direction,4)
			snd_play(snd_hurt, hurt_pitch_variation,true)
		}
	}
}

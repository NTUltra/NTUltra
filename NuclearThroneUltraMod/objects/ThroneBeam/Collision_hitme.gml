if other.team != team and other.my_health > 0 && alarm[3] < 1
{
	with other
	{
		if sprite_index != spr_hurt
		{
			if object_index == Player
			{
				if alarm[3] > 0//When immune dont deal damage and dont trigger blast armour
					exit;
				hitBy = sprNothingBeamStop;
				if other.sprite_index == sprInvertedNothingBeam
					hitBy = sprInvertedNothingBeamStop;
			}
			DealDamage(other.dmg)
			other.alarm[3] = 5;
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.image_angle-90,8)
			snd_play(snd_hurt, hurt_pitch_variation,true)
			instance_create(x,y,Smoke)
		}
	}
}
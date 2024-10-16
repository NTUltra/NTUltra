if other.team != team && other.my_health > 0 && other.team != 2
{
	if alarm[4] < 1
	{
		speed *= 0.75;
		speed -= 0.5;
		with other
		{
			snd_play(snd_hurt, hurt_pitch_variation,true)
			sprite_index = spr_hurt
			image_index = 0
			DealDamage(other.dmg);
			motion_add(other.direction,2)
		}
		alarm[4] = 10;
	}
}
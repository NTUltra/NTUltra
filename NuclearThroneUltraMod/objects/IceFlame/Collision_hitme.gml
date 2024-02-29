if other.team != team and other.team != 2 and other.my_health > 0
{
	if other.sprite_index != other.spr_hurt
	{
		with other
		{
			DealDamage(other.dmg)
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.direction,0.5)

			//freeze bitch!
			scrFreezeTarget(other.freezetime);
			snd_play(snd_hurt, hurt_pitch_variation,true)
		}
	}
	else if other.team != 2
	{
		with other
			scrIframeSkipper(0.03);
	}
	x += (other.x-x)*0.2+random(6)-3
	y += (other.y-y)*0.2+random(6)-3
	speed *= 0.8
}


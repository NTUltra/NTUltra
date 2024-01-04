if other.team != team and other.my_health > 0
{
	with other
	{
		if sprite_index!=spr_hurt
		{
			my_health -= other.dmg
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.image_angle+90,8)
			snd_play(snd_hurt, hurt_pitch_variation,true)
			instance_create(x,y,Smoke)
		}
	}
}
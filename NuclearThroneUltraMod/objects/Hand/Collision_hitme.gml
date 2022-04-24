if other.team != team  &&  other.my_health > 0
{
	if !instance_exists(target) || other.id != target.id
	{
		with other
		{
			snd_play(snd_hurt, hurt_pitch_variation,true)
			my_health -= other.dmg
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.image_angle,6)
		}
		instance_create(x,y,Dust)
		BackCont.shake += 1;
	}
}


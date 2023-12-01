if other.team != team  &&  other.my_health > 0
{
	if !instance_exists(target) || other.id != target.id
	{
		with other
		{
			if sprite_index != spr_hurt
			{
				snd_play(snd_hurt, hurt_pitch_variation,true)
				sprite_index = spr_hurt
				image_index = 0
			}
			if UberCont.normalGameSpeed == 60
				my_health -= other.dmg;
			else
				my_health -= other.dmg;
			motion_add(other.image_angle,6)
		}
		instance_create(x,y,Dust)
		BackCont.shake += 1;
	}
}


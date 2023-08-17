if other.team != team && other.my_health > 0
{
	with other
	{
		if (morphMe != 10){
		    if sprite_index != spr_hurt
				snd_play(snd_hurt, hurt_pitch_variation,true)
		    if UberCont.normalGameSpeed == 60
				my_health -= other.dmg * 0.5;
			else
				my_health -= other.dmg
			if my_health <= 0
			{
				morphMe = other.morphType;
			}
		    sprite_index = spr_hurt
		    image_index = 0
		    BackCont.shake += 0.3
		}
	}
}


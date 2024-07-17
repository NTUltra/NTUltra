if other.team != 2 && alarm[0] > 2
{
	with other
	{
		//if (morphMe != 10) {
			if (my_health > 0)
			{
			    if sprite_index != spr_hurt
					snd_play(snd_hurt, hurt_pitch_variation,true)
			    if UberCont.normalGameSpeed == 60
					DealDamage(other.dmg * 0.5, true);
				else
					DealDamage(other.dmg, true);
				
				sprite_index = spr_hurt
				image_index = 0
				if BackCont.shake < 6*UberCont.opt_shake
				 BackCont.shake += 0.4
			}
			morphMe = other.morphType;
		//}
	}
}


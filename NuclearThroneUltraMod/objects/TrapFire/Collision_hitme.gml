if other.team != team and other.team != 0 && (other.team!=2 || image_index<5/*not player or before this frame*/)
{
	with other
	{
		var immunelimit = 5;
		var immune;
		immune = 0
		if object_index=Player//optimise variable_local_exists("skill_got")
		{
			if skill_got[14] = 1
			{
				immune = 1

				if race=25
					immunelimit=6;
			
				if ultra_got[97]//Mutation Doctor Ultra A
					immunelimit=8;
			
			}
		}
		if sprite_index != spr_hurt && !other.dealtDamage
		{
			if immune = 1
			{
				if my_health > immunelimit
				{
					snd_play(snd_hurt, hurt_pitch_variation)
					if my_health-2 < immunelimit
						my_health = immunelimit
					else
					{
						sprite_index = spr_hurt
						image_index = 0
						Sleep(10)
						BackCont.shake += 3
						my_health -= 2
					}
				}
			}
			else
			{
				sprite_index = spr_hurt
				image_index = 0
				Sleep(10)
				BackCont.shake += 3
				snd_play(snd_hurt, hurt_pitch_variation)
				my_health -= 2
			}
		}
	}
	other.dealtDamage = true;
}
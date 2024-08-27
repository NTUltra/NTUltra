if other.team != team and other.team != 0 && (other.team!=2 || image_index<5/*not player or before this frame*/)
{
	with other
	{
		var immunelimit = 4;
		var immune;
		immune = 0
		if object_index=Player || object_index == YungCuzDupe//optimise variable_local_exists("skill_got")
		{
			if Player.skill_got[14] = 1
			{
				immune = 1

				if Player.race=25
					immunelimit = 5;
			
				if Player.ultra_got[97] && !altUltra//Mutation Doctor Ultra A
					immunelimit = 999;
			
			}
		}
		if sprite_index != spr_hurt
		{
			if immune = 1
			{
				if object_index == Player
				{
					boilingAmount = boilingMax;
					if alarm[4] < 1
						alarm[4] = 1;
				}
				if my_health > immunelimit
				{
					snd_play(snd_hurt, hurt_pitch_variation)
					Sleep(10)
					var d = other.dmg;
					if object_index == Player
					{
						if scrIsCrown(18)
							d *= 2;
						hitBy = other.sprite_index;
					}
					if my_health - d < immunelimit
					{
						my_health = immunelimit
						if object_index == Player
							greedException = true;
					}
					else
					{
						sprite_index = spr_hurt
						image_index = 0
						Sleep(10)
						BackCont.shake += 3
						DealDamage(other.dmg)
					}
				}
			}
			else
			{
				sprite_index = spr_hurt
				if object_index == Player
					hitBy = other.sprite_index;
				image_index = 0
				Sleep(10)
				BackCont.shake += 3
				snd_play(snd_hurt, hurt_pitch_variation)
				DealDamage(other.dmg);
			}
		}
	}
	image_index = max(5,image_index);
}
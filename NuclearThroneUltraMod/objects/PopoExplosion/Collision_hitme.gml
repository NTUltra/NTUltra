if other.team != team
{
	with other
	{
		if (object_index != Player || sprite_index != spr_hurt)
		{
			var immune;
			immune = 0
			if object_index=Player//optimise variable_local_exists("skill_got")
			{
				if skill_got[14] = 1
				{
					Sleep(5)
					BackCont.shake += 2
					immune = 1
					var immunelimit = 5;
					if Player.race=25//Mutation smith
						immunelimit=6;

					if Player.ultra_got[97]//Mutation Doctor Ultra A
						immunelimit=8;
					
					if immunelimit > Player.maxhealth
						immunelimit = Player.maxhealth;
				}
			}
			if immune = 1
			{
				alarm[4]=50;
				if my_health > immunelimit
				{
				if my_health-other.dmg < immunelimit
				my_health = immunelimit
				else
				my_health -= other.dmg
				}
			}
			else
			{
				snd_play(snd_hurt, hurt_pitch_variation)
				my_health -= other.dmg
				sprite_index = spr_hurt
				image_index = 0
				motion_add(point_direction(other.x,other.y,x,y),6)
				Sleep(5)
				BackCont.shake += 2
			}
		}
	}
}


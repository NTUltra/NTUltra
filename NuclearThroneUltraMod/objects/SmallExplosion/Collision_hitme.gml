if other.team != team
{
with other
{
	var immune;
	immune = 0
	if object_index=Player
	{
		if skill_got[14] = 1{
			immune = 1

			var immunelimit = 5;
			if Player.race=25//Mutation smith
				immunelimit=6;

			if Player.ultra_got[97]//Mutation Doctor Ultra A
				immunelimit=8;
					
			if immunelimit > Player.maxhealth
				immunelimit = Player.maxhealth;
		}
		if UberCont.opt_gamemode == 9
			other.dmg = 3;
	}

		if (sprite_index != spr_hurt)
		{

			if immune = 1
			{
				snd_play(snd_hurt, hurt_pitch_variation)
				alarm[4]=50;
				if my_health > immunelimit
				{
					if my_health-other.dmg < immunelimit
						my_health = immunelimit
					else
						my_health -= other.dmg
				}
			}
			else if instance_exists(Player)
			my_health -= other.dmg+Player.ultra_got[57]*other.dmg//atom ultra
			else
			my_health-=other.dmg;

			sprite_index = spr_hurt
			image_index = 0
			motion_add(point_direction(other.x,other.y,x,y),6)
			Sleep(1)
			BackCont.shake += 1
		}
	}
}


if other.team!=2//other.team != team  &&
{
	with other
	{

		snd_play(snd_hurt, hurt_pitch_variation)
		my_health -= 11
		sprite_index = spr_hurt
		image_index = 0
		motion_add(point_direction(other.x,other.y,x,y),6)
		Sleep(5)
		BackCont.shake += 2
	}
}
else if other.team = 2 && instance_exists(Player) && other.team != team
{
	with other
	{
		var immune;
		immune = 0
			if Player.skill_got[14] = 1{
				immune = 1
				var immunelimit = 5;
				if Player.race=25//Mutation smith
					immunelimit=6;

				if Player.ultra_got[97]//Mutation Doctor Ultra A
					immunelimit=8;
					
			}


		if !(sprite_index = spr_hurt and immune = 1)
		{
			snd_play(snd_hurt, hurt_pitch_variation)

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
				my_health-=other.dmg;

			sprite_index = spr_hurt
			image_index = 0
			motion_add(point_direction(other.x,other.y,x,y),6)
			Sleep(4)
			BackCont.shake += 2
		}
	}
}



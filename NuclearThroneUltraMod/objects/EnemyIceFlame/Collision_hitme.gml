if other.team != team && (image_index<5)
{
	image_index = max(5,image_index);
	with other
	{
		if sprite_index != spr_hurt && !other.dealtDamage
		{
			if (object_index == Player) && frozen < 1
			{
				var immunelimit = 0;
				if Player.skill_got[14] = 1
				{
					immunelimit = 4;
					boilingAmount = boilingMax;
					if alarm[4] < 1
						alarm[4] = 1;
					if race=25
						immunelimit = 5;
					if ultra_got[97] && !altUltra//Mutation Doctor Ultra A
						immunelimit = 999;
						
				}
				if Player.ultra_got[62] && Player.altUltra && Player.armour > immunelimit//Living armour
				{
					if Player.armour-1 < immunelimit
						Player.armour = immunelimit
					else
					{
						Player.armour -= 1;
						other.dealtDamage = true;
						snd_play(snd_hurt, hurt_pitch_variation)
						instance_create(x,y,FrozenPlayer);
						frozen=10;
						getFrozen=0;
						sprite_index = spr_hurt
						image_index = 0
					}
				}
				else if my_health > immunelimit
				{
					if my_health-2 < immunelimit
						my_health = immunelimit
					else
					{
						DealDamage(2)
						other.dealtDamage = true;
						snd_play(snd_hurt, hurt_pitch_variation)
						instance_create(x,y,FrozenPlayer);
						frozen=10;
						getFrozen=0;
						sprite_index = spr_hurt
						image_index = 0
					}
				}
			}
			else
			{
				if object_index == YungCuzDupe && instance_exists(YungCuzDupe){
					var immunelimit = 0;
					if Player.skill_got[14] = 1
					{
						immunelimit = 4;
						if object_index == Player
						{
							boilingAmount = boilingMax;
							if alarm[4] < 1
								alarm[4] = 1;
						}
						if Player.race=25
							immunelimit = 5;
						if Player.ultra_got[97] && !Player.altUltra//Mutation Doctor Ultra A
							immunelimit = 999;
						
					}
					if Player.ultra_got[62] && Player.altUltra && Player.armour > immunelimit//Living armour
					{
						if Player.armour-1 < immunelimit
							Player.armour = immunelimit
						else
						{
							Player.armour -= 1;
							other.dealtDamage = true;
							snd_play(snd_hurt, hurt_pitch_variation)
							sprite_index = spr_hurt
							image_index = 0
							scrFreezeTarget(5,0);
						}
					}
					else if my_health > immunelimit
					{
						if my_health-2 < immunelimit
							my_health = immunelimit
						else
						{
							DealDamage(2)
							other.dealtDamage = true;
							snd_play(snd_hurt, hurt_pitch_variation)
							sprite_index = spr_hurt
							image_index = 0
							scrFreezeTarget(5,0);
						}
					}
				}
			}
		}
	}
}

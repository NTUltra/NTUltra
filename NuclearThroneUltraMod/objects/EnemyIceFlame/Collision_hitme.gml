if other.team != team && (image_index<5)
{
	with other
	{
		if sprite_index != spr_hurt && !other.dealtDamage
		{
			if object_index == Player && frozen < 1
			{
				var immunelimit = 0;
				if skill_got[14] = 1
				{
					immunelimit = 5;

					if race=25
						immunelimit=6;
			
					if immunelimit > maxhealth
						immunelimit = maxhealth;
						
				}
				if ultra_got[62] && altUltra && armour > immunelimit//Living armour
				{
					if armour-1 < immunelimit
						armour = immunelimit
					else
					{
						armour -= 1;
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
						my_health -= 2
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
		}
	}
}

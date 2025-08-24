if instance_exists(Player)
{
	if Player.ultra_got[6] && !Player.altUltra{
		Player.x = x;
		Player.y = y;
	}
	if (sprite_index != spr_disappear || image_index < image_number - 3)
	{
		with Player
		{
			if ultra_got[8]
			{
				//immune
				alarm[3] = max(alarm[3],1);
				meleeimmunity = max(meleeimmunity,2);
			}
			if altUltra && ultra_got[6]
			{
				meleeimmunity = max(meleeimmunity,4);
			}
		}
	}
}
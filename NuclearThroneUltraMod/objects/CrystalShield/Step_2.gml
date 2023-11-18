
if (sprite_index != spr_disappear || image_number < 5)
{
	if Player.ultra_got[6]=1 && !Player.altUltra{
		Player.x = x;
		Player.y = y;
	}

	with Player
	{
		if ultra_got[8] == 1
		{
			//immune
			alarm[3] = max(alarm[3],2);
			meleeimmunity = max(meleeimmunity,2);
		}
	}
}
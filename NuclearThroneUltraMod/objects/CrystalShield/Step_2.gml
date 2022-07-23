if Player.ultra_got[6]=1 && !Player.altUltra{
Player.x = x;
Player.y = y;
}

with Player
{
	if ultra_got[8] == 1
	{
		//immune
		alarm[3] = max(alarm[3],10);
		meleeimmunity = max(meleeimmunity,10);
	}
}


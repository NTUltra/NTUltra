///xxx();
// /@description
///@param
function scrSpawnSomeEnemies(){
	if scrIsGamemode(9) //easy mode
    {
        if random(2.5) < 1 || !instance_exists(enemy)
			scrPopEnemies()
		else if Player.loops > 0 && random(6) < Player.loops
			scrPopEnemies()
    } else
        scrPopEnemies()
				
	//spawn some more enemies on loop
	if Player.loops > 0 && random(1.75) < Player.loops
		scrPopEnemies();
					
	if Player.loops > 3 && random(15) < Player.loops - 5
		scrPopEnemies();
					
	if Player.loops > 9 && random(15) < Player.loops - 12
		scrPopEnemies();
				
	if scrIsHardMode() && !scrIsGamemode(40) && spawnarea != 100 && spawnarea != 104 && spawnarea != 137
	{
		if (!(spawnarea == 7 && subarea == 3) && !(spawnarea == 118 && subarea == 3) || random(3) < 1 + Player.loops)
		{
			var ran = random(110 - min(40,Player.loops * 2));
			if ran < 10
			{
				scrPopEnemies();
			}
			else if ran < 15
			{
				instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, UltraBandit);
			}
			else if Player.loops > 1 && ran > 45 && ran < 55
			{
				instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, UltraProtector);
			}
			else if spawnarea != 1  && spawnarea != 105 && spawnarea != 100//Not desert not crownvault
			{
				if ran < 18
				{
					instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, UltraBandit);
				}
				else if spawnarea != 10 && spawnarea != 121 && spawnarea != 101 && spawnarea != 122 && spawnarea != 102 && spawnarea != 140//Not savanna oasis pizza sewers no pit
				{
					if ran < 23
					{
						instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, UltraSniper);
					}
					else if spawnarea != 2  && spawnarea != 110 && spawnarea != 3 && spawnarea != 106 && spawnarea != 139 && spawnarea != 142 && spawnarea != 143//no sewers & no scrap no inv cloud
					{
						if ran < 30
						{
							instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, UltraCrystal);
						}
						else if spawnarea != 6 && spawnarea != 112 && spawnarea != 117 && spawnarea != 124 && spawnarea != 7 && spawnarea != 108 && spawnarea != 146 && spawnarea != 147
						{
							//Not mushroom vulcano or labs
							if ran < 35
							{
								instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, UltraDiscGuy);
							}
							else if ran < 45
							{
								instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, UltraProtector);
							}
								//else if spawnarea != 5 && spawnarea != 107 && spawnarea != 114 && spawnarea != 123 && spawnarea != 108 && spawnarea != 109
							//{
								//Not jungle not frozen city not wonderland
							//}
						}
					}
				}
				else if ran < 24
				{
					instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, UltraProtector);
				}
			}
		}
	}
}
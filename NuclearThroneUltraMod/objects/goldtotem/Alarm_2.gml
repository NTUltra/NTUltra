/// @description Side waves
alarm[2] = actTime;
if instance_exists(Player) && !instance_exists(InvertedThrone2WaveSquareBullet) && !Player.justAsheep
{
	if point_distance(x,y,Player.x,Player.y) > 96 && abs(Player.x - x) > 48
	{
		var numEn = -3;//Leaway
		with enemy
		{
			if team != 2
				numEn ++;
		}
		//Level nearly ended?
		if !(numEn <= 0 || (instance_exists(IDPDVan) && numEn <= instance_number(IDPDVan)))
		{
			var loops = Player.loops;
			var am = 12;
			var vdis = 100 - clamp(loops*5,0,30);
			var hdis = 256;
			var ad = 180;
			if Player.x > x
			{
				hdis *= -1;
				ad = 0;
			}
			
			var yy = Player.y - vdis*(am*0.5);
			var xx = x + hdis;
			repeat(am)
			{
				with instance_create(x,y,InvertedThrone2WaveSquareBullet)
				{
					onlyHitPlayerTeam = true;
					offset = 2;
					spawnDelay = 70 - clamp(loops*5,0,30);
					alarm[3] += 60;
					team = 1;
					desY = yy;
					desX = xx;
					aimDirection = ad;
				}
				yy += vdis;
			}
		}
	}
}
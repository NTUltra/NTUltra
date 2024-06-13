/// @description Vertical side waves
alarm[2] = 90;
if instance_exists(Player) && !instance_exists(InvertedThrone2WaveSquareBullet) && !Player.justAsheep
{
	if point_distance(x,y,Player.x,Player.y) > 96 && abs(Player.y - y) > 48
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
			var hdis = 100 - clamp(loops*5,0,30);
			var vdis = 256;
			var ad = 90;
			if Player.y > y
			{
				vdis *= -1;
				ad = 270;
			}
			
			var yy = y + vdis;
			var xx = Player.x - hdis*(am*0.5);
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
				xx += hdis;
			}
		}
	}
}
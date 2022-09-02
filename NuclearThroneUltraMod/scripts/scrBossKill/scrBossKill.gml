function scrBossKill() {
	if instance_exists(Player)
	{
		instance_create(x,y,WallBreak);
		instance_create(x+16,y+16,WallBreak);
		instance_create(x+16,y-16,WallBreak);
		instance_create(x-16,y+16,WallBreak);
		instance_create(x-16,y-16,WallBreak);

		if Player.race=20//Business hog
			instance_create(x,y,GoldChest);
			
		if Player.ultra_got[2]
		{
			if !instance_exists(GunWarrant)
				instance_create(x,y,GunWarrant);
			else
			{
				with GunWarrant
				{
					sprite_index = sprGunWarrantStart;
					image_index = 0;
				}
			}
			Player.alarm[2] += 210;
		}
		with Player
		{
			if ultra_got[61] && !altUltra
			{
				armour ++;
				if armour > maxarmour
					armour = maxarmour;
			}
		}

	}

}

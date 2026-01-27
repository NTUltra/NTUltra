function scrBossKill(shouldBreakWalls = true) {
	if instance_exists(Player)
	{
		if (shouldBreakWalls)
		{
			instance_create(x,y,WallBreakWallOnly);
			instance_create(x+16,y+16,WallBreakWallOnly);
			instance_create(x+16,y-16,WallBreakWallOnly);
			instance_create(x-16,y+16,WallBreakWallOnly);
			instance_create(x-16,y-16,WallBreakWallOnly);
		}
		var wx = x;
		var wy = y;
		if Player.ultra_got[77] && !Player.altUltra
		{
			if collision_point(x,y,Floor,false,false)
				instance_create(x,y,UltraChest);
			else
			{
				var n = instance_nearest(x,y,Floor);
				if n != noone
				{
					var o = 16;
					if n.object_index = FloorExplo
					{
						o = 8;
					}
					wx = n.x + o;
					wy = n.y + o;
				}
			}
			instance_create(wx,wy,UltraChest);
		}
		else if Player.race == 20//Business hog
		{
			if collision_point(x,y,Floor,false,false)
				instance_create(x,y,GoldChest);
			else
			{
				if collision_point(x,y,Floor,false,false)
					instance_create(x,y,UltraChest);
				else
				{
					var n = instance_nearest(x,y,Floor);
					if n != noone
					{
						var o = 16;
						if n.object_index = FloorExplo
						{
							o = 8;
						}
						wx = n.x + o;
						wy = n.y + o;
					}
				}
				instance_create(wx,wy,GoldChest);
			}
		}
			
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
			with Player
			{
				alarm[2] += 240;
			}
		}
		with Player
		{
			if scrIsCrown(44)
				UberCont.portalEssence += 1 * scrGetPortalEssenceBoost();
			if skill_got[7] {
				//Bloodlust
				snd_play_2d(sndBloodlustProc,0,true);
			    with instance_create(Player.x,Player.y-8,HealFX)
			    {
					sprite_index=sprBloodlust;
			    }
				num = 1
			    Player.my_health = max(Player.my_health,min(Player.my_health + num,Player.maxhealth));
    
				if UberCont.opt_ammoicon
				{
					dir = instance_create(x,y,PopupText)
					dir.sprt = sprHPIconPickup;
				    dir.mytext = "+"+string(num)
				    if Player.my_health = Player.maxhealth
				    dir.mytext = "MAX"
					else if Player.my_health > Player.maxhealth
					dir.mytext = "OVER MAX"
				}
				else
				{
				    dir = instance_create(x,y,PopupText)
				    dir.mytext = "+"+string(num)+" HP"
				    if Player.my_health = Player.maxhealth
				    dir.mytext = "MAX HP"
					else if Player.my_health > Player.maxhealth
					dir.mytext = "OVER MAX HP"
				}
			}
			if ultra_got[61] && !altUltra
			{
				armour ++;
				if armour > maxarmour
					armour = maxarmour;
			}
		}

	}

}

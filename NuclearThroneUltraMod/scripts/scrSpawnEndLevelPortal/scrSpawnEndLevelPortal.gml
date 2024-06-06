///scrSpawnEndLevelPortal();
// /@description
///@param
function scrSpawnEndLevelPortal(){
	if instance_exists(SurvivalWave) || instance_exists(ThroneExplo)
	exit;
	var dir = noone;
	var numEn = 0;
	with enemy
	{
		if team != 2
			numEn ++;
	}
	if numEn == 0 || (instance_exists(IDPDVan) && numEn == instance_number(IDPDVan))
	{
		if (!instance_exists(becomenemy) and 
		!instance_exists(Menu) and !instance_exists(RadMaggotChest) and !instance_exists(GenCont) and !instance_exists(LevCont) and !instance_exists(UltraIcon))
		{
			var portalExists = false;
			with Portal {
				if type != 3 && !inverted
					portalExists = true;
			}
			if !portalExists
			{
			    if !instance_exists(CrownPickup) && instance_exists(Floor)
			    {
					
					dir = instance_nearest(x-16,y-16,Floor)
					if dir != noone
					{
						if instance_exists(Player)
						{
							if Player.area == 119
							{
								if !scrIsGamemode(44)
								{
									instance_create(dir.x+16,dir.y+16,BecomeThrone2);
									scrTurnIntoPortalArea();
									exit;
								}
							}
							else if Player.area == 120
							{
								if !scrIsGamemode(44)
								{
									instance_create(dir.x+16,dir.y+16,BecomeInvertedThrone2);
									scrTurnIntoPortalArea(true);
									exit;
								}
							}
						}
						else
						{
							if BackCont.area == 119
							{
								instance_create(dir.x+16,dir.y+16,BecomeThrone2);
								scrTurnIntoPortalArea();
								exit;
							}
							else if BackCont.area == 120
							{
								instance_create(dir.x+16,dir.y+16,BecomeInvertedThrone2);
								scrTurnIntoPortalArea(true);
								exit;
							}
						}
						if instance_exists(Portal)
						{
							with Floor
							{
								var n = instance_nearest(x,y,Portal);
								if (n == noone || point_distance(x,y,n.x,n.y) > 64 && point_distance(x,y,other.x,other.y) < 256)
								{
									dir = id;
								}
							}
						}
					    with instance_create(dir.x+16,dir.y+16,Portal)
							type = 1
						
						//UNLOCK GAME MODE CLAUSTROFOBIA
						with Player
						{
							if seconds<11 && area != 100 && area != 135 && area != 104 && ( my_health>0 || bleed>0 )
								scrUnlockGameMode(6,"FOR COMPLETING A LEVEL#IN UNDER 10 SECONDS")
						}
						with UltraChest
						{
							instance_destroy();
							scrRaddrop(50);
						}
					    instance_create(dir.x+16,dir.y+16,WallBreak);
        
					    Sleep(50)
					}
			    }
			}//can only spawn 1 portal in inverted worlds
			else if !scrIsInInvertedArea()
			{
			    with Portal
			    {
					if inverted == false && type = 1
					{
						other.canspawnportal=false;
					}
			    }
        
			    if canspawnportal && instance_exists(Floor)
			    {
					if instance_exists(Portal)
					{
						dir = instance_furthest(Portal.x,Portal.y,Floor);
						with Floor
						{
							if object_index != FloorExplo
							{
								var n = instance_nearest(x,y,Portal);
								if n != noone && point_distance(n.x,n.y,x+16,y+16) > 128 {
									dir = id;
								}
							}
						}
					}
					else
					{
						dir = instance_nearest(x-16,y-16,Floor);
					}
				    with instance_create(dir.x+16,dir.y+16,Portal)
						type = 1
					with UltraChest
					{
						instance_destroy();
						scrRaddrop(50);
					}
					//UNLOCK GAME MODE CLAUSTROFOBIA
					with Player
					{
						if seconds<11 && area != 100 && area != 135 && area != 104 && ( my_health>0 || bleed>0 )
							scrUnlockGameMode(6,"FOR COMPLETING AN AREA#IN UNDER 10 SECONDS")
					}
        
				    instance_create(dir.x+16,dir.y+16,WallBreak);
        
				    Sleep(50)
					with Corpse
						canspawnportal = false;
			    }
			}
		}
	}
}
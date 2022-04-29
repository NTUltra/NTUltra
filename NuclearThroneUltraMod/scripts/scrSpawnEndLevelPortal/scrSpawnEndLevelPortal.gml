///scrSpawnEndLevelPortal();
// /@description
///@param
function scrSpawnEndLevelPortal(){
	if instance_exists(SurvivalWave) || instance_exists(ThroneExplo)
	exit;
	var dir = undefined;
	if instance_number(enemy) == (instance_number(IDPDVan))
	{
		if instance_number(becomenemy) = 0 and !instance_exists(Menu) and !instance_exists(RadMaggotChest) and !instance_exists(BecomeScrapBoss) and !instance_exists(BecomeJungleBoss) and !instance_exists(GenCont) and !instance_exists(LevCont) and !instance_exists(UltraIcon)
		{
			if instance_exists(Player)
			{
			    if !instance_exists(Portal)
			    {
			        if !instance_exists(CrownPickup) && instance_exists(Floor)
			        {
						if instance_exists(Portal)
						{
							dir = instance_furthest(Portal.x,Portal.y,Floor);
						}
						else
						{
							dir = instance_nearest(x-16,y-16,Floor)
						}
						if dir != undefined
						{
					        with instance_create(dir.x+16,dir.y+16,Portal)
								type = 1
						
							//UNLOCK GAME MODE CLAUSTROFOBIA
							with Player
							{
								if seconds<11 && ( my_health>0 || bleed>0 )
									scrUnlockGameMode(6,"FOR COMPLETING A LEVEL#IN UNDER 10 SECONDS")
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
						if inverted=false
						{other.canspawnportal=false;}
			        }
        
			        if Portal.inverted=true&&canspawnportal=true && instance_exists(Floor)
			        {
						if instance_exists(Portal)
						{
							dir = instance_furthest(Portal.x,Portal.y,Floor);
						}
						else
						{
							dir = instance_nearest(x-16,y-16,Floor);
						}
				        with instance_create(dir.x+16,dir.y+16,Portal)
							type = 1
						
						//UNLOCK GAME MODE CLAUSTROFOBIA
						with Player
						{
							if seconds<11 && ( my_health>0 || bleed>0 )
								scrUnlockGameMode(6,"FOR COMPLETING A LEVEL#IN UNDER 10 SECONDS")
						}
        
				        instance_create(dir.x+16,dir.y+16,WallBreak);
        
				        Sleep(50)
							with Corpse
								canspawnportal=false;
			        }
			    }
			}
		    else if !instance_exists(Portal) && instance_exists(Floor)
		    {
		        if !instance_exists(CrownPickup)
		        {
					if instance_exists(Portal)
					{
						dir = instance_furthest(Portal.x,Portal.y,Floor);
					}
					else
					{
						dir = instance_nearest(x-16,y-16,Floor);
					}
			        with instance_create(dir.x+16,dir.y+16,Portal)
			        type = 1
					
					//UNLOCK GAME MODE CLAUSTROFOBIA
					with Player
					{
						if seconds<11&&!instance_exists(MenuGen) &&!instance_exists(Menu) && ( my_health>0 || bleed>0 )
							scrUnlockGameMode(6,"FOR COMPLETING A LEVEL#IN UNDER 10 SECONDS")
					}
        
			        instance_create(dir.x+16,dir.y+16,WallBreak);
        
			        Sleep(50)
		        }
		    }
		}
	}
}
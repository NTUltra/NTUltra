/// @description Decide boss and spawn
x = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )*0.5
y = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )*0.5
alarm[1] = 0;
if instance_exists(Player)
{
	target = Player;	
}
if target != noone && instance_exists(target)
{
	if !instance_exists(WallHitMe)
	{
		with Floor
		{
			if (collision_line(x,y,other.target.x,other.target.y,WallHitMe,true,true) < 0 and point_distance(x,y,other.target.x,other.target.y) > 110 
			and point_distance(x,y,other.target.x,other.target.y) < 180 and ((!place_free(x-16,y) and !place_free(x+16,y)) or (!place_free(x,y+16) and !place_free(x,y-16)))) || other.tries > 20
			{
				instance_create(x,y,CanSpawnBoss)
			}
		}
	}
	else
	{
		with WallHitMe
		{
			if (collision_line(x,y,other.target.x,other.target.y,WallHitMe,true,true) < 0 and point_distance(x,y,other.target.x,other.target.y) > 110 
			and point_distance(x,y,other.target.x,other.target.y) < 180 and ((!place_free(x-16,y) and !place_free(x+16,y)) or (!place_free(x,y+16) and !place_free(x,y-16)))) || other.tries > 20
			{
				instance_create(x,y,CanSpawnBoss)
			}
		}
	}
	if instance_exists(CanSpawnBoss)
	{
		with instance_nearest(target.x,target.y,CanSpawnBoss)
		{
			if other.area == 103 && instance_exists(Player) && Player.loops > 4
			{
				if Player.loops % 2 == 1
					instance_create(x,y,BigBadBat);
				else
					instance_create(x,y,InvertedBigBadBat);
			}
			else if other.area==4
			{
				instance_create(x,y,BigBadBat);
			}
			else if other.area== 9 && other.subarea == 2
			{
				instance_create(x,y,WallCrawler);
			}
			else if other.area== 118 && other.subarea == 2
			{
				instance_create(x,y,InvertedWallCrawler);
			}
			else if other.area==111
			{
				instance_create(x,y,InvertedBigBadBat);
			}
			else if other.area == 10
			{
				instance_create(x,y,BigVulture);
			}
			else if other.area == 121
			{
				instance_create(x,y,InvertedBigVulture);
			}
			else if other.area=105 && other.subarea == 3
			{
				instance_create(x,y,InvertedBanditBoss)
			}
			else if other.area=105
			{
				if other.oasis
				{
					with instance_create(x,y,InvertedBanditBoss)
				    {oasis=true;}
				}
				else
				{
					instance_create(x,y,InvertedSandWorm)
				}
			}
			else if other.area == 128
			{
				instance_create(x,y,CrownGlutton);
			}
			else if other.area == 129
			{
				instance_create(x,y,InvertedCrownGlutton);
			}
			else if scrIsGamemode(44) && other.area == 120
			{
				var n = instance_nearest(x,y,Corpse);
				if n != noone
				{
					x = n.x;
					y = n.y;
				}
				with instance_create(x+16,y+16,InvertedBigBadBat) {
					my_health *= 2;	
				}
				repeat(1 + min(6,BackCont.loops))
				{
					instance_create(x+16,y+16, InvertedExploGuardian);
				}
				scrTurnIntoPortalArea(true);
			}
			else if scrIsGamemode(44) && other.area == 119
			{
				var n = instance_nearest(x,y,Corpse);
				if n != noone
				{
					x = n.x;
					y = n.y;
				}
				instance_create(x+16,y+16,UltraBigDog);
				repeat(1 + min(6,BackCont.loops))
				{
					instance_create(x+16,y+16, PalaceGuardian);
				}
				scrTurnIntoPortalArea();
			}
			else
			{
			    if other.area=3 && other.loops>0 && instance_exists(Floor)//scrapyard
			    {
					if scrIsGamemode(44)
					{
						with instance_nearest(instance_furthest(x+random(120)-60,y+random(120)-60,Floor),instance_furthest(x+random(120)-60,y+random(120)-60,Floor),Floor)
							instance_create(x+16,y+16,GoldenBossBot);
					}
					else
					{
						with instance_nearest(instance_furthest(x+random(120)-60,y+random(120)-60,Floor),instance_furthest(x+random(120)-60,y+random(120)-60,Floor),Floor)
							instance_create(x+16,y+16,AssassinBoss);
					}
			    }
			    else if other.area=106 && other.loops>0 && instance_exists(Floor)//inverted scrapyard
			    {
					with instance_nearest(instance_furthest(x+random(120)-60,y+random(120)-60,Floor),instance_furthest(x+random(120)-60,y+random(120)-60,Floor),Floor)
						instance_create(x+16,y+16,InvertedAssassinBoss);
			    }
			    else if other.area=101||other.area=2
				{
					if scrIsGamemode(44)
						instance_create(x,y,BanditBoss);
					else
						instance_create(x,y,BigFish);//oasis
				}
				else if other.area == 122 || other.area == 110
					instance_create(x,y,InvertedBigFish);
			    else if other.oasis=true
			    {
				    with instance_create(x,y,BanditBoss)
				    {oasis=true;}
			    }
				else if other.area == 1 && other.subarea == 2
				{
					instance_create(x,y,SandWorm)
				}
			    else if other.area = 1
				{
					if scrIsGamemode(44)
						instance_create(x,y,BecomeInvertedGraveyardFish);
					else
						instance_create(x,y,BanditBoss);
				}
				else if other.area == 126
					instance_create(x,y,BecomeGraveyardFish);
				else if other.area == 127
					instance_create(x,y,BecomeInvertedGraveyardFish);
				else if other.area == 130
					instance_create(x,y,BossBot);
				else if other.area == 131
					instance_create(x,y,InvertedBossBot);
				else if other.area == 132
					instance_create(x,y,CursedBossBot);
				else if other.area == 133
					instance_create(x,y,GoldenBossBot);
				else if other.area == 134
					instance_create(x,y,UltraBossBot);
			}

		}
		with CanSpawnBoss
			instance_destroy()
	
		var a = 1;
		with WantBoss
		{
			if alarm[0] < 60
				alarm[0]+=15*a;
			a++;
		}
		instance_destroy()
	}
}
tries++;
alarm[0] = 5


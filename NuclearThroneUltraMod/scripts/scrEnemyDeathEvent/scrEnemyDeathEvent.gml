///xxx();

// /@description
///@param
function scrEnemyDeathEvent(isSheep = false){
	if scrIsGamemode(9)//easy mode
	{
		raddrop*=1.2;
	}
	scrCrownOfFright();
	if instance_exists(Player)
	{
		//PLANT ULTRA B KILLER
		if Player.ultra_got[18] == 1 && !Player.altUltra
		{
			var didSapling = false;
			with Tangle {
				var xScale = image_xscale;
				var yScale = image_yscale;
				image_xscale *= 2.5;
				image_yscale *= 2.5;
				if place_meeting(x,y,other.id)
				{
					didSapling = true;
					instance_create(other.x,other.y,Sapling);
				}
				image_xscale = xScale;
				image_yscale = yScale;
			}
			if !didSapling && instance_exists(TangleSeed)
			{
				var n = instance_nearest(x,y,TangleSeed);
				if n != noone && point_distance(x,y,n.x,n.y) < 48
				{
					instance_create(x,y,Sapling);
				}
			}
			if !didSapling && instance_exists(Tangle)
			{
				var n = instance_nearest(x,y,Tangle);
				if n != noone && point_distance(x,y,n.x,n.y) < 64
				{
					instance_create(x,y,Sapling);
				}
			}
		}
		scrLuckyShot();
		BloodLust();
		ApexPredator();
		var isdoc = Player.race == 25;
		with Player
		{
			if ultra_got[0] && altUltra
			{
				cash = min(cash + 2,maxCash);
			}
			/*
			if skill_got[34] //FLEXIBLE ELBOWS
			{
				var lowb = 0;
				var lowc = 0;
				if skill_got[35]//PUFFY CHEEKS
				{
					lowb = wep_load[bwep]*-2;
					lowc = wep_load[cwep]*-2;
				}
				var dropped = false;
				if bwep == 0 || breload > lowb
				{
					with other
					{
						if isdoc
							dropped = scrDrop(9,0);
						else
							dropped = scrDrop(7,0);
					}
				}
				if (ultra_got[31] && (creload > lowc || cwep == 0))
				{
					with other
					{
						if isdoc
							dropped = scrDrop(8,0);
						else
							dropped = scrDrop(6,0);
					}
				}
				if dropped {
					with instance_create(other.x,other.y,RedirectFX)
					{
						snd_play(sndFlexibleElbowsDrop,0.1,true);
						sprite_index = choose(sprFlexibleElbowsDrop1,sprFlexibleElbowsDrop2);
					}
				}
			}
			*/
			//Heavy heart
			
		}
		/*
		var defaultWepDrop = 0;
		if Player.skill_got[0]
		{
			defaultWepDrop += 0.5
			if (Player.ultra_got[19] && !Player.altUltra)
				defaultWepDrop += 0.1;
		}
		if Player.race == 17
		{
			defaultWepDrop += 0.5
		}*/
		if Player.ultra_got[55] && !Player.altUltra //&& !isSheep
		{
			if instance_number(object_index) == 1
			{
				snd_play(sndPandaExtinction,0.1,true);//TEMP
				Sleep(20)
				with instance_create(x,y,AnimDestroyBloom)
				{
					sprite_index = sprPandaExtinctionEvent;
					image_angle = random(360);	
				}
				var splatDir = random(360);
				var rpt = 6 + mySize;
				var angStep = 360 / rpt;
				var i = 0;
				repeat(rpt)
				{
					with instance_create(x,y,BloodStreak)
					{
						motion_add(splatDir,6 + i + other.mySize)
						image_angle = direction
					}
					scrAddToBGFXLayer(
						sprBloodSplat,
						irandom(sprite_get_number(sprBloodSplat)),
						x + lengthdir_x(random_range(4,8) + i*2 + mySize,splatDir),
						y + lengthdir_y(random_range(4,8) + i*2 + mySize,splatDir),
						random_range(0.8,1),
						random_range(0.8,1),
						splatDir,
						c_white,
						1
					);
					splatDir += angStep;
					i += 1;
				}
				with enemy
				{
					if my_health > 0
					{
						var dealDamage = max(1,my_health*0.17);
						sprite_index = spr_hurt;
						image_index = 0;
						DealDamage(dealDamage,false,false,false);
						scrScarierFace(dealDamage,false)
						BackCont.shake += 1;
					}
				}
				if BackCont.shake > 100
					BackCont.shake = 100;
			}
		}
		/*
		if Player.ultra_got[29] && !Player.altUltra//Refined taste
		{
			defaultWepDrop += 1;
		}
		*/
		//if defaultWepDrop > 0
		//	scrDrop(0,defaultWepDrop);
		with Player
		{
			if other.countKill
				kills ++;
				
			var t = 0;
			
			if !isSheep
			{
				//Sheep Ultra B Just A Sheep
				if ultra_got[50] == 1 && !altUltra
				{
					if justAsheep && instance_number(enemy) < BackCont.enemiesInStartLevel*0.7//if70% left enemies will notice you
					{
						if (scrWasSpottedDoingCrime(true))
						{
						    justAsheep = false;
						    instance_create(x-5,y-16,Notice);
						    instance_create(x+5,y-16,Notice);
							if skill_got[29]//Insomnia
								t = 290;
						}
					}
				}
				else if (justAsheep && instance_number(enemy) < BackCont.enemiesInStartLevel*0.9) {
					if (scrWasSpottedDoingCrime(true))
					{
						justAsheep = false;
						instance_create(x-5,y-16,Notice);
						instance_create(x+5,y-16,Notice);
						if skill_got[29]//Insomnia
							t = 290;
					}
				}
				//Insomnia should not trigger again after first justASheep
				if skill_got[29] && ultra_got[51] && altUltra && sheepFakeouts != 3 + skill_got[5]
					t = 0;
				if t > 0
				{
					with enemy
					{
						if alarm[1]>0
						{
							alarm[1]+=t;
							scrGiveSnooze();
						}
					}
					with PlayerAlarms2
					{
						alarm[0] = t;	
					}
				}
			}
			//RADS
			if race == 4 && other.raddrop!=0
				other.raddrop += 1
			if scrIsGamemode(6) || scrIsGamemode(20)//Claustrophobia Agoraphobia
			{
				other.raddrop = max(0, other.raddrop - 1);
				other.raddrop = floor(other.raddrop * 0.7);
			}
			if isdoc
			{
				if Player.ultra_got[97] && Player.altUltra
					other.raddrop = round(other.raddrop*0.95);
				else
					other.raddrop = round(other.raddrop*0.7);
			}

			if ultra_got[15]//POWER OVERWHELMING! melting c ultra
				other.raddrop += 2;
			if ultra_got[77] && !altUltra//business hog prosperity
				other.raddrop += 2;

			if scrIsCrown(7)
				other.raddrop=round(other.raddrop*0.6);

			if scrIsCrown(28)
			{
				other.raddrop=max(choose(0,1),floor(other.raddrop*0.06));
				var splatDir = random(360);
				var ms = other.mySize;
				var rpt = 2+ms;
				var angStep = 360 / rpt;
				repeat(rpt)
				{
					with instance_create(other.x,other.y,BloodStreak)
					{
					motion_add(splatDir,6 + other.mySize)
					image_angle = direction
					}
					scrAddToBGFXLayer(
						sprBloodSplat,
						irandom(sprite_get_number(sprBloodSplat)),
						other.x + lengthdir_x(random_range(4,8)+ms,splatDir),
						other.y + lengthdir_y(random_range(4,8)+ms,splatDir),
						random_range(0.8,1),
						random_range(0.8,1),
						splatDir,
						c_white,
						1
					);
					splatDir += angStep;
				}
			}
			else if scrIsGamemode(39)//Gore galore
			{
				var splatDir = random(360);
				var ms = other.mySize;
				var rpt = 2+ms;
				var angStep = 360 / rpt;
				repeat(rpt)
				{
					with instance_create(other.x,other.y,BloodStreak)
					{
					motion_add(splatDir,6 + other.mySize)
					image_angle = direction
					}
					scrAddToBGFXLayer(
						sprBloodSplat,
						irandom(sprite_get_number(sprBloodSplat)),
						other.x + lengthdir_x(random_range(4,8)+ms,splatDir),
						other.y + lengthdir_y(random_range(4,8)+ms,splatDir),
						random_range(0.8,1),
						random_range(0.8,1),
						splatDir,
						c_white,
						1
					);
					splatDir += angStep;
				}
			}
			
			//TRIGGER FINGERS
			if skill_got[24]
			{
				var m = 0.7;//0.65;
				if isdoc || (ultra_got[19] && !altUltra)
				{
					m = 0.62;//0.5625;
				}
				if reload < 0
				{
					var pci = reload/wep_load[wep];
					pci = 1+pci;
					pci = pci-floor(pci);//Percentage of load that would be the reload
					reload += reload*pci*m;
				}
				else
				{
					reload *= m;
				}
				if breload < 0
				{
					var pci = breload/wep_load[bwep];
					pci = 1+pci;
					pci = pci-floor(pci);//Percentage of load that would be the reload
					breload += breload*pci*m;
				}
				else
				{
					breload *= m;
				}
				if creload < 0
				{
					var pci = creload/wep_load[cwep];
					pci = 1+pci;
					pci = pci-floor(pci);//Percentage of load that would be the reload
					creload += creload*pci*m;
				}
				else
				{
					creload *= m;
				}
				triggerfinger=1;//Shine weapon when trigger fingers is working
			}
    
			//RAGE
			if skill_got[28]
			{
				rage+=1;
				if isdoc || (ultra_got[19] && !altUltra)
					rage += 0.25;
				if rage>500//MAX RAGE
					rage=500;//340
				rageIndicator += 1;
				if rageIndicator > 19
				{
					rageIndicator = 0;
					BackCont.shake += 10;
					with instance_create(x,y-20,RageIndicator)
					{
						direction = other.direction;
						speed = other.speed * 0.5;
						rageNumber = round(other.rage);
						snd_play(sndRageIndicator);
						motion_add(random(360),0.5);
					}
					with instance_create(x,y,Smoke)
					{
						motion_add(random(360),1);
					}
					with instance_create(x,y,Smoke)
					{
						motion_add(random(360),2);
					}
				}
			}
			//Chicken Ultra A harder to kill
			if ultra_got[33] == 1 && !altUltra
		    {
			    if my_health <= 0
			    {
				    if race = 9 and bleed < 150
				    {
				        if bleed > 0 {
							bleed-=30;
				        }
						if bleed <= 0
						{
							bleed = 1;	
						}
				    }
			    }
		    }
		}
	    if scrIsGamemode(11)//GUN GAME
	    {
			with Player
			{
				gunGameKill --;
				if gunGameKill <= 0
				{
					scrRollGunGame();
				}
			}
			with GameRender
			{
				gamemodeDynamicHud = dynamicHudResetTime;	
			}
	    }
		if instance_exists(Player)
		{
			with Player
			{
				if ultra_got[16]
				{
					if lastEnemyKilled[lastEnemyKilledIndex] != other.object_index
					{
						lastEnemyKilled[lastEnemyKilledIndex] = other.object_index;
						lastEnemyKilledIndex += 1;
						if lastEnemyKilledIndex > 1
							lastEnemyKilledIndex = 0;
					}
				}
			}
		}
		if instance_number(enemy) <= instance_number(IDPDVan)+1 && !instance_exists(becomenemy)
		{
			snd_play_2d(sndLastEnemy,0,true)
		}
		else if scrIsGamemode(12) && !wasResurrected
		{
			instance_create(x,y,Zombie);
		}
	}
	else {
		BackCont.kills += 1
		UberCont.ctot_kill[UberCont.race] += 1
	}
	scrRaddrop();
}
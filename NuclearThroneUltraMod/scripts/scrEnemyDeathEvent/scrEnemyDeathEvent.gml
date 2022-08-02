///xxx();
// /@description
///@param
function scrEnemyDeathEvent(){
	if UberCont.opt_gamemode == 9//easy mode
	{
		raddrop*=1.5;
	}
	if instance_exists(Player)
	{
		//PLANT ULTRA B KILLER
		if Player.ultra_got[18] == 1
		{
			if place_meeting(x,y,Tangle)
			{
				instance_create(x,y,Sapling);
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
				cash = min(cash + 1,maxCash);
			}
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
							dropped = scrDrop(10,0);
						else
							dropped = scrDrop(8,0);
					}
				}
				if (ultra_got[32] && (creload > lowc || cwep == 0))
				{
					with other
					{
						if isdoc
							dropped = scrDrop(10,0);
						else
							dropped = scrDrop(8,0);
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
			//Heavy heart
			if skill_got[0]
			{
				if isdoc
					scrDrop(0,4);
				else
					scrDrop(0,2.5);
			}
		}
		
		
		if Player.race == 17
		{
			scrDrop(0,3);
		}
		if Player.ultra_got[29] && !Player.altUltra//Refined taste
		{
			scrDrop(0,5);	
		}
		with Player
		{
			kills ++;
			var t = 0;
			

			//Sheep Ultra B Just A Sheep
			if ultra_got[50] == 1
			{
				if justAsheep && instance_number(enemy) < BackCont.enemiesInStartLevel*0.7//if70% left enemies will notice you
				{
				    justAsheep = false;
				    instance_create(x-5,y-16,Notice);
				    instance_create(x+5,y-16,Notice);
					if skill_got[29]//Insomnia
						t = 200;
				}
			}
			else if (justAsheep && instance_number(enemy) < BackCont.enemiesInStartLevel*0.9) {
				justAsheep = false;
				instance_create(x-5,y-16,Notice);
				instance_create(x+5,y-16,Notice);
				if skill_got[29]//Insomnia
					t = 200;
			}
			if t > 0
			{
				with enemy
				{
					if alarm[1]>0
					{
						alarm[1]+=t;
						with instance_create(x,y,Snooze)
						{
							owner = other.id;
							yoffset = other.sprite_height*0.5 - 4;
						}
					}
				}
			}
			//RADS
			if race = 4 && other.raddrop!=0
				other.raddrop += 1

			if isdoc
			other.raddrop=round(other.raddrop*0.5);

			if ultra_got[15]//POWER OVERWHELMING! melting c ultra
			other.raddrop +=2;
			if ultra_got[77]//business hog prosperity
				other.raddrop+=1;

			if crown = 7
			other.raddrop=round(other.raddrop*0.65);

			if Player.crown = 17
			other.raddrop=max(choose(0,1),floor(other.raddrop*0.06));
			
			//TRIGGER FINGERS
			if skill_got[24]
			{
				var m = 0.4;
				if isdoc
				{
					m = 0.45;
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
				if isdoc
					rage += 0.25;
				if rage>350//MAX RAGE
					rage=350;//340
			}
			//Chicken Ultra A harder to kill
			if ultra_got[33] == 1
		    {
			    with Player
			    {
			        if my_health <= 0
			        {
			        if race = 9 and bleed < 150
			        {
			            if bleed>0{
			            bleed-=30;
			            }
			        }
        
			        }
			    }
		    }
		}
	    if UberCont.opt_gamemode=11//GUN GAME
	    {
	        with Player
	        {
			    do{
			        wep=irandom(maxwep);
			        }until(wep!=69&&wep!=0&& wep!=298)//no oops gun or no wep or golden oops
                
			        if race=7//roids
			        {
			            do{
			            bwep=irandom(maxwep);
			            }until(bwep!=69&&bwep!=0&&wep!=298)//no oops gun
			        }
                
			        if ammo[wep_type[wep]] < typ_ammo[wep_type[wep]]*3
			        {ammo[wep_type[wep]]+=typ_ammo[wep_type[wep]]*3;}
					
			        if rad < wep_rad[wep] * 4
			        rad = wep_rad[wep] * 4;
			    scrWeaponHold();
	        }
	    }
		if instance_number(enemy) <= instance_number(IDPDVan)+1
		{
			if instance_exists(Player)
			{
				if Player.ultra_got[16]
					Player.meltingd = object_index;
			}
			snd_play(sndLastEnemy,0,true)
		}
	}
	else{
		BackCont.kills += 1
		UberCont.ctot_kill[UberCont.race] += 1
	}
	scrRaddrop();
}
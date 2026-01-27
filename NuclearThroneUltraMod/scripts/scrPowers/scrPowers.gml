/// @description
function scrPowers(raceOverwrite = -1) {
	if (instance_exists(StartAreaBuffer) || instance_exists(UnPauseDelay))
		exit;
	var keepRace = race;

	chickenFocusInUse = false;
	if ultra_got[50] && altUltra
	{
		race = fakeRace;
	}
	if raceOverwrite > -1
		race = raceOverwrite;
	else if scrIsGamemode(47)//Double active gamemode
	{
		scrPowers(UberCont.useRaceActive);
	}
	
	if scrIsCrown(34)
		race = 0;
	if skill_got[39] && alienIntestines < 330 && (!isInvisible || instance_exists(ThiefStealthDurationDelay))
	{
		if UberCont.normalGameSpeed == 60
		{
			if alienIntestines < 20
				alienIntestines += 0.6;
			else
				alienIntestines += 0.17;
			if loops > 0
				alienIntestines += 0.03;
			if race == 25
			{
				alienIntestines += 0.06;	
			}
		}
		else
		{
			if alienIntestines < 20
				alienIntestines += 1.2;
			else
				alienIntestines += 0.34;
			if loops > 0
				alienIntestines += 0.06;
			if race == 25
			{
				alienIntestines += 0.12;
			}
		}
	}
	/////SHIT PRESSED////////
	if KeyCont.key_spec[p] = 1 || specBuffer > 0
	{
		if rewinds > 0
		{
			scrRewindTime();
			race = keepRace;
			exit;
		}
		if (scrIsCrown(35) && (my_health > 1 || armour > 1))
		{
			if !scrIsCrown(41) || my_health > 2
			{
				if armour > 0
					armour -= 1;
				else
					DealDamage(1,false,false,false);
				exception = true;
				hitBy = sprite_index;
				image_index=0;
			    sprite_index=spr_hurt;
			    snd_play_2d(snd_hurt_actual, hurt_pitch_variation);
				scrCollectAmmo(2);
			}
		}
		var alien = alienIntestines*0.5;
		scrAlienIntestines();
		var delay = 5;
		with YungCuzDupe {
			alienIntestines = alien;
			alarm[6] = delay;
			delay += 5;
		}
		
	
		if race == 23 //Frog
		{
			if skill_got[5]=1
			{
				snd_play_2d(sndFrogStartButt);
				snd_loop(sndFrogLoopButt);
			}
			else
			{
				snd_play_2d(sndFrogStart);
				snd_loop(sndFrogLoop);
			}
		}
		if race == 28//THIEF
		{
			//var n = instance_nearest(x,y,enemy)
			if thiefTarget != noone {//n != noone && instance_exists(n) && distance_to_object(n) < 66 + (skill_got[5]*24) && !collision_line(x,y,n.x,n.y,Wall,false,false) {
				//var tn = instance_nearest(UberCont.mouse__x,UberCont.mouse__y,enemy);
				//Prioritize enemy near the aim of the player
				//if tn != noone && instance_exists(tn) && distance_to_object(tn) < 70
					//n = tn;
				var n = thiefTarget;
				var stabDir = point_direction(x,y,n.x,n.y);
				var l = loops;
				if isInvisible
				{
					with instance_create(x,y,AnimDestroyTop)
					{
						image_angle = stabDir
						if other.skill_got[5]
						{
							sprite_index = sprThiefStabUpg;
							motion_add(image_angle,5);
						}
						else
						{
							sprite_index = sprThiefStab;
							motion_add(image_angle,4);
						}
					}
					var d = 15 + level * 5;
					with n
					{
						if other.skill_got[5]
						{
							snd_play(sndThiefStabStealUpg,0.01);
							instance_create(x,y,ThiefStab);
							DealDamage(d + 20 + min(100,l*2) + l + my_health*0.25);
							BackCont.viewx2 += lengthdir_x(50,stabDir)*UberCont.opt_shake
							BackCont.viewy2 += lengthdir_y(50,stabDir)*UberCont.opt_shake
							BackCont.shake += 40
							motion_add(stabDir,9)
							with instance_create(x,y,AnimDestroyTop)
							{
								depth -= 1;
								sprite_index = sprThiefHitUpg;
								image_angle = random(360);
							}
						}
						else
						{
							snd_play(sndThiefStabSteal,0.01);
							with instance_create(x,y,ThiefStab)
							{
								range *= 0.5;
								range -= 2;
								image_xscale *= 0.5;
								image_yscale = image_xscale;
								dmg = 10 + l;
								visible = false;
							}
							DealDamage(d + min(100,l*2) + l);
							BackCont.viewx2 += lengthdir_x(40,stabDir)*UberCont.opt_shake
							BackCont.viewy2 += lengthdir_y(40,stabDir)*UberCont.opt_shake
							BackCont.shake += 30
							motion_add(stabDir,6)
							with instance_create(x,y,AnimDestroyTop)
							{
								depth -= 1;
								sprite_index = sprThiefHit;
								image_angle = random(360);
							}
						}
						sprite_index = spr_hurt
						image_index = 0
						snd_play(snd_hurt, hurt_pitch_variation,true)
						with scrDrop(20,8) {
							motion_add(stabDir + 180, 3);	
						}
					}
					if ultra_got[110] && altUltra
					{
						scrCollectAmmo(1);
						BackCont.shake += 4;
					}
					else
						scrCollectAmmo(0.5);
					if !skill_got[2]
					{
						motion_add(stabDir,7);
					}
				}
				else if !instance_exists(ThiefStealDelay)
				{
					instance_create(x,y,ThiefStealDelay);
					
					if other.ultra_got[111]
					{
						if other.ultra_got[110] && altUltra
							scrCollectAmmo(0.3);
						else
							scrCollectAmmo(0.15);
						with instance_create(x,y,AnimDestroyTop)
						{
							image_angle = stabDir
							sprite_index = sprThiefStealUpg;
							motion_add(image_angle,5);
						}
						BackCont.viewx2 += lengthdir_x(30,stabDir)*UberCont.opt_shake
						BackCont.viewy2 += lengthdir_y(30,stabDir)*UberCont.opt_shake
						BackCont.shake += 20
					}
					else
					{
						if other.ultra_got[110] && altUltra
							scrCollectAmmo(0.25);
						else
							scrCollectAmmo(0.125);
						with instance_create(x,y,AnimDestroyTop)
						{
							image_angle = stabDir
							sprite_index = sprThiefSteal;
							motion_add(image_angle,4);
						}
						BackCont.viewx2 += lengthdir_x(10,stabDir)*UberCont.opt_shake
						BackCont.viewy2 += lengthdir_y(10,stabDir)*UberCont.opt_shake
						BackCont.shake += 10	
					}
					with n
					{
						if other.ultra_got[111]
						{
							snd_play(sndThiefStealUpg,0.01);
							DealDamage(18 + min(20,l * 2) + l);
							with instance_create(x,y,ThiefStab) {
								dmg = 15 + min(10,l) + l;	
							}
							motion_add(stabDir,6)
							with instance_create(x,y,AnimDestroyTop)
							{
								depth -= 1;
								sprite_index = sprThiefStealHitUpg;
								image_angle = random(360);
							}
							with scrDrop(9,3) {
								motion_add(stabDir + 180, 3);
							}
						}
						else
						{
							snd_play(sndThiefSteal,0.01);
							DealDamage(3 + min(10,l) + l);
							motion_add(stabDir,4)
							with instance_create(x,y,AnimDestroyTop)
							{
								depth -= 1;
								sprite_index = sprThiefStealHit;
								image_angle = random(360);
							}
						}
						sprite_index = spr_hurt
						image_index = 0
						snd_play(snd_hurt, hurt_pitch_variation,true)
						
					}
					if !skill_got[2]
					{
						motion_add(stabDir,6);
					}
				}
			}
			else if instance_exists(CarVenus)
			{
				var n = instance_nearest(x,y,CarVenus)
				if n != noone && distance_to_object(n) < 66 + (skill_got[5]*24) && !collision_line(x,y,n.x,n.y,Wall,false,false)
				{
					var stabDir = point_direction(x,y,n.x,n.y);
					with instance_create(x,y,AnimDestroyTop)
					{
						image_angle = stabDir
						sprite_index = sprThiefSteal;
						motion_add(image_angle,4);
					}
					with CarVenus
					{
						event_user(0);	
					}
				}
			}
			if isInvisible
			{
				scrTurnOffInvisibility(true);
			}
		}
		
		
		if race == 16// && ((armour > 0 && !ultra_got[63]) || (ultra_got[63] && my_health > 2) || freeArmourStrike)//Viking
		{
			if (armour < 1 && !ultra_got[63]) && !freeArmourStrike || (ultra_got[63] && my_health < 3 && !(ultra_got[62] && altUltra && armour > 1))
			{
				snd_play(sndNoArmour,0.1);
				BackCont.shake += 10;
			}
			else
			{
				if freeArmourStrike
				{
					freeArmourStrike = false;
					if skill_got[38] && metabolism < 3
					{
						triggerMetabolism = true;
					}
				}
			    else if armour > 0 && (!ultra_got[63] || (ultra_got[62] && altUltra && !scrIsCrown(41)))
				{
					if metabolism < 3
						armour--;
					if skill_got[38]
					{
						triggerMetabolism = true;
					}
				}
			    else if ultra_got[63] && !(ultra_got[62] && altUltra)
			    {
			        DealDamage(2,false,false,false);
					hitBy = sprite_index;
			        exception = true
			    }
				scrBlankArmour();
				scrSerpentArmourStrike();
			}
		}


		if race == 22 && !altUltra //Rogue
		{
			var radcost = 120;//Cost is also in portal
			var useRad = ultra_got[88] == 1
		if rogueammo > instance_number(PortalStrike) || (useRad && rad >= radcost*(1+instance_number(PortalStrike)))
		{
			//if useRad Ammo taken in portalstrike destroy
			//	rad -= radcost;
		

			with instance_create(UberCont.mouse__x,UberCont.mouse__y,PortalStrike)
			{
			if other.bskin=2
			sprite_index=sprRogueCStrike
			if other.skill_got[5]
			{
			upgraded=true;
			if other.bskin=2
			sprite_index=sprRogueCStrikeTB;
			else
			sprite_index=sprRogueStrikeTB;
			}

			}
			snd_play_2d(sndRogueAim);
		}
		else
		{
			snd_play_2d(sndPortalStrikeEmpty);
			if useRad
			{
				snd_play_2d(sndUltraEmpty);	
				with instance_create(x,y,PopupText)
				{mytext = "NOT ENOUGH#RADS"
				theColour=c_red;}
			}
			else
			{
				with instance_create(x,y,PopupText)
				{mytext = "NOT ENOUGH#PORTAL STRIKE AMMO"
				theColour=c_red;}
			}
		}


		}

		if race == 21//horror
		{
			horrordelay = false;
			if UberCont.normalGameSpeed == 60
				horrordelay = true;
			if ultra_got[0] && altUltra
			{
				if cash <= 0 && inDebt
				{
					snd_play_2d(sndHorrorEmpty);
					with instance_create(x,y,PopupText)
					{
						mytext = "NOT ENOUGH CASH"
						theColour=c_red;
					}
					BackCont.shake += 5;
				}
				else
				{
					snd_play_2d(sndHorrorCashFlowStart);
				}
			}
			else
			{
				if rad<=0
				{
					snd_play_2d(sndHorrorEmpty);
					scrEmptyRad();
				}
				else
				{
					if !instance_exists(HorrorSuckDelay)
						instance_create(x,y,HorrorSuckDelay);
					else
						with HorrorSuckDelay
						{
							alarm[0] = suckDelay;	
						}
					//First rad for game feel
					var cost = 1.06;
					if ultra_got[83]
						cost = 0.95;
					if  UberCont.normalGameSpeed == 60
					{
						cost *= 0.5;
						horrordelay = !horrordelay;
					}
					rad -= cost;

				    with instance_create(x+lengthdir_x(random(horrorcharge*0.7),point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)),y+lengthdir_y(random(horrorcharge*0.7),point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)),HorrorBeam)
				    {
					    bskin=other.bskin
    
					    if bskin = 1
							sprite_index=sprHorrorBeamB;
					    else if bskin = 2
							sprite_index=sprHorrorBeamC;
						else if bskin == 3
							sprite_index = sprHorrorBeamD;
						else if bskin == 4
							sprite_index = sprHorrorBeamE;
    
					    originnr=instance_number(HorrorBeam);
    
					    image_angle = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)
					    team = other.team
					    motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y),6);
					    ammo=50
					    charge=other.horrorcharge;
					    event_perform(ev_alarm,0)
					    rad=1;
				        with instance_create(x,y,LightningSpawn)
				        {
					        if other.bskin=1
								sprite_index=sprHorrorBeamSpawnB
					        else if other.bskin=2
								sprite_index=sprHorrorBeamSpawnC
							else if other.bskin=3
								sprite_index=sprHorrorBeamSpawnD
							else if other.bskin=4
								sprite_index=sprHorrorBeamSpawnE
					        else
								sprite_index=sprHorrorBeamSpawn
							image_angle = other.image_angle
				        }
				    }
					rad = max(rad,0);
				}
			}

		}


		if race == 20 //business hog
		{
			if !instance_exists(ShopWheel)
				instance_create(x,y,ShopWheel);
		}

		if race == 19 && !instance_exists(SkeletonGambleCooldown)//Skeleton
		{
			if ultra_got[74] && altUltra//Skeleton alt ultra
			{
				var corpseExist = false;
				var upTo = 2;
				var numberOfEnems = 0;
				if instance_exists(IDPDVan)
					numberOfEnems = instance_number(IDPDVan);
				if  (instance_number(enemy) > numberOfEnems)
				{
					with CorpseCollector
					{
						var al = ds_list_size(corpses)
						var markForDelete = [];
						var j = 0;
						for (var i = 0; i < al; i++)
						{
							var corpse = corpses[| i];
							var xx = corpse.xx;
							var yy = corpse.yy;
							if point_distance(xx,yy,other.x,other.y) < 250
							{
								corpseExist = true;
								BackCont.shake += 2;
								var splatDir = point_direction(other.x,other.y,xx,yy);
								with instance_create(xx,yy,BloodStreak)
								{
									motion_add(splatDir,8)
									image_angle = direction
								}
								scrAddToBGFXLayer(
									sprBloodSplat,
									irandom(sprite_get_number(sprBloodSplat)),
									xx + lengthdir_x(random_range(6,12),splatDir),
									yy + lengthdir_y(random_range(6,12),splatDir),
									random_range(0.8,1),
									random_range(0.8,1),
									splatDir,
									c_white,
									1
								);
								instance_create(xx,yy,Smoke);
								var d = point_direction(other.x,other.y,xx,yy);
								if other.skill_got[5]
								{
									BackCont.shake += 1;
									if upTo > -1
									snd_play(sndExplosionS);
							
									with instance_create(other.x,other.y,BloodBullet)
									{
										motion_add(d+8,17)
										image_angle = direction;
										team = 2
									}
									with instance_create(other.x,other.y,BloodBullet)
									{
										motion_add(d-8,17)
										image_angle = direction;
										team = 2
									}
									with instance_create(other.x,other.y,BloodBullet)
									{
										motion_add(d+16,15)
										image_angle = direction;
										team = 2
									}
									with instance_create(other.x,other.y,BloodBullet)
									{
										motion_add(d-16,15)
										image_angle = direction;
										team = 2
									}
									with instance_create(other.x,other.y,HeavyBloodBullet)
									{
						
										motion_add(d+180,17)
										image_angle = direction;
										team = 2
									}
								}
								else
								{
									with instance_create(other.x,other.y,BloodBullet)
									{
										motion_add(d+8,17)
										image_angle = direction;
										team = 2
									}
									with instance_create(other.x,other.y,BloodBullet)
									{
										motion_add(d-8,17)
										image_angle = direction;
										team = 2
									}
									with instance_create(xx,yy,BloodBullet)
									{
										motion_add(d+180,17)
										image_angle = direction;
										team = 2
									}
								}
								if upTo > 0
								{
									snd_play(sndCorpseExplo);	
								}
					
								with instance_create(other.x,other.y,HeavyBloodBullet)
								{
									dmg += 1;
									motion_add(d,19)
									image_angle = direction;
									team = 2
								}
								upTo--;
								markForDelete[j] = i;
								j ++;
							}
						}
						for (var i = 0; i < j; i++)
						{
							ds_list_delete(corpses,markForDelete[i]);
						}
					}
					with Corpse
					{
						if (image_speed == 0 || alarm[6] < 1) && point_distance(x,y,other.x,other.y) < 250
						{
							corpseExist = true;
							BackCont.shake += 2;
							var splatDir = point_direction(Player.x,Player.y,x,y);
							with instance_create(x,y,BloodStreak)
							{
								motion_add(splatDir,8)
								image_angle = direction
							}
							scrAddToBGFXLayer(
								sprBloodSplat,
								irandom(sprite_get_number(sprBloodSplat)),
								x + lengthdir_x(random_range(6,12),splatDir),
								y + lengthdir_y(random_range(6,12),splatDir),
								random_range(0.8,1),
								random_range(0.8,1),
								splatDir,
								c_white,
								1
							);
							instance_create(x,y,MeltSplat);
							instance_destroy();
							instance_create(x,y,Smoke);
							var d = point_direction(other.x,other.y,x,y);
							if other.skill_got[5]
							{
								BackCont.shake += 1;
								if upTo > -1
									snd_play(sndExplosionS);
							
								with instance_create(other.x,other.y,BloodBullet)
								{
									motion_add(d+8,17)
									image_angle = direction;
									team = 2
								}
								with instance_create(other.x,other.y,BloodBullet)
								{
									motion_add(d-8,17)
									image_angle = direction;
									team = 2
								}
								with instance_create(other.x,other.y,BloodBullet)
								{
									motion_add(d+16,15)
									image_angle = direction;
									team = 2
								}
								with instance_create(other.x,other.y,BloodBullet)
								{
									motion_add(d-16,15)
									image_angle = direction;
									team = 2
								}
								with instance_create(other.x,other.y,HeavyBloodBullet)
								{
						
									motion_add(d+180,16)
									image_angle = direction;
									team = 2
								}
							}
							else
							{
								with instance_create(other.x,other.y,BloodBullet)
								{
									motion_add(d+8,17)
									image_angle = direction;
									team = 2
								}
								with instance_create(other.x,other.y,BloodBullet)
								{
									motion_add(d-8,17)
									image_angle = direction;
									team = 2
								}
								with instance_create(x,y,BloodBullet)
								{
									motion_add(d+180,17)
									image_angle = direction;
									team = 2
								}
							}
							if upTo > 0
							{
								snd_play(sndCorpseExplo);	
							}
					
							with instance_create(other.x,other.y,HeavyBloodBullet)
							{
								dmg += 1;
								motion_add(d,19)
								image_angle = direction;
								team = 2
							}
							upTo--;
						}
					}
				}
				if corpseExist
				{
					BackCont.shake += 5;
					snd_play_2d(sndBloodGamble);
					snd_play_fire(sndHeavyBloodPistol);
				}
			}
			else if (scrIsCrown(40) || wep_type[wep] != 0) && (can_shoot == 1 || ultra_got[74])//&& my_health > 1//SKELETON
			{
			    //gamble some blood
				var failedGamble = false;
				var wepCost = max(0.5,wep_cost[wep]);
				var cancelBloodGamble = false;
				if wep_type[wep] == 0
				{
					wepCost = 2;
				}
			    if (max(0.1,wepCost/typ_ammo[wep_type[wep]]) > random(1 - consecutiveGoodBloodGambles) * luck/**(1+(skill_got[5]*0.35) )*/  )//If this is true take damage
			    {//thronebutt adds 1/3 chance of not taking damage
					if !scrIsCrown(41) || my_health > 2
					{
						consecutiveGoodBloodGambles = 0;
						failedGamble = true;
						//Damnation
						if (ammo[wep_type[wep]] >= 0 && ultra_got[74])
						{
							var punishment = 6;
							scrSpendingAmmo(wep_type[wep],wep_cost[wep]*punishment);
							if (Player.alarm[2] < 1)
							{
								ammo[wep_type[wep]] -= wep_cost[wep]*punishment;
								rad = max(0,rad - wep_rad[wep] * punishment);
							}
						}
						else
						{
							if skeletonGambleBongas == 4
							{
								scrHeal(1);
								snd_play(sndBloodlustProc,0.1);
								instance_create(x,y - 8,HealFX);
								skeletonGambleBongas = 0;
							}
							else
							{
								if skill_got[5]
									skeletonGambleBongas += 1;
								if armour > 0
									armour -= 1;
								else
									DealDamage(1,false,false,false);
								hitBy = sprite_index;
								exception = true;
								image_index = 0;
								sprite_index = spr_hurt;
								snd_play_2d(snd_hurt, hurt_pitch_variation);
							}
							var splatDir = random(360);
							var rpt = 3;
							var angStep = 360 / rpt;
							repeat(rpt)
							{
								with instance_create(x,y,BloodStreak)
								{
									motion_add(splatDir,10);
									image_angle = direction
								}
								scrAddToBGFXLayer(
									sprBloodSplat,
									irandom(sprite_get_number(sprBloodSplat)),
									x + lengthdir_x(random_range(8,14),splatDir),
									y + lengthdir_y(random_range(8,14),splatDir),
									random_range(0.8,1),
									random_range(0.8,1),
									splatDir,
									c_white,
									1
								);
								splatDir += angStep;
							}
							if my_health == 0
							{
								if skill_got[32] && isAlkaline
								{
									isAlkaline = false;
									var h = 2;
									with instance_create(x,y,HealFX)
									{
										depth = other.depth - 1;	
									}
									my_health = min(h,maxhealth);
									with instance_create(x,y,SharpTeeth)
										owner=other.id;
									snd_play(sndAlkalineProc,0,true)
									var pt = instance_create(x,y,PopupText)
									if UberCont.opt_ammoicon
									{
										if my_health = maxhealth
											pt.mytext = "MAX";
										else
											pt.mytext = "+"+string(h-1);
				
										pt.sprt = sprHPIconPickup;
									}
									else
									{
										if my_health = maxhealth
											pt.mytext = "MAX HP";
										else
											pt.mytext = "+"+string(h-1)+" HP";
									}
									Sleep(50);
								}
								else if skill_got[25] && strongspirit == true && strongspiritused == false
								{
									snd_play(sndStrongSpiritLost);
								    my_health=1;
									Sleep(50);
								    alarm[1]=20;//invincibility 
								    strongspiritused=true;
								    strongspirit=false;
								}
							}
						}
    
						repeat(3)
						{
							with instance_create(x,y,BloodStreak)
							{
								motion_add(random(360),8)
								image_angle = direction
							}
						}
						if ultra_got[75]
						{
							BackCont.shake += 2;
							snd_play(sndExplosionL,0.01,true);
							var len = 38;
							var am = 6;
							var aimDir = random(360);
							var xx = x + lengthdir_x(len,aimDir);
							var yy = y + lengthdir_y(len,aimDir);
							var angstp = 360/am;
							repeat(am)
							{
								instance_create(xx,yy,MeatExplosion)
								aimDir += angstp;
								xx = x + lengthdir_x(len,aimDir);
								yy = y + lengthdir_y(len,aimDir);
							}
						}
					}
					else
					{
						snd_play(sndSkeletonGambleCancel);
						instance_create(x,y,Smoke);
						instance_create(x,y,SkeletonGambleCooldown);
						BackCont.shake += 10;
						cancelBloodGamble = true;
					}
				}
				else
				{
					//if skill_got[5]
					//	consecutiveGoodBloodGambles += wep_load[wep]*0.0005;
					//else
					consecutiveGoodBloodGambles += wep_load[wep]*0.001;
					//reload -= wep_load[wep]*0.8//*0.25;
					if ultra_got[75]
					{
						alarm[3] = max(min(wep_load[wep],8),alarm[3],1);
						if myShield == -1 || !instance_exists(myShield)
						{
							myShield = instance_create(x,y,EuphoriaShield);
							with myShield
							{
								owner = other.id;
							}
						}
					}
				}
				if !cancelBloodGamble
				{
					snd_play_2d(sndBloodGamble);
					var t = wep_type[wep];
					var wantRad = rad;
					var wantAmmo = ammo[t]
					scrFire(failedGamble);
					reload -= wep_load[wep]*0.75//*0.25;
					ammo[t] = wantAmmo;
					//ammo[t] += wep_cost[wep]//return ammo
					rad = max(rad,wantRad);
					can_shoot = 0;
				}
			}
		}

		//weaponsmith Weapon Smith
		if race == 17
		{
			var isRerollingInstead = false;
			if skill_got[5] && place_meeting(x,y,WeaponMod) && !instance_exists(HoldToRerollWeaponMod)
			{
				var wm = instance_place(x,y,WeaponMod);
				if wm != noone 
				{
					if !wm.hasBeenRerolled
					{
						isRerollingInstead = true;
						with instance_create(x,y,HoldToRerollWeaponMod)
						{
							target = wm;
						}
					}
					else
					{
						with instance_create(x,y,PopupText)
						{
							mytext = "ALREADY RE-ROLLED"
							theColour=c_red;
						}
						BackCont.shake += 5;
					}
				}
			}
			if (ultra_got[68] && altUltra)
			{
				if !instance_exists(MorphCooldown)
				{
					//Weapon smith enginuity ultra
					snd_play(sndMorphStart);
					instance_create(UberCont.mouse__x,UberCont.mouse__y,Morph);
					var len = 20;
					var dirr = random(360);
					repeat(3)
					{
						instance_create(UberCont.mouse__x + lengthdir_x(len,dirr),UberCont.mouse__y + lengthdir_y(len,dirr),Morph);
						dirr += 120;
					}
					if skill_got[5]
					{
						var len = 40;
						dirr += 60;
						repeat(3)
						{
							instance_create(UberCont.mouse__x + lengthdir_x(len,dirr),UberCont.mouse__y + lengthdir_y(len,dirr),Morph);
							dirr += 120;
						}
					}
					if !isRerollingInstead
					{
						var wantTier = wep_area[wep];
						wep ++;
						if wep > maxwep
							wep = 1;
						while (wep_area[wep] != wantTier)
						{
							wep ++;
							if wep > maxwep
								wep = 1;
						}
						scrAddNewWeaponDrop(wep, true);
						with instance_create(x,y,PopupText) {
							mytext = other.wep_name[other.wep];
						}
						scrWeaponHold();
					}
				}
			}
		    else if !isRerollingInstead && bwep != 0
			{
				instance_create(x,y,HoldToSmith);
			}
			if instance_exists(HammerThrow)
			{
				with HammerThrow
				{
					if (canDealDamage == 1 || canDealDamage == 0) && alarm[2] < 1
					{
						snd_play_fire(choose(sndKunai1,sndKunai2));
						event_user(2);
					}
				}
			}
			else if !instance_exists(HammerThrowCooldown)
			{
				var aimDirection = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
				BackCont.viewx2 += lengthdir_x(20,aimDirection)*UberCont.opt_shake
				BackCont.viewy2 += lengthdir_y(20,aimDirection)*UberCont.opt_shake
				BackCont.shake += 8
				snd_play_fire(choose(sndChickenThrow,sndKunaiCrit2));
				with instance_create(x,y,HammerThrow)
				{
					if other.skill_got[5]
						sprite_index = sprHammerThrowLightning;
					loops = other.loops;
					dmg += other.level + other.loops;
					motion_add(aimDirection+(random(6)-3)*other.accuracy,20)
					image_angle = direction
					team = other.team;
				}
			}
		}

		if race==15//Atom
		{
			if instance_exists(PlayerAlarms)
			{
				if PlayerAlarms.alarm[8] > 0
				{
					PlayerAlarms.hasTriedToTeleport = true;
					race = keepRace;
					return;	
				}
				PlayerAlarms.alarm[8] = 6;
			}
			var prevX = x;
			var prevY = y;
			if ultra_got[60] && point_distance(x,y,UberCont.mouse__x,UberCont.mouse__y)<300//Ultra D
			{
			var d = 99999;
			var mx = UberCont.mouse__x;
			var my = UberCont.mouse__y;
			//if !scrIsCrown(25)
				with Floor
				{
					if object_index != FloorExplo
					{
						var nd = point_distance(x,y,mx,my)
						if nd < d
							d = nd
					}
				}
				if (d < 300)
				{
		
				    if place_meeting(UberCont.mouse__x,UberCont.mouse__y,Floor)
				    {
					    if alarm[3]<2
							alarm[3]=2;//imunity
					    instance_create(x,y,Teleport);
					    if skill_got[5]
							snd_play_2d(sndAtomTeleportUpg,0.2,true);
						else
							snd_play_2d(sndAtomTeleport,0.2,true);
					    repeat(5){
						    with instance_create(x,y,Smoke)
						    motion_add(random(360),1+random(3))
						}
						instance_create(UberCont.mouse__x,UberCont.mouse__y,WallBreak);
						var msk = mask_index;
						mask_index = mskPickupThroughWall;
						BackCont.viewx2 += lengthdir_x(20,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
					    BackCont.viewy2 += lengthdir_y(20,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
					    BackCont.shake += 2
					    x = UberCont.mouse__x;
					    y = UberCont.mouse__y;
						scrForcePosition60fps();
						mask_index = msk;
				   
    
					    if skill_got[5]//thronebutt
					    {
							scrAtomTB(prevX,prevY);
					    }
    
					    repeat(5) {
						    with instance_create(x,y,Smoke)
						    motion_add(random(360),1+random(3))
						}
				    }
				    else
				    {
					    if alarm[3]<1
							alarm[3]=2;//imunity
			
					    instance_create(x,y,Teleport);
						if skill_got[5]
							snd_play_2d(sndAtomTeleportUpg,0.2,true);
						else
							snd_play_2d(sndAtomTeleport,0.2,true);
					    repeat(5){
					    with instance_create(x,y,Smoke)
					    motion_add(random(360),1+random(3))}
    
					    var xx;
					    var yy;
    
					    xx=32*(UberCont.mouse__x div 32);
					    yy=32*(UberCont.mouse__y div 32);
    
    
					    instance_create(xx,yy,FloorExplo)
					    instance_create(xx,yy,WallBreak);
    
    
					    mask_index=mskPickupThroughWall;
    
					    alarm[8]=2;
						BackCont.viewx2 += lengthdir_x(20,point_direction(x,y,xx,yy)+180)*UberCont.opt_shake
					    BackCont.viewy2 += lengthdir_y(20,point_direction(x,y,xx,yy)+180)*UberCont.opt_shake
					    BackCont.shake += 2
					    x = xx;
					    y = yy;
						scrForcePosition60fps();
    
					    if skill_got[5]//thronebutt
					    {
						    scrAtomTB(prevX,prevY);
					    }
    
					    repeat(5){
					    with instance_create(x,y,Smoke)
					    motion_add(random(360),1+random(3))}
				    }
				}
			}
			else// if place_meeting(UberCont.mouse__x,UberCont.mouse__y,Floor) and !place_meeting(UberCont.mouse__x,UberCont.mouse__y,Wall)//REGULAR
			{
				var mx = UberCont.mouse__x;
				var my = UberCont.mouse__y;
				//if !scrIsCrown(25)
				if place_meeting(x,y,Floor)
				{
					var triedFloors = [];
					var i = 0;
					var n = noone;
					while ((!place_meeting(mx,my,Floor) || place_meeting(mx,my,WallHitMe))
					|| (!place_meeting(mx,my,Floor) || place_meeting(mx,my,WallHitMe))
					|| i > 50)
					{
						n = instance_nearest_not_one_of_these(mx,my,Floor,triedFloors);
						triedFloors[i] = n;
						i ++;
						var o = 16;
						if n != noone
						{
							if n.object_index == FloorExplo
								o = 8;
							mx = n.x+o;
							my = n.y+o;
							if place_meeting(mx + o,my + o,WallHitMe)
							{
								var ogx = x;
								var ogy = y;
								x = mx;
								y = my;
								move_outside_solid(point_direction(ogx,ogy,mx,my),16);
								mx = x;
								my = y;
								x = ogx;
								y = ogy;
							}
						}
					}
					//Safety but will probably never reach
					if i >= 50
					{
						mx = x;
						my = y;
					}
				}
				if alarm[3]<1
					alarm[3]=max(4,alarm[3]);//imunity
	
				instance_create(x,y,Teleport);
				if skill_got[5]
					snd_play_2d(sndAtomTeleportUpg,0.2,true);
				else
					snd_play_2d(sndAtomTeleport,0.2,true);
				repeat(5){
				with instance_create(x,y,Smoke)
				motion_add(random(360),1+random(3))}
				var noWalls = !instance_exists(Wall)
				if ultra_got[59] && altUltra
				{
					var step = 24;
					var reps = 1 + (point_distance(x,y,mx,my)/step);
					var pd = point_direction(x,y,mx,my);
					var xx = x;
					var yy = y;
					var lx = lengthdir_x(step,pd);
					var ly = lengthdir_y(step,pd);
					repeat(reps)
					{
						xx += lx;
						yy += ly;
						var rd = random(360);
						if noWalls || collision_point(xx + lengthdir_x(8,rd),yy + lengthdir_y(8,rd),Floor,false,false)
						{
							with instance_create(xx + lengthdir_x(8,rd),yy + lengthdir_y(8,rd),Corrosion)
							{
								direction = random(360);
								speed = 0.5;
							}
						}
					}
				}
			
				BackCont.viewx2 += lengthdir_x(20,point_direction(x,y,mx,my)+180)*UberCont.opt_shake
				BackCont.viewy2 += lengthdir_y(20,point_direction(x,y,mx,my)+180)*UberCont.opt_shake
				BackCont.shake += 2  
				x = mx
				y = my
				scrForcePosition60fps();
				    if skill_got[5]//thronebutt
				    {
						scrAtomTB(prevX,prevY);
				    }
				repeat(5){
				with instance_create(x,y,Smoke)
				motion_add(random(360),1+random(3))}
			}
		}

		if race == 14//PANDA
		{
			if ultra_got[55] && altUltra
			{
				//CHECK HOLD LOGIC
			}	
			else
			{
				scrPandaThrow();
			}
		}

		if ultra_got[36] && !instance_exists(Decoy)//CHICKEN VANISH
		{
			var ang = direction;
			var angstep = 45;
			repeat(8)
			{
				with instance_create(x,y,Smoke)
				{
					motion_add(ang,3);
				}
				ang += angstep;
			}
			with instance_create(x,y,Decoy)
			{
				motion_add(other.direction + 180,6);
				image_xscale = other.right;
				alarm[0] = 120;
			}
		}

		//YUNG CUZ
		if race == 12
		{
			var canSpawn = true;
			var radCost = 120;
			var cost = 2;
			if ultra_got[46]
			{
				if totalDupesSpawned < 4
				{
					canSpawn = true;	
				}
				else
				{
					canSpawn = false;	
				}
			} else if ultra_got[47]
			{
				if !altUltra
				{
					canSpawn = my_health - 2 > 0;
				}
				else
				{
					canSpawn = 	rad > radCost;
				}
			}
			else if !ultra_got[46]
			{
				var targetHealth = scrCalculatePlayerBaseMaxHealth();
				cost = max(round(targetHealth*0.3),1);
				var baseHealth = scrCalculatePlayerBaseMaxHealth();
				canSpawn = (baseHealth - cost >= 1);
			
			}
			if canSpawn {
				var xran;
				var yran;
				xran=random(22)-11;
				yran=random(22)-11;
				totalDupesSpawned += 1;
			    if !place_meeting(x+xran,y+yran,Wall)
			    {
					//SPAWN BUDDY
					instance_create(x+xran,y+yran,YungCuzDupe);
				}
				else
				{
					instance_create(x,y,YungCuzDupe);
				}
				if ultra_got[47] {
					if !altUltra
					{
						if armour > 0
							armour -= 1;
						else
							DealDamage(2,false,false,false)//1/8--->0.875
						hitBy = sprite_index;
					}
					else
					{
						rad = max(rad - radCost, 0);
					}
				}
				else if !ultra_got[46] {
					
					var lostHp = 3;
					maxhealth = max(1,maxhealth - cost);//0.5
					if my_health > maxhealth
						my_health = max(1,my_health - cost,maxhealth);
					if scrIsCrown(35)
						my_health = max(my_health - 1, 1);
					hitBy = sprite_index;
				}
        		exception = true;
				sprite_index = spr_hurt
				image_index = 0
				snd_play_2d(snd_hurt, hurt_pitch_variation)
				Sleep(40)
			}
		}
		// SHEEP
		if race==13 && !instance_exists(SheepSuperCharge)
		{
			if (ultra_got[51] && altUltra && sheepFakeouts > 0)
			{
				if !justAsheep
				{
					justAsheep = true;
					alarm[3] = max(alarm[3],20);
					var marginDuration = 120;
					with PlayerAlarms2
					{
						alarm[0] += marginDuration;
					}
					//Stun
					with enemy
					{
						speed = 0;
						if alarm[1] > 0
						{
							alarm[11] += marginDuration
							alarm[1] += marginDuration;
						}	
					}
					sheepFakeouts --;
					snd_play_2d(sndMorphStop);
					instance_create(x,y,Hypnosis);
				}
			}
			else
			{
				if (ultra_got[49] && !instance_exists(SheepHyperDash))
				{
					var takePercentage = 0.1;//10%
					//var wepType = TargetWepTypeForAmmoConsumption(takePercentage);
					//var cost = typ_amax[wepType]*takePercentage;
					var cost = 35;//33 5% on level 10
					if (rad >= cost)//(wepType != 0 && ammo[wepType] - cost > 0)
					{
						//ammo[wepType] =  ammo[wepType] - cost;
						rad -= cost;
						var aimDir = point_direction(UberCont.mouse__x,UberCont.mouse__y,x,y);//Opposite of aimdir
						BackCont.viewx2 += lengthdir_x(32,aimDir)*UberCont.opt_shake;
						BackCont.viewy2 += lengthdir_y(32,aimDir)*UberCont.opt_shake;
						BackCont.shake += 10;
						snd_play_2d(sndSheepHyperDash);
						instance_create(x,y,SheepHyperDash);
						Sleep(10);
					}
					else
					{
						//snd_play_2d(snd_lowa,0,true,false,10);
						if !audio_is_playing(sndUltraEmpty)
								snd_play(sndUltraEmpty)
						with instance_create(x,y,PopupText)
						{
							mytext = "NOT ENOUGH RADS"
							theColour=c_red;
						}
						BackCont.shake += 5;
					}
				}
				else
				{
					if !instance_exists(SheepStorm)
					{
						with instance_create(x,y,SheepStorm)
						{
							if other.skill_got[other.maxskill+1]
								gotVision = true;
							team=other.team;
						}
					}
					if skill_got[2]==1//extra feet
					{
						maxSpeed=7;
					}
					else
					{
						maxSpeed=6;
					}
				}
			}
		}

		//ROBOT
		if race == 8
		{
			if ultra_got[32]
			{
				//Force shot
				var cost = wep_cost[wep]*(4-skill_got[5])
				if wep_cost[wep] == 0
				{
					cost = clamp(round(wep_area[wep] * 1.5),6,40);	
				}
				if (rad >= cost)//(wepType != 0 && ammo[wepType] - cost > 0)
				{
					rad -= cost;
					ammo[wep_type[wep]] += wep_cost[wep];
					scrFire();
				}
				else
				{
					//snd_play_2d(snd_lowa,0,true,false,10);
					if !audio_is_playing(sndUltraEmpty)
						snd_play_2d(sndUltraEmpty)
					with instance_create(x,y,PopupText)
					{
						mytext = "NOT ENOUGH RADS"
						theColour=c_red;
					}
				
				}
			}
			if !ultra_got[32] || ultra_got[31]
			{
				if instance_exists(HoldToEat)
				{
					with HoldToEat
					{
						instance_destroy();
						snd_play(sndRobotEatFail);
					}
				}
				if !hasBeenEaten || isPermanent
				{
					if bwep != 0
						instance_create(x,y,HoldToEat);
				} else
				{
					if !audio_is_playing(sndPortalStrikeEmpty)
						snd_play_2d(sndPortalStrikeEmpty);
					with instance_create(x,y,PopupText)
					{
						mytext = "ALREADY EATEN"
						theColour=c_red;
					}
					BackCont.shake += 5;
				}
			}
		}

		//FISH
		if race == 1
		{
			if skill_got[maxskill + 1] {
				if (!didJumpRoll)
				{
					if jump > jumpVulnerabilityWindow
					{
						scrFishRoll();
						didJumpRoll = true;
						with instance_create_depth(x,y - jumpY,depth + 1,AnimDestroyTop)
						{
							image_speed = 0.4;
							sprite_index = sprAirRoll;
							image_angle = other.direction;
							direction = image_angle + 180;
							speed = 2;
						}
					}
					else if jump <= 0
					{
						jump = maxJump;
						friction = myFriction
						scrFishRoll();
						alarm[3] -= rollIframe;
						rollIframe = 0;
						var dang = direction;
						/*
						repeat(3)
						{
							with instance_create_depth(x+random(6)-3,y+random(6),depth + 2,Dust)
							{
								motion_add(dang,2);	
							}
							dang += 120;
						}*/
						with instance_create_depth(x,y,depth + 1,AnimDestroyTop)
						{
							image_speed = 0.4;
							sprite_index = sprJump;
							image_xscale = choose(1,-1);
						}
						with instance_create_depth(x,y,depth + 1,AnimDestroyTop)
						{
							image_speed = 0.4;
							sprite_index = sprJumpUp;
							image_xscale = choose(1,-1);
							image_angle = other.hspeed * -10;
						}
					}
				}
			}
			else
			{
				scrFishRoll();
			}
		}
	
		//HANDS
		if race == 27
		{
			//Lose target
			with Hand
			{
				if !push && !grabAnItem
				{
					if alarm[1] > 0
						loseTarget = true;
					else
						target = noone;
				}
			}
		}
		//REBEL
		var ammoRebel = false;
		var canSpawn = true;
		var useWep = bwep;
		if altUltra && ultra_got[39]
		{
			var takePercentage = 0.75;
			var wepType = TargetWepTypeForAmmoConsumption(takePercentage);
			if wepType != wep_type[bwep] && wepType != wep_type[wep]
				takePercentage *= 3;
			if wepType != 0 || scrIsCrown(40)
			{
				ammoRebel = true;
				if wepType == 0  && !scrIsCrown(40){
					snd_play(sndEmpty)
					dir = instance_create(x,y,PopupText)
					dir.mytext = "THIS DOESN'T USE AMMO";
					dir.theColour=c_red;
					drawempty = 30
					BackCont.shake += 5;
					canSpawn = false;
					ammoRebel = false;
				}
				else if ammo[wepType] >= typ_ammo[wepType]*takePercentage
				{
					canSpawn = true;
				}
				else
				{
					snd_play(sndEmpty)
					dir = instance_create(x,y,PopupText)
					dir.mytext = "NOT ENOUGH AMMO";
					dir.theColour=c_red;
					drawempty = 30
					BackCont.shake += 5;
					canSpawn = false;
				}
			}
		}
		if race == 10 && canSpawn && ((!ammoRebel && (my_health > 2 || (race == 10 && !(instance_exists(Ally)) && my_health > 1) && alarm[3]<1)) || ammoRebel)
		{
			if my_health > 2 || !scrIsCrown(41) || ammoRebel
			{
				if ammoRebel
				{
					scrSpendingAmmo(wepType,typ_ammo[wepType]*takePercentage);
					ammo[wepType] -= typ_ammo[wepType]*takePercentage
					if ammo[wepType] <= 0
					{
						with Crown {
							event_user(0);	
						}
					}
				}
				else
				{
					if !(instance_exists(Ally))
					{
						DealDamage(1,false,false,false);
						hitBy = sprite_index;
					}
					else{
						DealDamage(2,false,false,false);
						hitBy = sprite_index;
					}
					exception = true;
			
					sprite_index = spr_hurt
					image_index = 0
			
					snd_play_2d(snd_hurt, hurt_pitch_variation)
				}

				if skill_got[5] = 1
				snd_play_2d(sndSpawnSuperAlly)
				else
				snd_play_2d(sndSpawnAlly)
				with Ally
				{
					instance_create(x,y,HealFX)
					alarm[2] = 120;
					with Portal
					{
						if (type == 1 || type == 4) && !inverted
						{
							other.alarm[2] = 1;
						}
					}

					if instance_exists(Player)
					{
					if Player.ultra_got[37]==1//Rebel Ultra A Personal Guard
					maxhealth=30;
					else
					maxhealth = 12;
					}
				}
				var tossAngle = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)
				if Player.ultra_got[38]//Rebel Ultra B Riot
				{
					with instance_create(x,y,Ally) {
						throwDirection = tossAngle;
						motion_add(throwDirection,throwSpeed);
					}
				}
				with instance_create(x,y,Ally) {
					throwDirection = tossAngle;
					motion_add(throwDirection,throwSpeed);
				}

				Sleep(40)
				instance_create(x,y,Dust)
			}
		}

		//PLANT
		if race == 5
		{
			if !ultra_got[19] || (canKillKillKill <= 0 && altUltra)
			{
				var poppedSeed = false;
				var tangles = 0;
			    if ultra_got[20] && !Player.altUltra
				{//STEREO SNARES
					if !instance_exists(TangleSeed)
					{
						var oldestTangle = 99999;
						with Tangle
						{
							if mask_index != sprTangleVine
							{
								tangles += 1;
								oldestTangle = min(tangleNumber,oldestTangle);
							}
						}
						var killedIt = false;
						with Tangle
						{
							if tangles > 1 
							{
								if tangleNumber == oldestTangle
								{
									instance_destroy();
									killedIt = true;
								}
								else
								{
									tangleNumber -= 1;	
								}
							}
						}
						if killedIt
							tangles -= 1;
					}
				    with TangleSeed
				    {
						snd_play(sndPlantPopOpen);
						poppedSeed = true;
						instance_destroy();
					}
			    }
				else {
					if !instance_exists(TangleSeed)
						with Tangle
							instance_destroy();
					with TangleSeed
					{
						snd_play(sndPlantPopOpen);
						poppedSeed = true;
						instance_destroy();
					}
				}
				if !poppedSeed
				{
					if skill_got[5]
						snd_play_2d(sndPlantFireTB);
					else
						snd_play_2d(sndPlantFire);

					with instance_create(x,y,TangleSeed)
					{
						if other.skill_got[other.maxskill + 1]
						{
							alarm[1] = 1;
						}
						motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y),7)
						image_angle = direction
						tangleNumber = tangles + 1;
						team = other.team
					}
				}
			}
			else if altUltra  && canKillKillKill > 0 && !instance_exists(KillKill) {
				BackCont.shake += 10;
				with instance_nearest(UberCont.mouse__x,UberCont.mouse__y,enemy)
				{
					if team != 2 && point_distance(x,y,UberCont.mouse__x,UberCont.mouse__y) < 48
					{
						other.canKillKillKill -= 1;
						snd_play_2d(sndPlantKillKillKill,0,false,false,1);
						with instance_create(x,y,KillKill) {
							owner = other.id;
							target = other.object_index;
						}
						Sleep(50);
						BackCont.shake += 10;
						with other
						{
							if skill_got[5]
							{
								scrHeal(2)
								snd_play(sndHealthPickup);
							}
						}
					}
				}
			
			}
		}

		scrYVPower();
	

		//HUNTER
		if (race == 11)
		{
			if ultra_got[43] && altUltra
			{
				if !instance_exists(HunterSniperEye)
				{
					if hunterEye > hunterEyeMax*0.7
						snd_play_fire(sndSniperEyeUpg);
					else
						snd_play_fire(sndSniperEye);
					var aimDirection = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
					with instance_create(x+(right*2),y+0.5,RedirectFX)
					{
						if other.bskin == 1
							sprite_index = sprHunterEyeSniperB;
						else if other.bskin == 2
							sprite_index = sprHunterEyeSniperC;
						else
							sprite_index = sprHunterEyeSniperA;
						image_angle = aimDirection;
					}
					var he = round(hunterEye)
					with instance_create(x+(right*2),y+0.5,HunterSniperEye)
					{
						image_angle = aimDirection;
						dmg = clamp(round(he*0.3),4,60);
						image_yscale = clamp(he*0.015,0.5,2.5);
						confuseTime = clamp(he*0.2,4,40);
						var addTime = clamp(floor(he*0.025),0,5);
						alarm[1] += addTime;
						alarm[2] += addTime;
						team = other.team;
						if other.bskin == 1
							sprite_index = sprHunterSniperB;
						else if other.bskin == 2
							sprite_index = sprHunterSniperC;
						else
							sprite_index = sprHunterSniperA;
						if other.hunterEye >= other.hunterEyeMax
						{
							alarm[0] = 1;	
						}
						event_user(0);
					}

					BackCont.viewx2 += lengthdir_x(clamp(hunterEye*0.25,5,30),aimDirection+180)*UberCont.opt_shake
					BackCont.viewy2 += lengthdir_y(clamp(hunterEye*0.25,5,30),aimDirection+180)*UberCont.opt_shake
					BackCont.shake += clamp(hunterEye*0.05,3,10);
					//Max = 200;
					hunterEye = 0;
				}
			}
			else if ultra_got[44]{//Hunter Ultra D CRACKSHOT
				if(instance_exists(enemy)){
					var n = instance_nearest(mouse_x,mouse_y,enemy)
					if (point_distance(mouse_x,mouse_y,n.x,n.y) < 48 && n.team != team && n.my_health > 0) {
						snd_play_2d(sndSniperTarget);

					    with instance_create(mouse_x,mouse_y,Marker) {
							target=instance_nearest(x,y,enemy);
							image_angle=30*(MarkerNr-1);
				        }
        
				        if instance_number(Marker)>3{//Override markers
							with Marker {
						        if (MarkerNr==1) {
									instance_destroy();
								}
						        MarkerNr-=1;
						        image_angle=30*MarkerNr;
							}
				        }
				    }
				    else {
						with Marker//if you place a marker not near an enemy all markers dissapear?
							instance_destroy();
					}
			    }
			}
			else
			{// marker ability
				if (instance_exists(Marker)){
					with Marker
						instance_destroy();
				}
				if (instance_exists(enemy)){
			
					var n = instance_nearest(mouse_x,mouse_y,enemy)
					if(point_distance(mouse_x,mouse_y,n.x,n.y) < 48 && n.team != team && n.my_health > 0)
					{
					    snd_play_2d(sndSniperTarget);
					    with instance_create(mouse_x,mouse_y,Marker) {
							target=instance_nearest(x,y,enemy);
					    }
				    }
				}
			}
		}
	}
	////////KEY RELEASE////////
	if KeyCont.key_spec[p] == 3
	{
		if race == 23
		{
			audio_stop_sound(sndFrogLoop) 
			audio_stop_sound(sndFrogLoopButt)
			if toxicamount > 10
			{
				if skill_got[5]=1
				{
					snd_play_2d(sndFrogEndButt);
					snd_play_2d(sndFrogGasReleaseButt);
				}
				else
				{
					snd_play_2d(sndFrogEnd);
					snd_play_2d(sndFrogGasRelease);
				}
			}
		}
	}
	////////SHIT HELD////////
	if KeyCont.key_spec[p] = 1 or KeyCont.key_spec[p] = 2
	{
		//PANDA ALT ULTRA
		if ultra_got[55] && altUltra
		{
			if can_shoot == 1
			{
				if ammo[wep_type[wep]] < wep_cost[wep] and KeyCont.key_spec[p] = 1 and wep_type[wep] != 0
					scrEmpty()
				if rad - wep_rad[wep] < 0
				{
					//not enough radiation
					clicked = 0
					scrEmptyRad();
					other.wkick = -2
				}
				if ammo[wep_type[wep]] >= wep_cost[wep] and rad>=wep_rad[wep]
				{
					reload = min(reload + wep_load[wep],wep_load[wep]);
					can_shoot = 0
					var dir = point_direction(Player.x,Player.y,UberCont.mouse__x,UberCont.mouse__y)+180;
					var xx = UberCont.mouse__x + lengthdir_x(4,dir);
					var yy = UberCont.mouse__y + lengthdir_y(4,dir);
					with instance_create(xx,yy,CloneShooter)
					{
						wepflip = other.wepflip;
						wepright = other.wepright;
						wep = other.wep;
						theAim = dir + 180;
						scrFire();
						alarm[0] = wep_load[wep];
						if reload < other.reload
							other.reload = reload;
					}
					scrSpendingAmmo(wep_type[wep],wep_cost[wep]);
					if (Player.alarm[2] < 1)//Infinite ammo
					{
						ammo[wep_type[wep]] -= wep_cost[wep]
						ammo[wep_type[wep]] = max(0,ammo[wep_type[wep]]);
						rad -= wep_rad[wep]
						rad = max(rad,0);
					}
				}
			}
		} 
		else if race == 14 && PlayerAlarms2.alarm[7] < 1
		{
			scrPandaThrow();
		}
		//CRYSTAL
		if race == 2 && !instance_exists(CrystalShield) && !instance_exists(CrystalShieldDelay)//Change this ability to longer lasting shield.
		{
			//instance_create(x,y,CrystalTorpedo)
			instance_create(x,y,CrystalShield)
		}
		
		//MELTING
		if race == 4 && (KeyCont.key_spec[p] = 1 || !instance_exists(MeltingDelay))
		{
			instance_create(x,y,MeltingDelay);
			var didKill = 0;
			var numberOfEnems = 0;
			if instance_exists(IDPDVan)
				numberOfEnems = instance_number(IDPDVan);
			if  (instance_number(enemy) > numberOfEnems)
			{
				var gotButt = skill_got[5]
				with CorpseCollector
				{
					var al = ds_list_size(corpses)
					var markForDelete = [];
					var j = 0;
					if gotButt
					{
						for (var i = 0; i < al; i++)
						{
							var corpse = corpses[| i];
							var corpseSize = corpse.mySize;
							var xx = corpse.xx;
							var yy = corpse.yy;
							if point_distance(xx,yy,other.x,other.y) < 224//xx > __view_get( e__VW.XView, 0 ) and xx < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and yy > __view_get( e__VW.YView, 0 ) and yy < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
							{
								didKill += 1;
								with instance_create(x,y,BloodStreak)
								{
									motion_add(point_direction(Player.x,Player.y,xx,yy),8)
									image_angle = direction
								}
								scrAddToBGFXLayer(sprMeltSplatBig,choose(0,1,2,3,4),xx,yy,1,1,random(360),c_white,1);
								if corpseSize > 4
								{
									var ang = random(360)
									scrSpawnBloodBullets(xx,yy,2,12,-1);
									with instance_create(xx+lengthdir_x(70,ang),yy+lengthdir_y(70,ang),MeatExplosion)
									{
										destroyAll = true;
									}
									with instance_create(xx+lengthdir_x(70,ang+120),yy+lengthdir_y(70,ang+120),MeatExplosion)
									{
										destroyAll = true;
									}
									with instance_create(xx+lengthdir_x(70,ang+240),yy+lengthdir_y(70,ang+240),MeatExplosion)
									{
										destroyAll = true;
									}
								}
								var ang = random(360)
								if corpseSize > 2
								{
									scrSpawnBloodBullets(xx,yy,4,10,-1);
									with instance_create(xx,yy,MeatExplosion)
									{
										destroyAll = true;
									}
									with instance_create(xx+lengthdir_x(44,ang),yy+lengthdir_y(44,ang),MeatExplosion)
									{
										destroyAll = true;
										dmg -= 1;
									}
									with instance_create(xx+lengthdir_x(44,ang+120),yy+lengthdir_y(44,ang+120),MeatExplosion)
									{
										destroyAll = true;
										dmg -= 1;
									}
									with instance_create(xx+lengthdir_x(44,ang+240),yy+lengthdir_y(44,ang+240),MeatExplosion)
									{
										destroyAll = true;
										dmg -= 1;
									}
								}
								else
								{
									scrSpawnBloodBullets(xx,yy,3,8,-1);
									with instance_create(xx+lengthdir_x(24,ang),yy+lengthdir_y(24,ang),MeatExplosion)
									{
										destroyAll = true;
									}
									with instance_create(xx+lengthdir_x(24,ang+120),yy+lengthdir_y(24,ang+120),MeatExplosion)
									{
										destroyAll = true;
										dmg -= 1;
									}
									with instance_create(xx+lengthdir_x(24,ang+240),yy+lengthdir_y(24,ang+240),MeatExplosion)
									{
										destroyAll = true;
										dmg -= 1;
									}
								}
								markForDelete[j] = i;
								j ++;
							}
						}
					}
					else
					{
						for (var i = 0; i < al; i++)
						{
							var corpse = corpses[| i];
							var corpseSize = corpse.mySize;
							var xx = corpse.xx;
							var yy = corpse.yy;
							if point_distance(xx,yy,other.x,other.y) < 224//xx > __view_get( e__VW.XView, 0 ) and xx < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and yy > __view_get( e__VW.YView, 0 ) and yy < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
							{
								didKill += 1
								with instance_create(x,y,BloodStreak)
								{
									motion_add(point_direction(Player.x,Player.y,xx,yy),8)
									image_angle = direction
								}
								if corpseSize > 3
								{
									scrSpawnBloodBullets(xx,yy,3,9,-1);
									scrAddToBGFXLayer(sprMeltSplatBig,choose(0,1,2,3,4),xx,yy,1,1,random(360),c_white,1);
									var ang = random(360)
									with instance_create(xx+lengthdir_x(24,ang),yy+lengthdir_y(24,ang),MeatExplosion)
									{
										dmg -= 1;
										destroyAll = true;
									}
									with instance_create(xx+lengthdir_x(24,ang+120),yy+lengthdir_y(24,ang+120),MeatExplosion)
									{
										dmg -= 1;
										destroyAll = true;
									}
									with instance_create(xx+lengthdir_x(24,ang+240),yy+lengthdir_y(24,ang+240),MeatExplosion)
									{
										dmg -= 1;
										destroyAll = true;
									}
								}
								else
								{
									scrAddToBGFXLayer(sprMeltSplat,choose(0,1,2,3,4),xx,yy,1,1,random(360),c_white,1);
									with instance_create(xx,yy,MeatExplosion)
										destroyAll = true;
									scrSpawnBloodBullets(xx,yy,2,7,-1);
								}
								markForDelete[j] = i;
								j ++;
							}
						}
					}
					for (var i = 0; i < j; i++)
					{
						ds_list_delete(corpses,markForDelete[i]);
					}
				}
				if gotButt
				{
					with Corpse
					{
						if (image_speed == 0 || alarm[6] < 1) && point_distance(x,y,other.x,other.y) < 224
						{
							var ang = random(360)
							didKill += 1
							instance_destroy()
							with instance_create(x,y,BloodStreak)
							{
								motion_add(point_direction(Player.x,Player.y,x,y),8)
								image_angle = direction
							}
							scrAddToBGFXLayer(sprMeltSplatBig,choose(0,1,2,3,4),x,y,1,1,random(360),c_white,1);
							if mySize > 4
							{
								scrSpawnBloodBullets(x,y,2,12,-1);
								with instance_create(x+lengthdir_x(70,ang),y+lengthdir_y(70,ang),MeatExplosion)
									destroyAll = true;
								with instance_create(x+lengthdir_x(70,ang+120),y+lengthdir_y(70,ang+120),MeatExplosion)
									destroyAll = true;
								with instance_create(x+lengthdir_x(70,ang+240),y+lengthdir_y(70,ang+240),MeatExplosion)
									destroyAll = true;
							}
							ang += 60;
							if mySize > 2
							{
								scrSpawnBloodBullets(x,y,4,10,-1);
								with instance_create(x,y,MeatExplosion)
									destroyAll = true;
								with instance_create(x+lengthdir_x(44,ang),y+lengthdir_y(44,ang),MeatExplosion)
								{
									destroyAll = true;
									dmg -= 1;
								}
								with instance_create(x+lengthdir_x(44,ang+120),y+lengthdir_y(44,ang+120),MeatExplosion)
								{
									destroyAll = true;
									dmg -= 1;
								}
								with instance_create(x+lengthdir_x(44,ang+240),y+lengthdir_y(44,ang+240),MeatExplosion)
								{
									destroyAll = true;
									dmg -= 1;
								}
							}
							else
							{
								scrSpawnBloodBullets(x,y,3,8,-1);
								with instance_create(x+lengthdir_x(24,ang),y+lengthdir_y(24,ang),MeatExplosion)
									destroyAll = true;
								with instance_create(x+lengthdir_x(24,ang+120),y+lengthdir_y(24,ang+120),MeatExplosion)
									destroyAll = true;
								with instance_create(x+lengthdir_x(24,ang+240),y+lengthdir_y(24,ang+240),MeatExplosion)
									destroyAll = true;
							}
						}
					}
				}
				else
				{
					with Corpse
					{
						if (image_speed == 0 || alarm[6] < 1) && point_distance(x,y,other.x,other.y) < 224
						{
							didKill += 1
							instance_destroy()
							with instance_create(x,y,BloodStreak)
							{
								motion_add(point_direction(Player.x,Player.y,x,y),8)
								image_angle = direction
							}
							if mySize > 3
							{
								scrSpawnBloodBullets(x,y,3,9,-1);
								scrAddToBGFXLayer(sprMeltSplatBig,choose(0,1,2,3,4),x,y,1,1,random(360),c_white,1);
								var ang = random(360)
								with instance_create(x+lengthdir_x(24,ang),y+lengthdir_y(24,ang),MeatExplosion)
								{
									destroyAll = true;
									dmg -= 1;
								}
								with instance_create(x+lengthdir_x(24,ang+120),y+lengthdir_y(24,ang+120),MeatExplosion)
								{
									destroyAll = true;
									dmg -= 1;
								}
								with instance_create(x+lengthdir_x(24,ang+240),y+lengthdir_y(24,ang+240),MeatExplosion)
								{
									destroyAll = true;
									dmg -= 1;
								}
							}
							else
							{
								scrAddToBGFXLayer(sprMeltSplat,choose(0,1,2,3,4),x,y,1,1,random(360),c_white,1);
								with instance_create(x,y,MeatExplosion)
									destroyAll = true;
								scrSpawnBloodBullets(x,y,2,7,-1);
							}
						}
					}
				}
				if ultra_got[13] && !altUltra {
					var dmgDeal = scrCalculateFinalDamage(5);
					if gotButt
					{
						with enemy {
							if my_health <= dmgDeal && point_distance(x,y,other.x,other.y) < 224
							{
								//melting ultra a brain capacity
								DealDamage(dmgDeal,false,true,false);
								morphMe = 6;
								didKill += 1
								with instance_create(x,y,BloodStreak)
								{
									motion_add(point_direction(Player.x,Player.y,x,y),8)
									image_angle = direction
								}
								var ang = random(360);
								scrAddToBGFXLayer(sprMeltSplatBig,choose(0,1,2,3,4),x,y,1,1,random(360),c_white,1);
								if mySize > 4
								{
									scrSpawnBloodBullets(x,y,2,12,-1);
									with instance_create(x+lengthdir_x(70,ang),y+lengthdir_y(70,ang),MeatExplosion)
										destroyAll = true;
									with instance_create(x+lengthdir_x(70,ang+120),y+lengthdir_y(70,ang+120),MeatExplosion)
										destroyAll = true;
									with instance_create(x+lengthdir_x(70,ang+240),y+lengthdir_y(70,ang+240),MeatExplosion)
										destroyAll = true;
								}
								ang += 60;
								if mySize > 2
								{
									scrSpawnBloodBullets(x,y,4,10,-1);
									with instance_create(x,y,MeatExplosion)
										destroyAll = true;
									with instance_create(x+lengthdir_x(44,ang),y+lengthdir_y(44,ang),MeatExplosion)
									{
										destroyAll = true;
										dmg -= 1;
									}
									with instance_create(x+lengthdir_x(44,ang+120),y+lengthdir_y(44,ang+120),MeatExplosion)
									{
										destroyAll = true;
										dmg -= 1;
									}
									with instance_create(x+lengthdir_x(44,ang+240),y+lengthdir_y(44,ang+240),MeatExplosion)
									{
										destroyAll = true;
										dmg -= 1;
									}
								}
								else
								{
									scrSpawnBloodBullets(x,y,3,8,-1);
									with instance_create(x+lengthdir_x(24,ang),y+lengthdir_y(24,ang),MeatExplosion)
										destroyAll = true;
									with instance_create(x+lengthdir_x(24,ang+120),y+lengthdir_y(24,ang+120),MeatExplosion)
										destroyAll = true;
									with instance_create(x+lengthdir_x(24,ang+240),y+lengthdir_y(24,ang+240),MeatExplosion)
										destroyAll = true;
								}
							}
						}
					}
					else
					{
						with enemy {
							if my_health <= dmgDeal && point_distance(x,y,other.x,other.y) < 224
							{
								with instance_create(x,y,BloodStreak)
								{
									motion_add(point_direction(Player.x,Player.y,x,y),8)
									image_angle = direction
								}
								if mySize > 3
								{
									scrSpawnBloodBullets(x,y,3,9,-1);
									scrAddToBGFXLayer(sprMeltSplatBig,choose(0,1,2,3,4),x,y,1,1,random(360),c_white,1);
									var ang = random(360)
									with instance_create(x+lengthdir_x(24,ang),y+lengthdir_y(24,ang),MeatExplosion)
									{
										destroyAll = true;
										dmg -= 1;
									}
									with instance_create(x+lengthdir_x(24,ang+120),y+lengthdir_y(24,ang+120),MeatExplosion)
									{
										destroyAll = true;
										dmg -= 1;
									}
									with instance_create(x+lengthdir_x(24,ang+240),y+lengthdir_y(24,ang+240),MeatExplosion)
									{
										destroyAll = true;
										dmg -= 1;
									}
								}
								else
								{
									scrAddToBGFXLayer(sprMeltSplat,choose(0,1,2,3,4),x,y,1,1,random(360),c_white,1);
									with instance_create(x,y,MeatExplosion)
										destroyAll = true;
									scrSpawnBloodBullets(x,y,2,7,-1);
								}
							}
						}
					}
				}
			}
			
			if didKill > 0
			{
				if skill_got[maxskill + 1]
				{
					snd_play(sndMeltingImmune,0.1);
					if didKill > 9
						scrHeal(1,false,true,0.2);
					alarm[3] = max(alarm[3], clamp(floor(didKill*0.5),5,16));
					scrGiveEuphoriaShield();
				}
				if !audio_is_playing(sndCorpseExploUpg) && !audio_is_playing(sndCorpseExplo)
				{
					snd_play(sndExplosion);
					if Player.skill_got[5] = 1
						snd_play_2d(choose(sndCorpseExploUpg,sndCorpseExploUpg,sndMeatExplo,sndCorpseExplo),0.05)
					else
						snd_play_2d(sndCorpseExplo)	
				}
			}
		}
		
		if race == 25 && (KeyCont.key_spec[p] = 1 || (ultra_got[99] && !instance_exists(MeltingDelay)))//Mutation doctor
		{
			if ultra_got[99]
			{//necro doctor
				instance_create(x,y,MeltingDelay);
				//snd_play_2d(sndNecromancerRevive)
				        //audio_stop_sound(sndBouncerHitWall)
				var markedForRev = false;
			    var numberOfEnems = 0;
				if instance_exists(IDPDVan)
					numberOfEnems = instance_number(IDPDVan);
				if (instance_number(enemy) > numberOfEnems)
				{
					with CorpseCollector
					{
						var al = ds_list_size(corpses)
						var markForDelete = [];
						var j = 0;
						for (var i = 0; i < al; i++)
						{
							var corpse = corpses[| i];
							var xx = corpse.xx;
							var yy = corpse.yy;
							if point_distance(xx,yy,other.x,other.y) < 250//xx > __view_get( e__VW.XView, 0 ) and xx < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and yy > __view_get( e__VW.YView, 0 ) and yy < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
							{
								with instance_create(xx,yy,BloodStreak)
								{
									motion_add(point_direction(Player.x,Player.y,x,y),8)
									image_angle = direction
								}
								if corpse.mySize > 2
									scrAddToBGFXLayer(sprMeltSplatBig,choose(0,1,2,3,4),xx,yy,1,1,random(360),c_white,1);
								else
									scrAddToBGFXLayer(sprMeltSplat,choose(0,1,2,3,4),xx,yy,1,1,random(360),c_white,1);
								instance_create(xx,yy,AllyFreak);
								markedForRev = true;
								markForDelete[j] = i;
								j ++;
							}
						}
						for (var i = 0; i < j; i++)
						{
							ds_list_delete(corpses,markForDelete[i]);
						}
					}
					with Corpse
					{
						if (image_speed == 0 || alarm[6] < 1) //and x > __view_get( e__VW.XView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y > __view_get( e__VW.YView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
							&& point_distance(x,y,other.x,other.y) < 250
						{
						    instance_destroy()
						    with instance_create(x,y,BloodStreak)
						    {
								motion_add(point_direction(Player.x,Player.y,x,y),8)
								image_angle = direction
						    }
						    if mySize > 2
								scrAddToBGFXLayer(sprMeltSplatBig,choose(0,1,2,3,4),x,y,1,1,random(360),c_white,1);
							else
								scrAddToBGFXLayer(sprMeltSplat,choose(0,1,2,3,4),x,y,1,1,random(360),c_white,1);
						    instance_create(x,y,AllyFreak);
							markedForRev = true;
					    }
					}
					if markedForRev
					{
						snd_play(sndNecromancerRevive);
						scrDoctorThroneButt(4,2);
					}
				}

			}
			else if ultra_got[98]
			{
				if rad > 16
				{
					audio_stop_sound(sndMutant0Slct)
					audio_sound_pitch(sndMutant0Slct,random_range(0.6,0.9))
					audio_play_sound(sndMutant0Slct,90,0)
					instance_create(UberCont.mouse__x,UberCont.mouse__y,Infect);
					rad -= 16;
					scrDoctorThroneButt();
				}
				else
					scrEmptyRad();

			}
			else// if my_health > 1 || !scrIsGamemode(9)
			{
				//Regular active 
				if (!scrIsCrown(41) && (!skill_got[5] || my_health > 1) || my_health > 2)
				{
					if my_health == 1 && skill_got[32] && isAlkaline
					{
						isAlkaline = false;
						var h = 4;
						my_health = min(h,maxhealth);
				
						with instance_create(x,y,SharpTeeth)
							owner=other.id;
						snd_play(sndAlkalineProc,0,true)
						var pt = instance_create(x,y,PopupText)
						if UberCont.opt_ammoicon
						{
							if my_health = maxhealth
								pt.mytext = "MAX";
							else
								pt.mytext = "+"+string(h-1);
				
							pt.sprt = sprHPIconPickup;
						}
						else
						{
							if my_health = maxhealth
								pt.mytext = "MAX HP";
							else
								pt.mytext = "+"+string(h-1)+" HP";
						}
						Sleep(50);
					}
					else
					{
						DealDamage(1,false,false,false);
						hitBy = sprite_index;
						exception = true;
					    if my_health<=0 //KILL YOSELF USING ACTIVE
					    {
							if skill_got[46] && peaceBarriers > 0
							{
								my_health = 1;
								audio_stop_sound(snd_hurt);
								snd_play_2d(sndPeaceHit,0.1);
								scrGiveEuphoriaShield();
								alarm[3] = max(alarm[3],6);
								peaceBarriers -= 1;
								peaceBarrierTime = 0;
							}
							else if armour > 0
							{
								armour -= 1;
								my_health = 1;
							}
						    else if skill_got[25]//strong spirit
						    {
							    if strongspirit==true&&strongspiritused==false
							    {
								    snd_play(sndStrongSpiritLost);
								    my_health = 1;
									BackCont.shake += 10;
									Sleep(50);
									alarm[3] += 18;
									snd_hurt = sndDamageNegate;
									scrGiveEuphoriaShield();
								    strongspiritused=true;
								    strongspirit=false;
									with instance_create(x,y,StrongSpiritBlock)
									{
										image_speed = 0.5;
									}
							    }
							    else
									scrUnlockCSkin(25,"HAHAHAHAHA!",0);
						    }
						    else
								scrUnlockCSkin(25,"HAHAHAHAHA!",0);
					    }
					}
				    //if my_health<1&&strongspirit
				    image_index=0;
				    sprite_index=spr_hurt;
				    snd_play_2d(snd_hurt_actual, hurt_pitch_variation);
				    repeat(14)
				    {
					    with instance_create(x,y,Rad)
					    {
							motion_add(other.direction,other.speed)
						    motion_add(random(360),random(5)+3)
						    repeat(speed)
						    speed *= 0.9
						}
				    }
					scrDoctorThroneButt();
				}
			}
		}
		
		//ANGEL
		if race == 18 && !instance_exists(AngelActive) //ANGEL
		{
			if instance_exists(AngelActiveDelay)
			{
				if KeyCont.key_spec[p] == 1
					snd_play_2d(sndAngelActiveCant,0.05);
			}
			else
			{
				KeyCont.key_spec[p] = 2;
				var takePercentage = 0.45;
				var wepType = TargetWepTypeForAmmoConsumption(takePercentage);
				if wepType != 0 || scrIsCrown(40)
				{
					if wepType != wep_type[bwep] && wepType != wep_type[wep]
						takePercentage *= 3;
					var cost = typ_ammo[wepType]*takePercentage;
					if (ammo[wepType]-cost >= 0 || alarm[2] > 0) || (ultra_got[70] && ammo[wepType] > 0)
					{
						snd_hurt = sndDamageNegate;
						instance_create(x,y,AngelActive);
						if ultra_got[72] {
							snd_play_2d(sndAngelActiveUpg,0.1,false,false,2,1);
							if altUltra {//Angel mirror
								instance_create(x,y,AngelActiveMouse);	
							}
						} else {
							snd_play_2d(sndAngelActive,0.1,false,false,2,1);
						}
						if alarm[2] < 1
							ammo[wepType]-= cost//2.5?
						scrSpendingAmmo(wepType,cost);
						var heal = 0;
						if  ammo[wepType] <= 0
						{
							if scrIsCrown(13)
							{
								with Crown {
									event_user(0);	
								}
							}
							if ultra_got[70]
								heal += 2;
						}
						if UberCont.opt_ammoicon
						{
							dir = instance_create(x,y,PopupText)
							dir.sprt = sprAmmoIconsPickup
							dir.ii = wepType;
							dir.theColour = c_red;
							dir.mytext = "-"+string(round(cost));
						}
						else
						{
							dir = instance_create(x,y,PopupText)
							dir.theColour = c_red;
							dir.mytext = "-"+string(round(cost))+" "+string(other.typ_name[wepType])
						}
						//HEAL
						if (skill_got[5])
						{
							angelHeal = !angelHeal;
							if (angelHeal)
							{
								heal ++;
							}
						}
						if heal > 0
						{
							if heal > 2
								snd_play_2d(sndHealthPickupUpg)
							scrHeal(heal);
						}
						Sleep(40);
					}
					else
					{
						if KeyCont.key_spec[p] = 1 || !instance_exists(PopupTextLockoutPlayer)
						{
							snd_play_2d(sndAngelActiveCant,0.05);
							snd_play_2d(sndEmpty);
							dir = instance_create(x,y,PopupTextLockoutPlayer);
							dir.theColour = c_red;
							dir.mytext = "NOT ENOUGH AMMO";
						}
					}
				}
				else
				{
					if KeyCont.key_spec[p] = 1 || !instance_exists(PopupTextLockoutPlayer)
					{
						snd_play_2d(sndAngelActiveCant,0.05);
						snd_play_2d(sndEmpty);
						dir = instance_create(x,y,PopupTextLockoutPlayer);
						dir.theColour = c_red;
						dir.mytext = "THIS DOESN'T USE AMMO";
					}
				}
			}
		}
		
		//Good O'l Humphry
		if race == 26 && !instance_exists(HumphryDiscipline) && !instance_exists(HumphryDelay)//Good O'l Humphry
		{
			var insufficientFunds = true;
			var failText = "NOT ENOUGH AMMO";
			var cost = 8;
			if ultra_got[104] && altUltra
			{
				var t1 = wep_type[wep];
				var t2 = wep_type[bwep];
				var al = 6;//weapon types total
				var takePercentage = 0.05//0.015//1.5%%//0.0075;//0.75%
				var startingIndex = 1;
				if scrIsCrown(40)
				{
					startingIndex = 0;
					takePercentage = 0.04;
				}
				for (var i = startingIndex; i < al; i++) {
					if (i != t1 && i != t2)
					{
						if (ammo[i] > 1 && ammo[i] - typ_amax[i]*takePercentage > 0)
						{
							scrSpendingAmmo(i,typ_amax[i]*takePercentage);
							if alarm[2] < 1
								ammo[i] = max(1,ammo[i] - typ_amax[i]*takePercentage);
							insufficientFunds = false;
						}
					}
				}
			}
			else {
				failText = "NOT ENOUGH SKILL";
				var cost = 5;
				if ultra_got[104] && !altUltra
					cost = 10
				if loops > 0
				{
					cost += 2;
					cost += (humphrySkill * 0.15);
				}
				if humphrySkill >= cost//used to be 50//10%?
				{
					insufficientFunds = false;
				}
			}
		
			if (insufficientFunds)
			{
				effective = false;
				if KeyCont.key_spec[p] = 1 || !instance_exists(PopupTextLockoutPlayer)
				{
					//snd_play_2d(snd_lowa,0,true,false,10);
					snd_play(sndEmpty)
					dir = instance_create(x,y,PopupTextLockoutPlayer);
					dir.mytext = failText;
					dir.theColour=c_red;
					drawempty = 30
				}
			}
			else
			{
				var effective = false;
				var u104 = ultra_got[104];
				var projectilesAffected = 0;
				if u104 && altUltra
				{
					snd_play_fire(sndDirector);
					BackCont.shake += 8
					with projectile
					{
						if team != other.team  && point_distance(x,y,other.x,other.y) < 200
						{
							projectilesAffected += 1;
							if isGrenade
							{
								with instance_create(x,y,Notice)
								{
									image_speed = 0.4;
									sprite_index = sprHumphryDestroyProjectile;	
								}
								instance_destroy(id,false);	
							}
							else if typ == 1 && canBeMoved
							{
								team = other.team;
								if instance_exists(enemy)
								{
									var n = instance_nearest(x,y,enemy);
									direction = point_direction(x,y,n.x,n.y);
								}
								else
									direction = random(360);
								image_angle = direction;
								scrRedirectFx();
								event_user(15);
								speed *= 1.2;
								speed += 1;
							}
							else
							{
								with instance_create(x,y,Notice)
								{
									image_speed = 0.4;
									sprite_index = sprHumphryDestroyProjectile;	
								}
								instance_destroy();
							}
						}
					}
				}
				else
				{
					var buffActive = ultra_got[104] * 0.6;
					with projectile
					{
						if (team!= other.team && point_distance(x,y,other.x,other.y) < 300)
						{
							projectilesAffected += 1;
							if (image_xscale > 0.15 + buffActive && image_yscale > 0.2 && speed > 2)
							{
								image_xscale *= 0.75;
								image_yscale *= 0.75;
								effective = true;
								speed = max(speed*0.4,2);
								if canBeMoved {
									x = xprevious;
									y = yprevious;
								}
							} else if (u104)
							{
								effective = true;
								with instance_create(x,y,Notice)
								{
									image_speed = 0.4;
									sprite_index = sprHumphryDestroyProjectile;	
								}
								if isGrenade
									instance_destroy(id,false);
								else
									instance_destroy();	
							}
						}
					}
				}
				var duration = 11;
				var confspr = sprEnemyConfusion;
				if ultra_got[104] && !altUltra
				{
					duration += 8;
					confspr = sprEnemyUltraConfusion;
				}
				var enemiesStunned = 0;
				with enemy
				{
					effective = true;
					speed = 0;
					if instance_exists(myConfusion)
					{
						if alarm[1] > 1 && alarm[1] < 20 && alarm[11] < 20
						{
							enemiesStunned += 1;
							var mydur = duration * 0.5;
							with myConfusion
							{
								alarm[0] += mydur;
								image_speed = 0.4;
								image_index = 0;
							}
							alarm[11] += mydur
							alarm[1] += mydur;
						}
					}
					else
					{
						if alarm[1] > 1 && alarm[1] < 20 && alarm[11] < 20
						{
							enemiesStunned += 1;
							alarm[11] += duration
							alarm[1] += duration;
							myConfusion = instance_create(x,y-max(sprite_height*0.75,8),HumphryConfuse)
							with myConfusion {
								myEnemy = other.id;
								image_xscale = choose(1,-1);
								image_speed = 0.4;
								sprite_index = confspr;
								alarm[0] = duration;
							}
						}
					}
				}
			
				if (effective)
				{
					humphrySkill -= cost;
					Sleep(40);
					if ultra_got[104] && !altUltra
						snd_play_2d(sndHumphryHaltUpg);
					else
						snd_play_2d(sndHumphryHalt);
					if instance_exists(HumphryDiscipline)
					{
						with HumphryDiscipline
						{
							alarm[0] += 5;
						}
					}
					else
					{
						if ultra_got[104] && altUltra
							instance_create(x,y,UseUnequippedAmmo);
						instance_create(x,y,HumphryDiscipline);
					}
					with UberCont
					{
						humphryStopTracker += projectilesAffected;
						humprhyStunTracker += enemiesStunned;
						if humphryStopTracker >= 100 && humprhyStunTracker >= 100
						{
							scrUnlockCSkin(26,"FOR STUNNING 100 ENEMIES#AND STOPPING 100 PROJECTILES", 0);
						}
					}
				}
				else
				{
					snd_play_2d(sndChickenStart);
				}
			}
		}

		//HANDS
		if race == 27 && (!instance_exists(Hand) || ((ultra_got[107] && !altUltra) && instance_exists(Hand) && (instance_number(Hand) < 3 || (scrIsInInvertedArea() && instance_number(Hand) < 4))))//Hands
		{
			var targetPickup = false;
			var grabRange = 48;//same as hunter mark
			var d0 = 999;
			var d1 = 999;
			var d2 = 999;
			var d3 = 999;
			var tar = -1;
			var resulttar = -1;
			var grabbedEnemy = false;
			var slappedProjectile = false;
			var itemGrab = false;
			var listOfHandTargets = [];
			var h = 0;
			var handTargetX = UberCont.mouse__x;
			var handTargetY = UberCont.mouse__y;
			var htdir = point_direction(x,y,handTargetX,handTargetY)
			var htdis = min(point_distance(x,y,handTargetX,handTargetY),300);
			handTargetX = x + lengthdir_x(htdis,htdir);
			handTargetY = y + lengthdir_y(htdis,htdir);
			if instance_number(Hand) > 1
			{
				with Hand
				{
					listOfHandTargets[h] = originalTarget;
					h += 1;
				}
			}
			//Ultra target projectiles
			if ultra_got[107] && !altUltra
			{
				if instance_exists(projectile)
				{
					tar = instance_nearest(UberCont.mouse__x,UberCont.mouse__y,projectile);
					if tar.team != other.team
					{
						d0 = point_distance(UberCont.mouse__x,UberCont.mouse__y,tar.x,tar.y)
						if d0 < grabRange && !array_contains(listOfHandTargets,tar)
						{
							resulttar = tar;
							slappedProjectile = true;
							itemGrab = false;
						}
					}
				}
			}
			if instance_exists(chestprop)
			{
				tar = instance_nearest(UberCont.mouse__x,UberCont.mouse__y,chestprop);
				d1 = point_distance(UberCont.mouse__x,UberCont.mouse__y,tar.x,tar.y)
				if d1 < grabRange && d1 < d0  && !array_contains(listOfHandTargets,tar)
				{
					resulttar = tar;
					slappedProjectile = false;
					itemGrab = true;
				}
			}
			if instance_exists(RadChest)
			{
				tar = instance_nearest(UberCont.mouse__x,UberCont.mouse__y,RadChest);
				d2 = point_distance(UberCont.mouse__x,UberCont.mouse__y,tar.x,tar.y) 
				if d2 < grabRange && d2 < d1 && d2 < d0 && !array_contains(listOfHandTargets,tar)
				{
					resulttar = tar;
					slappedProjectile = false;
					itemGrab = true;
				}
			}
			if instance_exists(enemy)
			{
				tar = instance_nearest(UberCont.mouse__x,UberCont.mouse__y,enemy);
				d3 = point_distance(UberCont.mouse__x,UberCont.mouse__y,tar.x,tar.y);
				if ((tar.team != 0  && tar.team != team && tar.my_health > 0 || (skill_got[5] && (tar.object_index == IDPDVan || tar.object_index == IDPDVanVertical)))
				&& tar.team != team && d3 < grabRange && d3 < d2 && d3 < d1 && d3 < d0 && !array_contains(listOfHandTargets,tar))
				{
					grabbedEnemy = true;
					resulttar = tar;
					slappedProjectile = false;
					itemGrab = false;
				}
			}
			if resulttar == -1
			{
				//Allow pickups to be picked up
				if instance_exists(WepPickup)
				{
					tar = instance_nearest(UberCont.mouse__x,UberCont.mouse__y,WepPickup);
					if tar != noone && tar.visible && !array_contains(listOfHandTargets,tar)
					{
						var d4 = point_distance(UberCont.mouse__x,UberCont.mouse__y,tar.x,tar.y);
						if (d4 < grabRange)
						{
							resulttar = tar;
							slappedProjectile = false;
							itemGrab = true;
						}
					}
				}
			}
			if resulttar == -1
			{
				//CAN GO AND BREAK HAMMERHEAD WALLS
				if instance_exists(HammerHeadWall)
				{
					tar = instance_nearest(UberCont.mouse__x,UberCont.mouse__y,HammerHeadWall);
					if tar != noone && tar.visible && !array_contains(listOfHandTargets,tar)
					{
						var d4 = point_distance(UberCont.mouse__x,UberCont.mouse__y,tar.x,tar.y);
						if (d4 < grabRange)
						{
							resulttar = tar;
							slappedProjectile = false;
							itemGrab = true;
						}
					}
				}
			}
			if ultra_got[108] && resulttar == -1
			{
				if instance_exists(AmmoHPPickup) && resulttar == -1
				{
					tar = instance_nearest(UberCont.mouse__x,UberCont.mouse__y,AmmoHPPickup);
					var d4 = point_distance(UberCont.mouse__x,UberCont.mouse__y,tar.x,tar.y);
					if (d4 < grabRange && !array_contains(listOfHandTargets,tar))
					{
						resulttar = tar;
						targetPickup = true;
						slappedProjectile = false;
						itemGrab = true;
					}
				}
			}
			if resulttar > -1 && instance_exists(resulttar)
			{
				BackCont.viewx2 += lengthdir_x(10,point_direction(x,y,resulttar.x,resulttar.y))*UberCont.opt_shake
				BackCont.viewy2 += lengthdir_y(10,point_direction(x,y,resulttar.x,resulttar.y))*UberCont.opt_shake
				BackCont.shake += 5;
				with instance_create(x,y,Hand)
				{
					if other.ultra_got[108]
					{
						alarm[6] = 1;	
					}
					if other.ultra_got[107]
					{
						if other.altUltra
						{
							if !scrIsInInvertedArea()
								lerpSpeed *= 0.85;//Slower hand
						}
						else
						{
							alarm[3] = 1;//Destroy projectiles
						}
					}
					if other.ultra_got[106] && other.altUltra
					{
						alarm[4] = 1;
					}
					if other.bskin == 2
					{
						sprite_index = sprHandCOpen;
						spr_close = sprHandCClose;
						spr_closing = sprHandCClosing;
						
					}
					else if other.bskin == 1
					{
						sprite_index = sprHandBOpen;
						spr_close = sprHandBClose;
						spr_closing = sprHandBClosing;
					}
					if (other.skill_got[5])
					{
						dmg += 1;
					}
					if other.ultra_got[105] || other.ultra_got[106] || other.ultra_got[107] || other.ultra_got[107]
						dmg ++;
					if other.loops > 0 || scrIsHardMode()
						dmg ++;
					grabbingPickup = targetPickup;
					team = other.team;
					creator = other.id;
					target = resulttar;
					originalTarget = resulttar;
					lerpDistance = point_distance(x,y,target.x,target.y);
					if other.ultra_got[108]
					{
						if scrIsInInvertedArea()
						{
							if (grabbingPickup)
							{
								lerpSpeed *= 4;	
							}
							else
							{
								lerpSpeed *= 3;
							}
						}
						else
						{
							if (grabbingPickup)
							{
								lerpSpeed *= 2;
							}
							else
							{
								lerpSpeed *= 1.5;
							}
						}
					}
					if (itemGrab)
					{
						grabAnItem = true;
						lerpSpeed *= 2;
					}
					if slappedProjectile
					{
						push = false;
						lerpDistance += 8;
						lerpCalc = min(1,lerpSpeed/lerpDistance);//Consistent speed
						lerpCalcBack = lerpCalc;
						grabbingPickup = true;
						//PUNCH FIST!
						sprite_index = spr_close;
						spr_closing = spr_close;
					}
					else if other.skill_got[5] && grabbedEnemy && !grabbingPickup
					{
						push = true;
						lerpDistance += 8;
						lerpCalc = min(1,lerpSpeed/lerpDistance);//Consistent speed
						lerpCalcBack = lerpCalc*0.8;
						//PUNCH FIST!
						sprite_index = spr_close;
						spr_closing = spr_close;
					}
					else if !grabbingPickup
					{
						lerpCalc = min(1,lerpSpeed/lerpDistance);//Consistent speed
						lerpCalcBack = (lerpCalc/target.mySize)*0.75;
						if target.meleedamage > other.skill_got[8]*7//Gamma guts
						{
							lerpCalcBack *= 0.5;// 0.75
						}
					}
					else//ULTRA D
					{
						lerpCalc = min(1,(lerpSpeed)/lerpDistance);
						lerpCalcBack = lerpCalc;
					}
				}
			}
		}
		//YUNG VENUZ
		if (race == 6 && ((ultra_got[24] && !altUltra) || (altUltra && ultra_got[23])) && wep_auto[wep] == 1)
			scrYVPower();

		if ultra_got[19] && !altUltra//Plant sprint
		{/*
		if ultra_got[104]
		{
		with instance_create(x+lengthdir_x(random(4),random(360)),y+lengthdir_y(random(4),random(360)),Smoke)
		{motion_add(other.direction+180+random(40)-20,0.1+random(2))
		team = other.team}
		}
		else
		{*/
			with instance_create(x+lengthdir_x(random(4),random(360)),y+lengthdir_y(random(4),random(360)),Dust)
			{motion_add(other.direction+180+random(40)-20,0.1+random(2))
			team = other.team}
			//}

			if skill_got[2]==1//extra feet
			{
				maxSpeed = 6.5;
				//maxSpeed=5.7;
				//if ultra_got[104]
				//	maxSpeed=7.7
			}
			else
			{
				maxSpeed = 6;
			//maxSpeed=5.2;
			//if ultra_got[104]
			//maxSpeed=7.2
			}
			image_speed=0.6;
		}

		if race == 23 //Frog
		{

		//if ultra_got[92]=0
		//speed=0;
		
		    if toxicamount < maxtoxicamount
		    {
			    if ultra_got[90]//intimacy ultra
				{
					if UberCont.normalGameSpeed == 60
						toxicamount += 1;
					else
						toxicamount += 2;
				}
			    else
				{
					if toxicamount < 0
					{
						if UberCont.normalGameSpeed == 60
							toxicamount += 0.5;
						else
							toxicamount += 1;
					}
					else
					{
						if UberCont.normalGameSpeed == 60
							toxicamount += 0.75;
						else
							toxicamount += 1.5;
					}
				}
				if toxicamount > 0
				{
				    if ultra_got[91]//FROG MOMMA ULTRA C
				    {
						var e = FrogEgg;
							if toxicUltra
								e = UltraFrogEgg;
						if toxicamount = floor(maxtoxicamount*0.1)
							with instance_create(x,y,e)
							{
								team = other.team;	
							}
    
				    }
					if toxicamount % 3 == 0
					{
						if ultra_got[92] && altUltra
						{
							var g = Splinter;
							var d = 5;
							if toxicUltra
							{
								g = UltraSplinter;
								d = 10;
							}
							with instance_create(x,y,g)
							{
								dmg = d;
								motion_add(random(360),18)
								image_angle = direction
								team = other.team
							}
						}
						else
						{
							var g = ToxicThrowerGas;
							if toxicUltra
								g = UltraToxicThrowerGas;
							if toxicamount % 6 == 0
							{
								with instance_create(x,y,g)
								{
									motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y) + random_range(20,-20),1.4+random(1.4)+(other.skill_got[5] * 1.2));
								}
							}
							else
							{
								with instance_create(x,y,g)
								{
									motion_add(random(360),1+random(1.8)+(other.skill_got[5] * 1.2));
									//dmg += 1;
								}
							}
						}
					}
				}
		    }
			else
			{
				audio_stop_sound(sndFrogLoop);
				audio_stop_sound(sndFrogLoopButt);
			}
		}


		//HORROR
		if race == 21 //&& random(2)<1// && !instance_exists(HorrorBeam)
		{

			if ultra_got[0] && altUltra
			{
				if !inDebt || cash > 0
				{
					if UberCont.normalGameSpeed == 60
					{
						cash -= 0.5;
						horrordelay = !horrordelay;
					}
					else
					{
						cash --;
					}
					if !horrordelay
					{
						if horrorcharge=origincharge
							snd_play_2d(sndHorrorCashFlowStart);
							//snd_play_2d(sndHorrorBeam);
						var m = maxcharge;
						if skill_got[5]
							m += 5;
						if horrorcharge < m
						{
							if  UberCont.normalGameSpeed == 60
								horrorcharge += 0.1+(skill_got[5]*0.15);
							else
								horrorcharge += 0.2+(skill_got[5]*0.3);
						}
						if skill_got[5]
						{
							if  UberCont.normalGameSpeed == 60
								horrorhealtime += 0.5;
							else
								horrorhealtime++;

						    if horrorhealtime>70
						    {
							    if my_health<maxhealth
							    {
							        my_health++;
									snd_play(sndHealthPickup);
							        with instance_create(x,y - 8,HealFX)
										sprite_index=sprHorrorTB;
        
							        if UberCont.opt_ammoicon
									{
										dir = instance_create(x,y,PopupText)
										dir.sprt = sprHPIconPickup;
										dir.mytext = "+1"
										if Player.my_health = Player.maxhealth
											dir.mytext = "MAX"
										else if Player.my_health > Player.maxhealth
											dir.mytext = "OVER MAX"
									}
									else
									{
										dir = instance_create(x,y,PopupText)
										dir.mytext = "+1 HP";
										if Player.my_health = Player.maxhealth
											dir.mytext = "MAX HP"
										else if Player.my_health > Player.maxhealth
											dir.mytext = "OVER MAX HP"
									}
							    }
								horrorhealtime=0;
						    }
							if !(audio_is_playing(sndHorrorCashFlowTB))
								snd_loop(sndHorrorCashFlowTB);
						}
						else if !(audio_is_playing(sndHorrorCashFlow))
							snd_loop(sndHorrorCashFlow);
				
						var aimDirection = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
						var r = 1
						if horrorcharge > 12
							r = 2;
						repeat(r)
						with instance_create(x,y,HorrorMoney)
						{
							charge = other.horrorcharge;
							motion_add(aimDirection+((random(charge*4)-charge*2)*other.accuracy),8.5+random(3)+(charge*0.5))
							image_angle = direction
							team = other.team
						}
						var s = max(2,horrorcharge*0.25);
						BackCont.viewx2 += lengthdir_x(s,aimDirection+180)*UberCont.opt_shake
						BackCont.viewy2 += lengthdir_y(s,aimDirection+180)*UberCont.opt_shake
						BackCont.shake += s;
					}
				}
			}
			else if rad>0
			{
				if !instance_exists(HorrorSuckDelay)
					instance_create(x,y,HorrorSuckDelay);
				else
					with HorrorSuckDelay
					{
						alarm[0] = suckDelay;	
					}

			if horrorcharge=origincharge
				snd_play_2d(sndHorrorBeam);

			if horrorcharge<maxcharge
			{
				if  UberCont.normalGameSpeed == 60
					horrorcharge += 0.1+(skill_got[5]*0.1);
				else
					horrorcharge += 0.2+(skill_got[5]*0.2);
			}
			if skill_got[5]
			{
				if  UberCont.normalGameSpeed == 60
					horrorhealtime += 0.5;
				else
					horrorhealtime++;

			    if horrorhealtime>70
			    {
				    if my_health < maxhealth
				    {
				        my_health++;
				        with instance_create(x,y,HealFX)
							sprite_index=sprHorrorTB;
						snd_play(sndHealthPickup);
						var dir;
						if UberCont.opt_ammoicon
						{
							dir = instance_create(x,y,PopupText)
							dir.sprt = sprHPIconPickup;
							dir.mytext = "+1"
							if Player.my_health = Player.maxhealth
								dir.mytext = "MAX"
							else if Player.my_health > Player.maxhealth
								dir.mytext = "OVER MAX"
						}
						else
						{
							dir = instance_create(x,y,PopupText)
							dir.mytext = "+1 HP";
							if Player.my_health = Player.maxhealth
								dir.mytext = "MAX HP"
							else if Player.my_health > Player.maxhealth
								dir.mytext = "OVER MAX HP"
						}
				    }
        
				    horrorhealtime=0;
			    }

			if !(audio_is_playing(sndHorrorLoopTB))
			snd_loop(sndHorrorLoopTB);

    
			}
			else if !(audio_is_playing(sndHorrorLoop))
				snd_loop(sndHorrorLoop);

			if (horrorcharge>7||random(7)<horrorcharge||horrorcharge=origincharge)
			{

				// this makes the beam more efficient
				//if random(3)<2
				var cost = 1.3;
				if ultra_got[83]
					cost = 1.2;
				if  UberCont.normalGameSpeed == 60
				{
					cost *= 0.5;
					horrordelay = !horrordelay;
				}
				rad -= cost;
				if !horrordelay
				{
					if horrorcharge>12&&random(2)<1
					{
						rad -= cost;
					    with instance_create(x+lengthdir_x(random(horrorcharge*0.7),point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)),y+lengthdir_y(random(horrorcharge*0.7),point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)),HorrorBeam)
					    {
					    bskin=other.bskin
					    if bskin = 1
							sprite_index=sprHorrorBeamB;
						else if bskin = 2
							sprite_index=sprHorrorBeamC;
						else if bskin = 3
							sprite_index=sprHorrorBeamD;
						else if bskin = 4
							sprite_index=sprHorrorBeamE;
    
					    originnr=instance_number(HorrorBeam);
    
					    image_angle = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)
					    team = other.team
					    motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y),6);
					    ammo=50
					    charge=other.horrorcharge;
					    event_perform(ev_alarm,0)
					    rad=1;
					        with instance_create(x,y,LightningSpawn)
					        {
					        if other.bskin=1
								sprite_index=sprHorrorBeamSpawnB
							else if other.bskin=2
								sprite_index=sprHorrorBeamSpawnC
							else if other.bskin=3
								sprite_index=sprHorrorBeamSpawnD
							else if other.bskin=4
								sprite_index=sprHorrorBeamSpawnE
					        else
								sprite_index=sprHorrorBeamSpawn
					        image_angle = other.image_angle
					        }
					    }

					}

					with instance_create(x+lengthdir_x(random(horrorcharge*0.6),point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)),y+lengthdir_y(random(horrorcharge*0.6),point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)),HorrorBeam)
					{
					bskin=other.bskin
					if bskin = 1
						sprite_index=sprHorrorBeamB;
					else if bskin = 2
						sprite_index=sprHorrorBeamC;
					else if bskin = 3
						sprite_index=sprHorrorBeamD;
					else if bskin = 4
						sprite_index=sprHorrorBeamE;

					originnr=instance_number(HorrorBeam);

					image_angle = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)
					team = other.team
					motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y),6);
					ammo=50
					charge=other.horrorcharge;
					rad=1;
					event_perform(ev_alarm,0)
					    with instance_create(x,y,LightningSpawn)
					    {
					    if other.bskin=1
							sprite_index=sprHorrorBeamSpawnB
						else if other.bskin=2
							sprite_index=sprHorrorBeamSpawnC
						else if other.bskin=3
							sprite_index=sprHorrorBeamSpawnD
						else if other.bskin=4
							sprite_index=sprHorrorBeamSpawnE
					    else
							sprite_index=sprHorrorBeamSpawn
					    image_angle = other.image_angle
					    }
					}
				}
			}

			if random(4)<1
			{
			    with instance_create(x+lengthdir_x(random(horrorcharge*0.6),point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)),y+lengthdir_y(random(horrorcharge*0.6),point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)),HorrorBeam)
			    {
			    bskin=other.bskin
			    if bskin = 1
					sprite_index=sprHorrorBeamB;
				else if bskin = 2
					sprite_index=sprHorrorBeamC;
				else if bskin = 3
					sprite_index=sprHorrorBeamD;
				else if bskin = 4
					sprite_index=sprHorrorBeamE;
    
			    originnr=instance_number(HorrorBeam);
    
			    image_angle = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)
			    team = other.team
			    motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y),6);
			    ammo=50
			    charge=other.horrorcharge;
				rad=1;
			    event_perform(ev_alarm,0)
			        with instance_create(x,y,LightningSpawn)
			        {
			        if other.bskin=1
						sprite_index=sprHorrorBeamSpawnB
					else if other.bskin=2
						sprite_index=sprHorrorBeamSpawnC
					else if other.bskin=3
						sprite_index=sprHorrorBeamSpawnD
					else if other.bskin=4
						sprite_index=sprHorrorBeamSpawnE
			        else
						sprite_index=sprHorrorBeamSpawn
			        image_angle = other.image_angle
			        }
			    }
			}

		
			BackCont.viewx2 += lengthdir_x(8,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
			BackCont.viewy2 += lengthdir_y(8,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
			BackCont.shake += 0.9


			}
			else if audio_is_playing(sndHorrorLoop)||audio_is_playing(sndHorrorLoopTB)
			{
				audio_stop_sound(sndHorrorLoop);
				audio_stop_sound(sndHorrorLoopTB);
				snd_play_2d(sndHorrorEmpty);
				scrEmptyRad();
			}
			rad = max(rad,0);
		}


		if race==24
		{
			if ultra_got[93] && altUltra
			{
				if !instance_exists(ElementorWind)
				{
					snd_play_2d(sndElementorWind,0.03);
					var aim = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
					repeat(6+(skill_got[5]*2))
					{
						with instance_create(x+random_range(12,-12),y+random_range(12,-12),Dust)
						{
							motion_add(aim+random_range(30,-30),4+other.skill_got[5]+random(4));
						
						}
					}
					with instance_create(x,y,ElementorWind)
					{
						motion_add(aim,4);
						if other.skill_got[5]
						{
							dmg += 1;
							speed += 1;
							projectilePush += 0.19;
						}
						image_angle = direction;
						team = other.team;
					}
				}
			}
			else if !lockoutElementor && !instance_exists(CloudArea)//Elementor
			{
			
				var takePercentage = 0.05;//0.75%
				var originalTakePercentage = takePercentage;
				if skill_got[5]
				{
					takePercentage = 0.04;//0.05%
				}
				var wepType = TargetWepTypeForAmmoConsumption(takePercentage, 5);
				if wepType != wep_type[bwep] && wepType != wep_type[wep]
					takePercentage *= 5;
				var cost = typ_ammo[wepType]*takePercentage;
				if ((wepType != 0  && !scrIsCrown(40)) && (alarm[2] > 0 || ammo[wepType] - cost > 0))
				{
					var myMask = mask_index;
					mask_index=mskWall;
					var am = 1;
					var i = 0;
					if ultra_got[93] && !altUltra
						am = 5;
					var placedWall = false;
					var mx = UberCont.mouse__x;
					var my = UberCont.mouse__y;
					repeat(am)
					{
						placedWall = scrElementorPlaceWall(mx,my);
						switch(i)
						{
							case 0:
								mx = UberCont.mouse__x + 16;
								my = UberCont.mouse__y;
							break;
							case 1:
								mx = UberCont.mouse__x - 16;
								my = UberCont.mouse__y;
							break;
							case 2:
								mx = UberCont.mouse__x;
								my = UberCont.mouse__y + 16;
							break;
							case 3:
								mx = UberCont.mouse__x;
								my = UberCont.mouse__y - 16;
							break;
						}
						i++;
					}
					if (placedWall)
					{
						scrSpendingAmmo(wepType,cost);
						if alarm[2] < 1
							ammo[wepType] = ammo[wepType] - cost;
					}
					mask_index=myMask;
					if (ammo[wepType] <= 0)
					{
						if scrIsCrown(13)
						{
							with Crown {
								event_user(0);	
							}
						}
					}
				}
				else
				{
					lockoutElementor = true;
					snd_play_2d(snd_lowa,0,true,false,10);
					snd_play(sndEmpty)
					var dir = instance_create(x,y,PopupText)
					dir.mytext = "NOT ENOUGH AMMO";
					dir.theColour=c_red;
					drawempty = 30
					BackCont.shake += 5;
				}
			}
		}


		//CHICKEN constant
		if race == 9 && chickenFocus > 0 && !(instance_exists(GenCont))
		{
			if chickenFocus == chickenFocusMax
			{
				with AudioObject
				{
					event_user(0);
				}
			}
			if !skill_got[maxskill + 1] || speed > 2
			{
				if UberCont.normalGameSpeed == 60
					chickenFocus -= chickenFocusCostRate*0.5;
				else
					chickenFocus -= chickenFocusCostRate;
			
				if chickenFocus <= 0
				{
					with ChickenRewindPosition
					{
						if active
						{
							with other
							{
								x = other.x;
								y = other.y;
								scrForcePosition60fps();
								if maxhealth > 0
								{
									//my_health = max(my_health,other.my_health);
									//armour = max(armour, other.armour);
									var healAmount = other.my_health - my_health;
									if healAmount >= 4
									{
										scrUnlockBSkin(9,"FOR REWINDING 4 DAMAGE TAKEN#USING CHICKEN'S REGAL VISION");
									}
									my_health = other.my_health;
									armour = other.armour;
								}
								alarm[3] = max(alarm[3],2);
							}
						}
						instance_destroy();
					}	
				}
			}
			chickenFocusDelayTime = chickenFocusDelay;
			chickenFocusInUse = true;
			var slow = 0.4;
			var slowMove = 0.2;
			room_speed=24;//15
			if UberCont.normalGameSpeed == 60
			{
				room_speed = 48;
				slow = 0.2;
			}
			if (ultra_got[35])
			{
				if altUltra
				{
					chickenFocusDelayTime = chickenFocusDelay * 0.49;
					if UberCont.normalGameSpeed == 60
						chickenFocus -= chickenFocusCostRate*0.15;
					else
						chickenFocus -= chickenFocusCostRate* 0.3;
					var pslow = 2;
					slowMove = 2;
					with projectile
					{
						x -= hspeed*pslow;
						y -= vspeed*pslow;
						speed += friction*pslow;
					}
				}
				else
				{
					var pslow = 0.5;
					if skill_got[12]
						pslow = 0.6;
				
					with projectile
					{
						if team == other.team
						{
							x -= hspeed;
							y -= vspeed;
							speed += friction;
						}
						else
						{
							x -= hspeed*pslow;
							y -= vspeed*pslow;
							speed += friction*pslow;
						}
					}
				}
			}
			else
			{
				with projectile
				{
					x -= hspeed*0.2;
					y -= vspeed*0.2;
					speed += friction * 0.2;
				}
			}
			with enemy {
				if alarm[1] > 1
				{
					alarm[1] += slow;
				}
				x -= hspeed*slowMove;
				y -= vspeed*slowMove;
			}
			if skill_got[maxskill + 1] && !instance_exists(ChickenRewindPosition)
			{
				with instance_create(x,y,ChickenRewindPosition)
				{
					my_health = other.my_health;
					armour = other.armour;
				}
			}
			if instance_exists(Decoy)//CHICKEN VANISH
			{
				instance_create(x+irandom(8)-4,y+irandom(8)-4,Smoke);
			}
			if skill_got[5]//THRONE BUTT
			{//Normal movement speed
				if my_health > 0 && raceOverwrite == -1
				{
					if bskin=1
					{
						spr_walk = sprMutant9BThronebutt;
						if ultra_got[35] && altUltra
							spr_walk=sprMutant9EThronebutt;
					}
					else if bskin=2
						spr_walk = sprMutant9CThronebutt;
					else if bskin=3
						spr_walk = sprMutant9DThronebutt;
					else if bskin=4
						spr_walk = sprMutant9EThronebutt;
					else
					{
						spr_walk=sprMutant9Thronebutt;
						if ultra_got[35] && altUltra
							spr_walk=sprMutant9DThronebutt;
					}
				}

				if skill_got[2]==1//extra feet
				{
					//normal : 4.5
					maxSpeed=5.625//6.3;//6.5// 4.5
				}
				else
				{
					// normal : 4
				maxSpeed=5//5.8;//6//normal 4   4*(30/room_speed)
				}
				//friction = 0.45 normal
				//image_speed = 0.4 normal
				image_speed=0.5////0.7;
				friction = 0.5625//0.90;

				if KeyCont.key_west[p] = 2 or KeyCont.key_west[p] = 1
				hspeed -= 0.75
				if KeyCont.key_east[p] = 2 or KeyCont.key_east[p] = 1
				hspeed += 0.75
				if KeyCont.key_nort[p] = 2 or KeyCont.key_nort[p] = 1
				vspeed -= 0.75
				if KeyCont.key_sout[p] = 2 or KeyCont.key_sout[p] = 1
				vspeed += 0.75
			}
			else
			{
				reload += 0.1;
			    if speed>maxSpeed-0.75//make chicken a lill slower in slow mo when no thronebutt
			    {
					speed-=0.75;
			    }
			}
			if !audio_is_playing(sndChickenLoop) {snd_play_2d(sndChickenStart) snd_loop(sndChickenLoop)}
		}

		//STEROIDS
		if race == 7 and bwep != 0 //and wep != 0
		{
			var keepBwepVisible = true;
			if !ultra_got[27] || altUltra
				scrSwapWeps()
			else if !altUltra{
				twep=bwep;
				bwep=wep;
				scrSwapWeps();
			}
			//if ammo[wep_type[wep]] < wep_cost[wep] and KeyCont.key_spec[p] = 1 and wep_type[wep] != 0
			//	scrEmpty()
			var representingCost = round(wep_cost[wep]);
			var ignoreAmmo = false;
			if ultra_got[70]
				representingCost = min(representingCost,0.5);
			else if scrIsCrown(13)//Crown of drowning
			{
				representingCost = 0;
			}
			else if scrIsGamemode(48)
			{
				representingCost = 0;
				ignoreAmmo = true;
			}
			//var bPuff = canPuffyCheekB;
			if can_shoot = 1 and ((ignoreAmmo || ammo[wep_type[wep]] >= representingCost || wep_type[wep] == 0) and rad>=wep_rad[wep] || alarm[2]>0) && (canPuffyCheek <= 0 || KeyCont.key_spec[p] = 1)
			{
				if (KeyCont.key_spec[p] == 1 || wep_auto[wep] == 1 || wep_auto[wep] == 3)
					scrFire()
					
				keepBwepVisible = wepVisible;
			}
		    scrSwapWeps();
			if wep == 0 && bwep != 0
				scrSwapWeps();
			//canPuffyCheekB = bPuff;
		    if ultra_got[27]=1 && !altUltra{//mirror hands
				bwep=twep
		    }
			if !keepBwepVisible
				bwepVisible = keepBwepVisible;
		}

		//MIND CONTROL
		if race == 3
		{
			var px = x;
			var py = y;
			var od = 180;
			var ps = ultra_got[9] && altUltra;
			var tb = skill_got[5];
			var pp = ultra_got[12];
			if ultra_got[10] && altUltra
			{
				if (!instance_exists(VoidStyle))
				{
					var dis = 48;
					snd_play(sndVoidStyle);
					with enemy
					{
						if (point_distance(x,y,other.x,other.y) > dis)
						{
							scrEyesTelekinesis(true,tb*2 + 4,px,py);
							motion_add(point_direction(x,y,px,py),8 + tb);
						}
					}
					with projectile
					{
						if canBeMoved && team != other.team && point_distance(x,y,other.x,other.y) > dis
						{
							var spd = speed;
							var minSpeed = min(spd,2);
							scrEyesTelekinesisNoCollision(true,tb*2 + 4,px,py);
							motion_add(point_direction(x,y,px,py),8 + tb);
							image_angle = direction;
							speed = spd;
						}
					}
					with instance_create(x,y,VoidStyle)
					{
						owner = other.id;
						team = other.team;
					}
				}
			}
			else
			{
				if !audio_is_playing(sndEyesLoop) snd_loop(sndEyesLoop)

				if !sound_isplaying(sndEyesLoopUpg) and Player.skill_got[5] =1 snd_loop(sndEyesLoopUpg)
			
				with chestprop
				{
					scrEyesTelekinesis(ps,tb,px,py);
				}
				with Pickup
				{
					scrEyesTelekinesisThroughWalls(ps,pp,tb,px,py);
				}
				with RadChest
				{
					scrEyesTelekinesis(ps,tb,px,py);
				}
				with WepPickup
				{
					scrEyesTelekinesisThroughWalls(ps,pp,tb,px,py);
				}
	
				if altUltra && ultra_got[9]
				{
					px = mouse_x;
					py = mouse_y;
					od = 0;
					if !instance_exists(EyesCrosshair)
					{
						instance_create(mouse_x,mouse_y,EyesCrosshair);	
					}
					else
					{
						with EyesCrosshair
						{
							x = mouse_x;
							y = mouse_y;
						}
					}
				}
				with enemy
				{
					scrEyesTelekinesis(ps,tb,px,py);
				}
				with Sheep
				{
					scrEyesTelekinesis(ps,tb,px,py);
				}

				var ts = 1.05+(Player.skill_got[5]*1.1);
				if ultra_got[9] == 1 && altUltra
					ts = 1.3+(Player.skill_got[5]*1.1);
				with projectile
				{
					if canBeMoved && team != 2 //x > __view_get( e__VW.XView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y > __view_get( e__VW.YView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
					&& point_distance(x,y,other.x,other.y) < 250
					{
						var pd = point_direction(x,y,px,py)+od;
						//if !place_meeting(x+lengthdir_x(ts,pd),y,Wall)
							x += lengthdir_x(ts,pd)
						//if !place_meeting(x,y+lengthdir_y(ts,pd),Wall)
							y += lengthdir_y(ts,pd)
					}
				}
				with Explosion
				{
					if point_distance(x,y,other.x,other.y) < 250//x > __view_get( e__VW.XView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y > __view_get( e__VW.YView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ) && team != 2
					{
						var pd = point_direction(x,y,px,py)+od;
						x += lengthdir_x(ts,pd)
						y += lengthdir_y(ts,pd)
					}
				}

				if ultra_got[9] == 1 && !altUltra {//eyes Projectile Style ULTRA A
					scrProjectileStyle(team, px, py);
				}
			}
		}

		//SHEEP
		if race==13 && !ultra_got[49]
		{
			if !instance_exists(SheepStorm)
			{
				if (ultra_got[51] && altUltra && sheepFakeouts > 0)
				{
					//Its hypnosis in click event
				}
				else
				{
					if !instance_exists(SheepStorm)
					{
						with instance_create(x,y,SheepStorm)
						{
							if other.skill_got[other.maxskill+1]
								gotVision = true;
							team=other.team;
						}
						if skill_got[2]==1//extra feet
						{
							maxSpeed=7;
						}
						else
						{
							maxSpeed=6;
						}
					}
				
				}	
			}
			var is60fps = UberCont.normalGameSpeed == 60;
			if !instance_exists(SheepBreak)
			{
				if speed > 4
				{
					var powerMax = 10 + (ultra_got[51] * 5) + (skill_got[5] * 2);
			
					image_speed = 0.5;
					if sheepPower < powerMax
					{
						if is60fps
							sheepPower += 0.38*0.5;
						else
							sheepPower += 0.38;
					}
					else
					{
						sheepPower = powerMax;
					}
					if (skill_got[5])
					{
						if is60fps
							sheepPower += 0.055*0.5;
						else
							sheepPower += 0.055;
					}
					if (skill_got[2])
					{
						if is60fps
							sheepPower += 0.025*0.5;
						else
							sheepPower += 0.025;
					}
					if (ultra_got[51])
					{
						if is60fps
							sheepPower += 0.085*0.5;
						else
							sheepPower += 0.085;
					}
					if sheepPower > sheepPowerToHaveEffect
						image_speed = 0.6;
					if sheepPower >= 10
						image_speed = 0.7;
				}
				else if sheepPower > 0
				{
					if is60fps
						sheepPower = sheepPower - (0.4*0.5);
					else
						sheepPower = sheepPower - 0.4;
					sheepPower = max(sheepPower,0);
					//speed=10;
					var moveBoost = (skill_got[2]*1.4) + (skill_got[5]*1.4) + (ultra_got[5]*2.3);
					if (is60fps)
					{
						//Move in opposite direction to reduce control
						if KeyCont.key_west[p] = 2 or KeyCont.key_west[p] = 1
						hspeed += (2.2-moveBoost)*0.5
						if KeyCont.key_east[p] = 2 or KeyCont.key_east[p] = 1
						hspeed -= (2.2-moveBoost)*0.5
						if KeyCont.key_nort[p] = 2 or KeyCont.key_nort[p] = 1
						vspeed += (2.2-moveBoost)*0.5
						if KeyCont.key_sout[p] = 2 or KeyCont.key_sout[p] = 1
						vspeed -= (2.2-moveBoost)*0.5
						motion_add(direction,(3.5)*0.5);
					}
					else
					{
						//Move in opposite direction to reduce control
						if KeyCont.key_west[p] = 2 or KeyCont.key_west[p] = 1
						hspeed += 2.2-moveBoost
						if KeyCont.key_east[p] = 2 or KeyCont.key_east[p] = 1
						hspeed -= 2.2-moveBoost
						if KeyCont.key_nort[p] = 2 or KeyCont.key_nort[p] = 1
						vspeed += 2.2-moveBoost
						if KeyCont.key_sout[p] = 2 or KeyCont.key_sout[p] = 1
						vspeed -= 2.2-moveBoost
						motion_add(direction,3.5);
					}
					if sheepPower < sheepPowerToHaveEffect && speed > maxSpeed
						speed = maxSpeed;
				}
			}
			else if speed > maxSpeed - 1
			{
				speed = maxSpeed - 1;
			}
		
		}
	
		//NO THING
		if race == 29 && !instance_exists(NoThingVoidConsumption)//NO THING
		{
			snd_play_2d(sndNoThingVoidConsumption,0.01);
			var len = 48;
			var aimDirection = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
			with instance_create(x + lengthdir_x(len,aimDirection),y + lengthdir_y(len,aimDirection),NoThingVoidConsumption)
			{
				direction = aimDirection;
				image_angle = direction;
				speed = 2;
				if other.skill_got[5]
					speed += 1;
			}
			//ALL RADS PICKUPS ETC GO FUCKING EXPLODE
			/*
			if false && instance_exists(Pickup)
			{
				var regal = (!instance_exists(VoidBeam) && skill_got[maxskill + 1])
				var targetedOne = false;
				if skill_got[5]
				{
					var nullVoid = ultra_got[115] ? 1 : 0
					with Rad
					{
						if point_distance(x,y,other.x,other.y) < 300
						{
							targetedOne = true;
							if regal 
							{
								if object_index == Rad
									other.voidBeam += 1;
								else
									other.voidBeam += 5;
							}
							BackCont.shake += 1;
							radValue *= 0.5;
							instance_create(x,y,VoidBlockBig);
							isBeingVoided += nullVoid;
							event_user(0);
							isBeingVoided += nullVoid;
						}
					}
					with AmmoPickup
					{
						if point_distance(x,y,other.x,other.y) < 300
						{
							targetedOne = true;
							BackCont.shake += 2;
							ammoValue *= 0.5;
							if regal
								other.voidBeam += 5;
							with instance_create(x,y,VoidBlockBig) {
								image_xscale += 0.125;
								image_yscale += 0.125;
							}
							event_user(0);
						}
					}
				}
				else
				{
					if ultra_got[115]
					{
						with Pickup
						{
							if object_index != Rad && object_index != BigRad && point_distance(x,y,other.x,other.y) < 300
								isBeingVoided += 1;
						}
					}
					with Pickup
					{
						if point_distance(x,y,other.x,other.y) < 300
						{
							targetedOne = true;
							if isBeingVoided != 1
								instance_destroy();
							isBeingVoided += 1;
							if object_index == Rad
							{
								BackCont.shake += 1;
								if regal
									other.voidBeam += 1;
								instance_create(x,y,VoidBlock);
							}
							else
							{
								BackCont.shake += 2;
								if regal
									other.voidBeam += 5;
								instance_create(x,y,VoidBlockBig);
							}
						}
					}
				}
				if targetedOne
				{
					BackCont.shake += 4;
					with PlayerAlarms3 {
						voidSphereAngle *= -1;	
					}
					if ultra_got[113] && !altUltra
					{
						BackCont.shake += 2;
						repeat(2)
							with instance_create(x + random_range(12,-12),y + random_range(12,-12),PlutoFX)
							{
								sprite_index = sprVoidBulletTrail;
								image_index = irandom(image_number - 1);
								motion_add(random(360),1);
							}
						/*if altUltra
						{
							alarm[2] = 25;
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
						}
						else
						{*/
						/*
							noThingHealth += 1;
							maxhealth += 1;
						
							if !instance_exists(NoThingHealth)
							{
								instance_create(x,y,NoThingHealth);
							}
							else
							{
								with NoThingHealth
								{
									alarm[0] = lifeDuration;	
								}
							}
						//}
					}
					if instance_exists(VoidBlock)
					{
						if skill_got[5]
							snd_play_2d(sndVoidConsumptionL,0.01);
						else
							snd_play_2d(sndVoidConsumptionS,0.01);
					}
					else
					{
						if skill_got[5]
							snd_play_2d(sndVoidConsumptionXL,0.01);
						else
							snd_play_2d(sndVoidConsumptionM,0.01);
					}
					with VoidBlock
					{
						if chain < 2
						{
							image_index = 0;
							image_xscale = max(image_xscale, 1.125);
							image_yscale = image_xscale;
							image_speed = 0.4;
						}
						chain += 1;
					}
					voidBeam = min(voidBeam,voidBeamMax);
					if BackCont.shake > 60
						BackCont.shake = 60;
				}
			}
			*/
		}
	}//END OF HOLD RMB
	else if audio_is_playing(sndEyesLoop) or audio_is_playing(sndChickenLoop) or audio_is_playing(sndEyesLoopUpg) 
	{
	audio_stop_sound(sndEyesLoop) audio_stop_sound(sndEyesLoopUpg) audio_stop_sound(sndChickenLoop)

	if race == 9//CHICKEN reset time
	{
		chickenFocusInUse = false;
		with ChickenRewindPosition
		{
			if active
			{
				with other
				{
					x = other.x;
					y = other.y;
					if maxhealth > 0
					{
						//my_health = max(my_health,other.my_health);
						//armour = max(armour, other.armour);
						var healAmount = other.my_health - my_health;
						if healAmount >= 4
						{
							scrUnlockBSkin(9,"FOR REWINDING 4 DAMAGE TAKEN#USING CHICKEN'S REGAL VISION");
						}
						my_health = other.my_health;
						armour = other.armour;
					}
					scrForcePosition60fps();
					alarm[3] = max(alarm[3],2);
				}
			}
			instance_destroy();
		}
		room_speed=UberCont.normalGameSpeed;

		with Decoy//CHICKEN VANISH
		{
			instance_destroy();
		}

		if my_health > 0 && raceOverwrite == -1
		{
			if bskin=1
			{
				spr_walk = sprMutant9BWalk;
				if ultra_got[35] && altUltra
					spr_walk = sprMutant9EWalk;
			}
			else if bskin=2
				spr_walk = sprMutant9CWalk;
			else if bskin == 3
				spr_walk = sprMutant9DWalk;
			else if bskin == 4
				spr_walk = sprMutant9EWalk;
			else
			{
				spr_walk = sprMutant9Walk;
				if ultra_got[35] && altUltra
					spr_walk = sprMutant9DWalk;
			}
		}
		if skill_got[5]//THRONE BUTT
		{
		        if skill_got[2]==1//extra feet
		        {
		        maxSpeed = 4.5;
		        }
		        else
		        {
		        maxSpeed = 4.0;
		        }
		        friction = 0.45
		        image_speed = 0.4
		}
	}

	}
	else if ultra_got[10] && !altUltra{
		var ps = ultra_got[9] && altUltra;
		var tb = skill_got[5];
		var px = x;
		var py = y;
		//Eyes Monster style Ultra B
		with enemy
		{
			if (
				ps || 
				point_distance(x,y,other.x,other.y) < 250
				/*(
					x > __view_get( e__VW.XView, 0 ) &&
					x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) &&
					y > __view_get( e__VW.YView, 0 ) &&
					y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
				)*/
			)
			{
				var d = 1.1 + tb;
				if UberCont.normalGameSpeed == 60
					d*= 0.5;
				var pd = point_direction(x,y,px,py)+180;
				if !place_meeting(x+lengthdir_x(d,pd),y,Wall)
					x += lengthdir_x(d,pd)
				if !place_meeting(x,y+lengthdir_y(d,pd),Wall)
					y += lengthdir_y(d,pd)
			}
		}
	}
	else if KeyCont.key_spec[p] != 1 and KeyCont.key_spec[p] != 2
	{/*
	if race == 20 
	{
		with ShopWheel
			alarm[0]=1;

		with ShopAmmo
			alarm[0]=1;
	}
	else */if race==21 
	{
	audio_stop_sound(sndHorrorLoopTB);
	audio_stop_sound(sndHorrorLoop); 
	if skill_got[5] && horrorcharge > origincharge*2
	{
		if horrorcharge < 10
		{
			snd_play(sndHorrorBallRelease);	
		}
		else
		{
			snd_play(sndHorrorBallReleaseUpg);	
		}
		var aimDirection = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
		BackCont.viewx2 += lengthdir_x(horrorcharge*0.75,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(horrorcharge*0.75,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += horrorcharge
		with instance_create(x,y,BecomeHorrorBigBall)
		{
			if other.bskin = 1
				sprite_index=sprBecomeHorrorBigBalB;
			else if other.bskin = 2
				sprite_index=sprBecomeHorrorBigBalC;
			else if other.bskin == 3
				sprite_index=sprBecomeHorrorBigBalD;
			else if other.bskin == 4
				sprite_index=sprBecomeHorrorBigBalE;
			team = other.team;
			//Max is about 20
			myPower = other.horrorcharge;
			image_xscale = (0.1 + clamp(myPower*0.025,0,0.75))*2;
			if other.skill_got[17]
			{
				image_xscale *= 1.1;
				image_xscale += 0.15;
				myPower += 1;
			}
			image_yscale = image_xscale;
			direction = aimDirection;
			speed = 1;
			image_angle = direction;
		}
	}
	horrorcharge=origincharge;
		if ((audio_is_playing(sndHorrorCashFlow) || audio_is_playing(sndHorrorCashFlowTB)) && ultra_got[0] && altUltra)
		{
			audio_stop_sound(sndHorrorCashFlow);
			audio_stop_sound(sndHorrorCashFlowTB);
			snd_play_2d(sndHorrorCashFlowEnd);
		}
	}
	if race==22 //rogue
	{
		with PortalStrike
		{
		    if alarm[0]<0
		    {
			if other.skill_got[5]
				snd_play_2d(sndPortalStrikeFireTB);
			else
				snd_play_2d(sndPortalStrikeFire);
	    
			ammo=5;
		    time=2;
		    dir =point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
    
		    if other.skill_got[5]
		    {
		    ammo=14;
		    exploPos=-96;
		    alarm[1]=1;
		    }
    
		    event_perform(ev_alarm,0)
    
    
		    }
		}
	}
	if race == 23//FROG release
	{

		if ultra_got[90]//intimacy
			toxicamount++
		
		if toxicamount > 0
		{
			if ultra_got[92] && altUltra
			{
				toxicamount *= 0.7;//0.6
				toxicamount = ceil(toxicamount);
				if toxicamount > 6
					snd_play(sndSplinterGun,0.1,true);
				var ta = random(360);
				var taStep = 360 / toxicamount;
				var g = Splinter;
				var d = 5;
					if toxicUltra
					{
						g = UltraSplinter;
						d = 9;
					}
				if toxicamount > 3
				{
					with instance_create(x,y,g)
					{
						dmg = d;
						motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y),18)
						image_angle = direction
						team = other.team
					}
				}
				repeat(toxicamount)
				{
					with instance_create(x,y,g)
					{
						motion_add(ta,18)
						image_angle = direction
						team = other.team
					}
					ta += taStep;
				}
			}
			else 
			{
				var spd = 2;
				g = ToxicThrowerGas;
				if toxicUltra
					g = UltraToxicThrowerGas;
				if toxicamount >= maxtoxicamount
					spd = 4;
				if toxicamount > 3
					with instance_create(x,y,g)
					{
						motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y),spd+2+(other.skill_got[5]*2));
						//dmg += 1;
					}
				var counter = 0;
				repeat(toxicamount)
				{
					counter ++;
					if counter % 4 - (skill_got[5]*2) == 0
					{
						with instance_create(x,y,g)
						{
							speed = 0;
							motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y) + random_range(-16,16),spd+1+random(2)+(other.skill_got[5]*2));
							//dmg += 1;
						}
					}
					else
					{
						with instance_create(x,y,g)
						{
							motion_add(random(360),spd+random(2)+(other.skill_got[5]*2));
							//dmg += 1;
						}
					}
				}
			}
			toxicamount = -5;
		}
		toxicUltra = false;
	}
	if race == 1 && flushCharge > 6 && skill_got[5]
	{
		//FLUSH!
		flushCharge -= 2;
		with instance_create(x,y,FishFlush)
		{
			snd_play(sndFishFlushStart,0.1);
			targetScale = max(0.4,0.25 + min(other.flushCharge*0.025,1.75));
			BackCont.shake += 5;
			BackCont.shake += targetScale;
			if targetScale < 1
			{
				snd_play(sndFishFlushShort,0.01);
			}
			else
			{
				snd_play(sndFishFlushLong,0.01);
			}
			if targetScale > 1.5
			{
				BackCont.shake += 5;
				snd_play(sndFishFlushStartBig);
			}
			image_angle = point_direction(x,y,mouse_x,mouse_y);
			direction = image_angle;
			with instance_create_depth(x,y,6,FishFlushBurst)
			{
				image_angle = other.image_angle;
				image_xscale = other.targetScale;
				image_yscale = image_xscale;
				image_yscale *= choose(1,-1);
				image_speed = 0.5/image_xscale;
			}
			event_perform(ev_alarm,0);
			alarm[1] += min(30,other.flushCharge*0.5);
		}
		flushCharge = 0;
	}
	if ultra_got[19] && !altUltra//Plant Sprint
	{

	if skill_got[2]==1//extra feet
	{
		maxSpeed=5;
	}
	else
	{
		maxSpeed=4.5;
	}

	image_speed=0.4;

	}
	if race==13 && !(ultra_got[51] && altUltra) && !instance_exists(SheepSuperCharge)
	{
		if KeyCont.key_spec[p] != 1 && KeyCont.key_spec[p] != 2 || !instance_exists(SheepStorm)//Sheep reset speed
		{
			//with SheepStorm
			//	instance_destroy();
			if !instance_exists(SheepBreak)
			{
				if sheepPower > 0
				{
					if UberCont.normalGameSpeed == 60
						sheepPower = max(0, sheepPower - 5);
					else
						sheepPower = max(0, sheepPower - 10);
				}
				else
				{
					if UberCont.normalGameSpeed == 60
						sheepPower += 0.15*0.5;//0.2
					else
						sheepPower += 0.15;
					sheepPower = min(sheepPower,0);
				}
			}
			if sheepPower < 1
				instance_destroy(SheepStorm);
			else
			{
				if skill_got[2]==1//extra feet
				{
					maxSpeed=4.5;
				}
				else
				{
					maxSpeed=4;
				}
			}
		}
	}
	if race == 24 && KeyCont.key_spec[p] != 1 && KeyCont.key_spec[p] != 2
	{
		lockoutElementor = false;	
	}
	}
	race = keepRace;
}

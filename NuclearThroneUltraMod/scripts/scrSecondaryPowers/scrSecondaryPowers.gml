///scrSecondaryPowers();
// /@description
///@param
function scrSecondaryPowers() {
	if (skill_got[maxskill + 1])
	{
		switch (race)
		{
			//CRYSTAL
			case 2:
				if targetPickup == noone && !isOnInteractable && instance_exists(CrystalShield) && !instance_exists(CrystalTorpedo) && (KeyCont.key_pick[p] == 1 || KeyCont.key_pick[p] == 2)
				{
					if my_health > 1
					{
						if armour > 0
							armour -= 1;
						else
							DealDamage(1,false,false,false);
					
						hitBy = sprite_index;
						exception=true;
						sprite_index = spr_hurt
						image_index = 0
						//snd_play_2d(snd_hurt, hurt_pitch_variation)
						with CrystalShield
						{
							instance_destroy();
							with instance_create(x,y,AnimDestroy)
							{
								sprite_index = other.spr_disappear;
								image_index = 3;
							}
						}
						var a = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
						BackCont.shake += 10;
						BackCont.viewx2 += lengthdir_x(15,a)*UberCont.opt_shake
						BackCont.viewy2 += lengthdir_y(15,a)*UberCont.opt_shake
						instance_create(x,y,CrystalTorpedo);
						snd_play(sndCrystalTorpedo);
					}
					else if KeyCont.key_pick[p] == 1
					{
						snd_play_2d(sndCantTorpedo,0.1);
						BackCont.shake += 10;
					}
				}
			break;
			//EYES
			case 3:
				if targetPickup == noone && !isOnInteractable && KeyCont.key_pick[p] == 1
				{
					var a;
					if !instance_exists(MindField)
					{
						a = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
						with instance_create(x,y,EyesMindFieldTransition)
						{
							targetX = UberCont.mouse__x;
							targetY = UberCont.mouse__y;
							distance = point_distance(x,y,targetX,targetY);
							dir = point_direction(x,y,targetX,targetY);
						}
						if !instance_exists(MindFieldSound)
						{
							with instance_create(x,y,MindFieldSound)
							{
								tx = UberCont.mouse__x;
								ty = UberCont.mouse__y;
							}
						}
					}
					else
					{
						a = point_direction(MindField.x,MindField.y,UberCont.mouse__x,UberCont.mouse__y);
					}
					BackCont.viewx2 += lengthdir_x(10,a)*UberCont.opt_shake
					BackCont.viewy2 += lengthdir_y(10,a)*UberCont.opt_shake
					BackCont.shake += 5
					instance_create(UberCont.mouse__x,UberCont.mouse__y,MindField);
				}
			break;
			//YV
			case 6:
				if targetPickup == noone && !isOnInteractable && KeyCont.key_pick[p] == 1 && bwep != 0
				{
					var lowa = 0;
					var lowb = 0;
					var lowc = 0;
					if skill_got[35]
					{
						lowa = wep_load[wep]*-2;
						lowb = wep_load[bwep]*-2;
						lowc = wep_load[cwep]*-2;
					}
					if reload > lowa
					{
						if breload <= 0
						{
							with instance_create_depth(x,y,depth-1,AnimDestroy)
							{
								sprite_index = sprYVQuickReload;
								image_angle = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
							}
							snd_play_2d(sndYVQuickReload);
						
							var reduction = reload + lowa;
							breload += reduction;
							reload = lowa;
						}
						else
						{
							snd_play_2d(sndYVCantQuickReload);
							instance_create(x,y,YVCantQuickReload);
						}
					}
				}
			break;
			//STEROIDS
			case 7:
				if targetPickup == noone && !isOnInteractable && (KeyCont.key_pick[p] == 1 || KeyCont.key_pick[p] == 2)
				{
					var lowa = 0;
					var lowb = 0;
					var lowc = 0;
					if skill_got[35]
					{
						lowa = wep_load[wep]*-2;
						lowb = wep_load[bwep]*-2;
						lowc = wep_load[cwep]*-2;
					}
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
					if can_shoot = 1 and ((ignoreAmmo || ammo[wep_type[wep]] >= representingCost || wep_type[wep] == 0) and rad>=wep_rad[wep] || alarm[2]>0)
					if reload <= 0 && breload <= 0
					{
						speed = 0;
						var acc = accuracy;
						accuracy *= 0.5;
						scrFire();
						scrSwapWeps();
						scrFire();
						scrSwapWeps();
						reload -= 1;
						breload -= 1;
						reload -= ceil(wep_load[wep] * 0.15);
						breload -= ceil(wep_load[bwep] * 0.15);
						accuracy = acc;
						if (instance_exists(SpeedLockout))
						{
							with SpeedLockout
							{
								alarm[0] = lockoutTime;	
							}
						}
						else
						{
							with instance_create(x,y,SpeedLockout)
							{
								resetSpeed = other.maxSpeed;
							}
							maxSpeed = 0;
							if skill_got[2]
								scrApplyExtraFeet();
						}
					}
				}
			break;
			//ROBOT
			case 8:
				if targetPickup == noone && !isOnInteractable && (KeyCont.key_pick[p] == 1)
				{
					with HoldToEatEnemy
					{
						instance_destroy();
						snd_play(sndRobotEatFail);
					}
					if !instance_exists(HoldToEatEnemy)
					{
						var n = instance_nearest(x,y,enemy);
						if n != noone && n.my_health > 0 && n.team != other.team && point_distance(x,y,n.x,n.y) < 64
						{
							with instance_create(x,y,HoldToEatEnemy)
							{
								target = n;
								if my_health > 0
									image_speed = min(1,8 / n.my_health);
							}
						}
						else
						{
							BackCont.shake += 5;
							snd_play(sndRobotEatFail);
						}
					}
				}
			break;
			//CHICKEN
			case 9:
				if targetPickup == noone && !isOnInteractable && KeyCont.key_pick[p] == 1
				{
					if instance_exists(ChickenRewindPosition) && chickenFocusInUse
					{
						with ChickenRewindPosition
						{
							if !active
							{
								snd_play(sndChickenStart);
								BackCont.shake += 5;
								active = true;
								alarm[0] = 1;
							}
						}
					}
				}
			break;
			//REBEL
			case 10:
				if targetPickup == noone && !isOnInteractable && KeyCont.key_pick[p] == 1
				{
					if instance_exists(Ally)
					{
						var hasAnAlly = false;
						with Ally
						{
							if grabbed
							{
								hasAnAlly = true;
								grabbed = false;
								sprite_index = spr_appear;
								snd_play(sndAllyGrab);
								image_index = 0;
								image_speed = 0.7;
								alarm[0] = (image_number-1)/image_speed//intro animation which is cool af
								alarm[4] = (7)/image_speed//Throw end
								alarm[5] = 1;
								alarm[1] = alarm[0] + 2;
								alarm[6] = alarm[4] - 2;
								alarm[1] += alarm[0];
								throwStart = alarm[0] - 3;
								walk = 0;
								x = other.x;
								y = other.y;
								throwSpeed = 8;
								throwDamage = 6;
								isInFight = 0;
								throwDirection = point_direction(other.x,other.y,UberCont.mouse__x,UberCont.mouse__y);
								if other.skill_got[20]
								{
									throwSpeed = 12;
									throwDamage = 12;
									BackCont.viewx2 += lengthdir_x(15,throwDirection + 180)*UberCont.opt_shake
									BackCont.viewy2 += lengthdir_y(15,throwDirection + 180)*UberCont.opt_shake
									BackCont.shake += 2
								}
								else
								{
									BackCont.viewx2 += lengthdir_x(10,throwDirection + 180)*UberCont.opt_shake
									BackCont.viewy2 += lengthdir_y(10,throwDirection + 180)*UberCont.opt_shake
									BackCont.shake += 1
								}
								motion_add(throwDirection,throwSpeed);
								continue;
							}
						}
						if !hasAnAlly
						{
							var n = instance_nearest(x,y,Ally)
							if n != noone && instance_exists(n) && point_distance(x,y,n.x,n.y) < 64
							{
								with Ally
								{
									grabbed = true;
									snd_play(sndAllyGrab,0.1);
								}
								BackCont.shake += 5;
							}
						}
					}
					
				}
			break;
			//HUNTER
			case 11:
				if targetPickup == noone && !isOnInteractable && KeyCont.key_pick[p] == 1
				{
					if instance_exists(Marker) && !instance_exists(MarkerWallToggler)
					{
						
						with Marker
						{
							with instance_create(x,y,MarkerWallToggler)
							{
								event_user(0);
								BackCont.shake += 5;
								if ds_exists(myWalls,ds_type_list) && ds_list_size(myWalls) > 0
								{
									snd_play_2d(sndHunterWallToggle,0.1);
									var a = point_direction(other.x,other.y,UberCont.mouse__x,UberCont.mouse__y);
									BackCont.viewx2 += lengthdir_x(15,a + 180)*UberCont.opt_shake
									BackCont.viewy2 += lengthdir_y(15,a + 180)*UberCont.opt_shake
								}
							}
						}
					}
				}
			break;
			//YUNG CUZ
			case 12:
				if targetPickup == noone && !isOnInteractable && (KeyCont.key_pick[p] == 1)
				{
					with HoldToHack
					{
						instance_destroy();
					}
					if !instance_exists(HoldToHack)
					{
						instance_create(x,y,HoldToHack)
					}
				}
			break;
			//SHEEP
			case 13:
				if KeyCont.key_pick[p] == 1 && !instance_exists(SheepSuperCharge)
				{
					if sheepPower >= 9 || justAsheep || instance_exists(SheepHyperDash) || instance_exists(HyperDashBuffer)
					{
						KeyCont.key_pick[p] = 2;
						with SheepStorm
						{
							instance_destroy();
						}
						snd_play(sndSheepSuperCharge);
						with instance_create(x,y,SheepSuperCharge)
						{
							direction = point_direction(other.x,other.y,UberCont.mouse__x,UberCont.mouse__y);
							image_angle = direction;
						}
						canDrawMe = false;
						sheepPower = 0;
					}
				}
			break;
			//PANDA
			case 14:
				if targetPickup == noone && !isOnInteractable && (KeyCont.key_pick[p] == 1)
				{
					
					if !instance_exists(PandaSleep) 
					{
						BackCont.shake += 10;
						var ang = random(360);
						repeat(8)
						{
							with instance_create(x,y,Dust)
							{
								motion_add(ang,2);
							}
							ang += 45;
						}
						with instance_create(x,y,PandaSleep)
						{
							resetSpeed = other.maxSpeed;
						}
						snd_play_2d(sndPandaFlopSleep,0.1);
						maxSpeed = 0;
						if skill_got[2]
							scrApplyExtraFeet();
					}
					else
					{
						BackCont.shake += 10;
						var ang = random(360);
						repeat(8)
						{
							with instance_create(x,y,Dust)
							{
								motion_add(ang,2);
							}
							ang += 45;
						}
						with PandaSleep
						{
							alarm[0] = max(alarm[3],lockoutTime);
							alarm[4] = alarm[0] - 3;
						}
					}
				}
			break;
			//ATOM
			case 15:
				if targetPickup == noone && !isOnInteractable && KeyCont.key_pick[p] == 1 && instance_exists(Floor)
				{
					var a;
					a = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
					/*
					with instance_create(UberCont.mouse__x,UberCont.mouse__y,TeleportationField)
					{
						targetX = UberCont.mouse__x;
						targetY = UberCont.mouse__y;
						distance = point_distance(x,y,targetX,targetY);
						dir = point_direction(x,y,targetX,targetY);
					}*/
					//a = point_direction(TeleportationField.x,TeleportationField.y,UberCont.mouse__x,UberCont.mouse__y);
					if instance_number(TeleportationField) > 1{
						var aTime0 = 1;
						var aTime1 = 1;
						var theChunker = [];
						with TeleportationField
						{
							if number == 1
							{
								instance_destroy();
								aTime0 = alarm[0];
								aTime1 = alarm[1];
								//theChunker = myMovedEntities;
								myMovedEntities = [];
								alarm[0] += 1;
								alarm[1] += 1;
							}
						}
						with TeleportationField
						{
							if number > 1
							{
								number = 1;
								alarm[0] = aTime0;
								alarm[1] = aTime1;
								myMovedEntities = [];//theChunker;
							}
						}
						
					}
					BackCont.viewx2 += lengthdir_x(10,a)*UberCont.opt_shake
					BackCont.viewy2 += lengthdir_y(10,a)*UberCont.opt_shake
					BackCont.shake += 5
					var tx = UberCont.mouse__x;
					var ty = UberCont.mouse__y;
					if collision_circle(tx,ty,24,WallHitMe,false,false) || !collision_point(tx,ty,Floor,false,false)
					{
						var n = instance_position(tx,ty,Floor)
						if n == noone
							n = instance_nearest(tx - 14,ty - 14,Floor);
					
						if n != noone {
							var o = 16;
							if n.object_index == FloorExplo
							{
								o = 8;
							}
							tx = n.x + o;
							ty = n.y + o;
						}
					}
					with instance_position(tx,ty,WallHitMe)
					{
						instance_destroy();
						instance_create(x,y,FloorExplo);
					}
					instance_create(tx,ty,TeleportationField);
				}
			break;
			//VIKING
			case 16:
				if targetPickup == noone && !isOnInteractable && (KeyCont.key_pick[p] == 1)
				{
					with HoldToArmour
					{
						instance_destroy();
						snd_play(sndNoArmour);
					}
					if !instance_exists(HoldToArmour)
					{
						if scrCanArmourHeal(false)
						{
							instance_create(x,y,HoldToArmour)
						}
						else
						{
							BackCont.shake += 5;
						}
					}
				}
			break;
			//WEAPON SMITH
			case 17:
				if targetPickup == noone && !isOnInteractable && (KeyCont.key_pick[p] == 1)
				{
					with HoldToShiftAmmo
					{
						instance_destroy();
					}
					if !instance_exists(HoldToShiftAmmo)
					{
						if wep_type[wep] == 0
						{
							with instance_create(x,y,PopupText)
							{
								mytext = "DOESN'T USE AMMO"
								theColour=c_red;
							}
						}
						else
						{
							instance_create(x,y,HoldToShiftAmmo);
						}
					}
				}
			break;
			//ANGEL
			case 18:
				if targetPickup == noone && !isOnInteractable && (KeyCont.key_pick[p] == 1) && instance_exists(AngelActive)
				{
					var alreadyMoving = false;
					with AngelActive
					{
						if moving
							alreadyMoving = true;
					}
					if !alreadyMoving
					{
						var a = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
						BackCont.viewx2 += lengthdir_x(13,a)*UberCont.opt_shake
						BackCont.viewy2 += lengthdir_y(13,a)*UberCont.opt_shake
						BackCont.shake += 15;
						with AngelActive
						{
							snd_play(sndAngelCast,0.1,true,true,2,false,false,0.8,false,id);
							moving = true;
							alarm[0] += 7;
							direction = a;
							speed = 10;
							image_index = 0;
							image_speed = (image_number-1)/alarm[0];
							image_angle = a + 90;
						}
						alarm[3] += 4;
					}
				}
			break;
			//SKELETON
			case 19:
				if targetPickup == noone && !isOnInteractable && (KeyCont.key_pick[p] == 1) && !instance_exists(SkeletonSkullDestroyed)
				{
					with HoldToSkull
					{
						instance_destroy();
					}
					if !instance_exists(HoldToSkull)
					{
						instance_create(x,y,HoldToSkull);	
					}
				}
			break;
			//HORROR
			case 21:
				if targetPickup == noone && !isOnInteractable && (KeyCont.key_pick[p] == 1) && instance_exists(Rad) && (instance_number(Rad) > origincharge*2)
				{
					var ballPower = 0;	
					with Rad
					{
						if ballPower < 20 && choose(true,false)
						{
							ballPower += 0.75;
							if object_index == BigRad
								ballPower += 6;
						}
						else
						{
							event_user(0);	
						}
						instance_destroy();
						with instance_create(x,y,PlutoFX)
						{
							motion_add(point_direction(x,y,Player.x,Player.y),1+random(2));
						}
						with instance_create(x,y,HorrorMegaSuck)
						{
							targetX = Player.x
							targetY = Player.y;
							distance = point_distance(x,y,targetX,targetY);
							dir = point_direction(x,y,targetX,targetY);
						}
					}
					if ballPower < 10
					{
						snd_play(sndHorrorBallRelease);	
					}
					else
					{
						snd_play(sndHorrorBallReleaseUpg);	
					}
					var aimDirection = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
					BackCont.viewx2 += lengthdir_x(ballPower*0.75,aimDirection+180)*UberCont.opt_shake
					BackCont.viewy2 += lengthdir_y(ballPower*0.75,aimDirection+180)*UberCont.opt_shake
					BackCont.shake += ballPower
					with instance_create(x,y,BecomeHorrorBigBall)
					{
						if other.bskin = 1
							sprite_index=sprBecomeHorrorBigBalB;
						else if other.bskin = 2
							sprite_index=sprBecomeHorrorBigBalC;
						team = other.team;
						//Max is about 20
						myPower = ballPower;
						image_xscale = (0.1 + clamp(myPower*0.025,0,0.75))*2;
						image_yscale = image_xscale;
						direction = aimDirection;
						speed = 1;
						image_angle = direction;
					}
				}
			break;
			//ROGUE
			case 22:
				if targetPickup == noone && !isOnInteractable && (KeyCont.key_pick[p] == 1) && my_health > 1
				{
					DealDamage(1);
					sprite_index = spr_hurt;
					image_index = 0;
					snd_play_2d(sndRogueManualTriggerBlastArmour, hurt_pitch_variation);
					exception = true;
					//event_user(0);
					BackCont.shake += 5;
					var a = random(360);
					BackCont.viewx2 += lengthdir_x(10,a)*UberCont.opt_shake
					BackCont.viewy2 += lengthdir_y(10,a)*UberCont.opt_shake
					instance_create(x,y,RogueRefund);
					Sleep(10);
				}
			break;
			//FROG
			case 23:
				if targetPickup == noone && !isOnInteractable && (KeyCont.key_pick[p] == 1) && toxicamount > 1 && !toxicUltra
				{
					if rad > 100
					{
						toxicUltra = true;
						rad -= 100;
						BackCont.shake += 10;
						snd_play_2d(sndFrogUltraActivate);
						if ultra_got[91]//FROG MOMMA ULTRA C
						{
							with FrogEgg
							{
								if team == 2
								{
									with instance_create(x,y,UltraFrogEgg)
									{
										team = other.team;
										if other.sprite_index == sprFrogEgg || other.sprite_index == sprFrogEggHurt
										{
											sprite_index = sprUltraFrogEgg;
											mask_index=spr_idle;
											spr_idle = sprUltraFrogEgg
										}
										alarm[0] = other.alarm[0];
										image_index = other.image_index;
									}
									instance_destroy(id,false);
								}
							}
						}
						if ultra_got[92] && altUltra
						{
							repeat(3)
							with instance_create(x,y,UltraSplinter)
							{
								motion_add(random(360),19)
								image_angle = direction
								team = other.team
							}
						}
						else
						{
							repeat(3)
							with instance_create(x,y,UltraToxicThrowerGas)
							{
								motion_add(random(360),3+random(1)+(other.skill_got[5]));
								//dmg += 1;
							}
						}
					}
					else
					{
						BackCont.shake += 5;
						snd_play_2d(sndUltraEmpty);	
						with instance_create(x,y,PopupText)
						{mytext = "NOT ENOUGH#RADS"
						theColour=c_red;}	
					}
				}
			break;
			//ELEMENTOR
			case 24:
				if targetPickup == noone && !isOnInteractable && KeyCont.key_pick[p] == 1 && instance_exists(ElementorWall)
				{
					BackCont.shake += 10 + min(40,instance_number(ElementorWall));
					if instance_number(ElementorWall) > 13
						snd_play_2d(sndElementorVisionBig,0.1);
					else
						snd_play_2d(sndElementorVision,0.1);
					with ElementorWall
					{
						instance_destroy();
						with instance_create(x + 8,y + 8,ElementorWallProjectile)
						{
							direction = point_direction(Player.x,Player.y,x,y);
							speed = 8;
						}
					}
				}
			break;
			//DOCTOR
			case 25:
				if targetPickup == noone && !isOnInteractable && (KeyCont.key_pick[p] == 1) && !instance_exists(PlagueBringer)
				{
					var gottenSkills = 0;
					var si = 0;
					repeat(maxskill + 1)
					{
						if skill_got[si]
						{
							gottenSkills += 1;
						}
						si++;
					}
					if gottenSkills > 1
					{
						with HoldToPlague
						{
							instance_destroy();
						}
						if !instance_exists(HoldToPlague)
						{
							instance_create(x,y,HoldToPlague);	
						}
					}
					else
					{
						BackCont.shake += 5;
						with instance_create(x,y,PopupText)
						{
							mytext = "NOT ENOUGH MUTATIONS!";
							theColour=c_red;
						}	
					}
				}
			break;
			//HUMPHRY
			case 26:
				if targetPickup == noone && !isOnInteractable && KeyCont.key_pick[p] == 1 && !instance_exists(SpeedLockout)
				{
					var hits = ds_list_create();
					var al = collision_circle_list(x,y,64,hitme,false,false,hits,false);
					snd_play(sndExplosionS,0.2,false,false,3,false,false,0.6);
					snd_play_2d(choose(sndHumphryStun1,sndHumphryStun2,sndHumphryStun3,sndHumphryStun4,sndHumphryStun5),0.1);
					BackCont.shake += 15;
					for (var i = 0; i < al; i ++)
					{
						with hits[| i]
						{
							if team != other.team && !collision_line(x,y,other.x,other.y,Wall,false,false)
							{
								BackCont.shake += 2;
								DealDamage(20);
								other.humphrySkill += 5;
							}
						}
					}
					with instance_create(x,y,AnimDestroyTop)
					{
						sprite_index = sprHumphrySelfStun;
					}
					with instance_create(x,y,StunLockout)
					{
						resetSpeed = other.maxSpeed;
					}
					maxSpeed = 0;
					if skill_got[2]
						scrApplyExtraFeet();
				}
			break;
			//HANDS
			case 27:
				if !instance_exists(HandBlock) && (KeyCont.key_pick[p] == 1 || KeyCont.key_pick[p] == 2)
				{
					with Hand
					{
						BackCont.shake += 10;
						snd_play(sndHumphryHalt);
						if alarm[1] > 0
							alarm[1] += 5;
						else if alarm[2] > 0
							alarm[2] += 5;
						previousSprite = sprite_index;
						sprite_index = spr_block;
						with instance_create(x,y,HandBlock) {
							team = other.team;	
						}
					}
				}
			break;
		}
	}
	isOnInteractable = false;
}
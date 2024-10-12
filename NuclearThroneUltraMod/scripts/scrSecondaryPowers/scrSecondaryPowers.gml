///scrSecondaryPowers();
// /@description
///@param
function scrSecondaryPowers() {
	var isOverlapping = false;
	var uniqueKey = true;
	if UberCont.opt_regal == UberCont.opt_pickup
	{
		uniqueKey = false;
		isOverlapping = (targetPickup == noone || isOnInteractable);
	}
	if race == 5 && ultra_got[18] && altUltra && KeyCont.key_regal[p] == 1 && instance_exists(enemy)
	{
		var dis = 9999;
		var xx = x;
		var yy = y;
		var ang = random(360);
		snd_play(sndHyperLauncher);
		repeat(12)
		{
			with instance_create(x,y,Dust)
			{
				motion_add(ang,1+random(2));
			}
			ang += 30;
		}
		var enoughDistance = 176;
		var originX = x;
		var originY = y;
		var n = instance_nearest(x,y,enemy);
		if (n != noone && n.team != 2 && point_distance(xx,yy,n.x,n.y) < enoughDistance)
		{
			var foundSpot = false;
			do {
				dis = enoughDistance;
				//Oh there is a projectile nearby teleport somewhere else
				with Floor {
					var o = 16;
					if object_index == FloorExplo
						o = 8;
					var fx = x + o;
					var fy = y + o;
					var n = instance_nearest(fx,fy,enemy)
					if n != noone
					{
						var newDis = point_distance(fx,fy,n.x,n.y)
						if n.team != 2 && newDis > dis
						{
							foundSpot = true;
							dis = newDis;
							xx = fx;
							yy = fy;
						}
					}
					else
					{
						xx = fx;
						yy = fy;
					}
				}
				enoughDistance -= 16;
			} until(enoughDistance < 16 || foundSpot)
		}
		else
		{
			with Floor {
				var o = 16;
				if object_index == FloorExplo
					o = 8;
				var fx = x + o;
				var fy = y + o;
				var n = instance_nearest(fx,fy,enemy)
				if n != noone
				{
					var newDis = point_distance(fx,fy,n.x,n.y)
					if n.team != 2 && newDis > enoughDistance && newDis < dis
					&& point_distance(originX,originY,fx,fy) > 32//Want to actually move
					{
						dis = newDis;
						xx = fx;
						yy = fy;
					}
				}
			}
		}
		
		var path = path_add();
		mp_potential_path(path,xx,yy,8,4,0);
		var len = path_get_length(path);
		var step = (1/len) * 32;
		for(var i = 0; i < 1; i += step)
		{
			with instance_create_depth(path_get_x(path,i),path_get_y(path,i),depth,AnimDestroy) {
				sprite_index = other.spr_walk;
				image_alpha = 0.5;
				image_xscale = other.right;
			}
		}
		with instance_place(xx,yy,Wall)
		{
			instance_destroy();
			instance_create(x,y,FloorExplo);
		}
		path_delete(path);
		x = xx;
		y = yy;
		scrForcePosition60fps();	
		repeat(12)
		{
			with instance_create(x,y,Dust)
			{
				motion_add(ang,1+random(2));
			}
			ang += 30;
		}
		alarm[3] = max(alarm[3],2);
	}
	if (skill_got[maxskill + 1])
	{
		switch (race)
		{
			//CRYSTAL
			case 2:
				if !isOverlapping && instance_exists(CrystalShield) && !instance_exists(CrystalTorpedo) && (KeyCont.key_regal[p] == 1 || KeyCont.key_regal[p] == 2)
				{
					if my_health > 2
					{
						if armour > 0
							armour -= 1;
						else
							DealDamage(2,false,false,false);
					
						hitBy = sprite_index;
						exception = true;
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
					else if KeyCont.key_regal[p] == 1
					{
						snd_play_2d(sndCantTorpedo,0.1);
						BackCont.shake += 10;
					}
				}
			break;
			//EYES
			case 3:
				if !isOverlapping && KeyCont.key_regal[p] == 1
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
				if !isOverlapping && KeyCont.key_regal[p] == 1 && bwep != 0
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
						
							//var reduction = reload + wep_load[wep];
							breload += wep_load[wep];
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
				if !isOverlapping && (KeyCont.key_regal[p] == 1/* || KeyCont.key_regal[p] == 2*/)
				{
					firingStance = !firingStance;
					/*
					var canDoTheThing = false;
					if !instance_exists(HoldToSteroidsShoot)
					{
						instance_create(x,y,HoldToSteroidsShoot);
						if uniqueKey
						{
							with HoldToSteroidsShoot
							{
								//event_perform(ev_other,ev_animation_end);
								visible = false;
							}
						}
					}
					with HoldToSteroidsShoot
					{
						if !visible
							canDoTheThing = true;
					}
					if canDoTheThing
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
						var didShoot = false;
						if (can_shoot = 1 && ((ignoreAmmo || ammo[wep_type[wep]] >= representingCost || wep_type[wep] == 0) and rad>=wep_rad[wep] || alarm[2]>0) && reload <= 0)
						{
							didShoot = true;
							speed = 0;
							var acc = accuracy;
							accuracy *= 0.45;
							scrFire();
							reload -= 1;
							reload -= ceil(wep_load[wep] * 0.17);
							accuracy = acc;
						}
						scrSwapWeps();
						if (can_shoot = 1 && ((ignoreAmmo || ammo[wep_type[wep]] >= representingCost || wep_type[wep] == 0) and rad>=wep_rad[wep] || alarm[2]>0) && reload <= 0)
						{
							didShoot = true;
							speed = 0;
							var acc = accuracy;
							accuracy *= 0.45;
							scrFire();
							reload -= 1;
							reload -= ceil(wep_load[wep] * 0.17);
							accuracy = acc;
						}
						scrSwapWeps();
						if didShoot
						{
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
								{
									scrApplyExtraFeet();
									maxSpeed += 1;
								}
							}	
						}
					}*/
				}
			break;
			//ROBOT
			case 8:
				if !isOverlapping && (KeyCont.key_regal[p] == 1)
				{
					with HoldToEatEnemy
					{
						instance_destroy();
						snd_play(sndRobotEatFail);
					}
					if !instance_exists(HoldToEatEnemy)
					{
						var n = instance_nearest(x,y,enemy);
						if n != noone && n.my_health > 0 && n.team != other.team && point_distance(x,y,n.x,n.y) < 96 && n.canBeEaten
						{
							with instance_create(x,y,HoldToEatEnemy)
							{
								target = n;
								image_speed = min(1,17 / n.my_health);//Increase number to go faster
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
				if !isOverlapping && KeyCont.key_regal[p] == 1
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
								with other
								{
									BackCont.shake += 5;
									var ang = random(360);
									var angStep = 60;
									repeat(6)
									{
										with instance_create(x,y,Smoke)
										{
											motion_add(ang, 2);
										}
										ang += angStep;
									}
								}
							}
						}
					}
				}
			break;
			//REBEL
			case 10:
				if !isOverlapping && KeyCont.key_regal[p] == 1
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
								//x = other.x;
								//y = other.y;
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
							var grabbedAllies = 0;
							with Ally
							{
								if !grabbed && point_distance(x,y,other.x,other.y) < 64
								{
									grabbed = true;
									grabbedAllies += 1;
								}
							}
							if grabbedAllies > 0
							{
								snd_play(sndAllyGrab,0.1);
								BackCont.shake += 4 + grabbedAllies;
								var ang = 0;
								var angStep = 360/grabbedAllies;
								with Ally
								{
									if grabbed
									{
										grabOffset = ang;
									}
									ang += angStep;
								}
							}
							/*
							var n = instance_nearest(x,y,Ally)
							if n != noone && instance_exists(n) && point_distance(x,y,n.x,n.y) < 64
							{
								with n
								{
									grabbed = true;
									snd_play(sndAllyGrab,0.1);
								}
								BackCont.shake += 5;
							}*/
						}
					}
					
				}
			break;
			//HUNTER
			case 11:
				if !isOverlapping && KeyCont.key_regal[p] == 1
				{
					//if !instance_exists(MarkerWallToggler)
					//{
					with MarkerWallToggler
					{
						event_perform(ev_alarm,0);	
					}
					if instance_exists(Marker)
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
					else// if ultra_got[43] && altUltra
					{
						var a = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
						BackCont.viewx2 += lengthdir_x(15,a + 180)*UberCont.opt_shake
						BackCont.viewy2 += lengthdir_y(15,a + 180)*UberCont.opt_shake
						with instance_create(x + lengthdir_x(300,a),y + lengthdir_y(300,a),MarkerWallToggler)
						{
							event_user(0);
							BackCont.shake += 5;
							if ds_exists(myWalls,ds_type_list) && ds_list_size(myWalls) > 0
							{
								snd_play_2d(sndHunterWallToggle,0.1);
							}
						}
					}
					//}
				}
			break;
			//YUNG CUZ
			case 12:
				if !isOverlapping && (KeyCont.key_regal[p] == 1)
				{
					with HoldToHack
					{
						instance_destroy();
					}
					if !instance_exists(HoldToHack)
					{
						instance_create(x,y,HoldToHack);
						if uniqueKey
						{
							with HoldToHack
							{
								visible = false;
								event_perform(ev_other,ev_animation_end);
							}
						}
					}
				}
			break;
			//SHEEP
			case 13:
				if KeyCont.key_regal[p] == 1 && !instance_exists(SheepSuperCharge) && !outOfCombat
				{
					if sheepPower >= 7 || (justAsheep && !isOverlapping) || instance_exists(SheepHyperDash) || instance_exists(HyperDashBuffer)
					{
						KeyCont.key_regal[p] = 2;
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
				if !isOverlapping && (KeyCont.key_regal[p] == 1)
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
						{
							scrApplyExtraFeet();
							maxSpeed += 1;
						}
					}
					else if PandaSleep.alarm[0] < 1
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
				if !isOverlapping && KeyCont.key_regal[p] == 1
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
				if !isOverlapping && (KeyCont.key_regal[p] == 1)
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
							instance_create(x,y,HoldToArmour);
							if uniqueKey
							{
								with HoldToArmour
								{
									visible = false;
									event_perform(ev_other,ev_animation_end);
								}
							}
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
				if !isOverlapping && (KeyCont.key_regal[p] == 1)
				{
					with HoldToShiftAmmo
					{
						instance_destroy();
					}
					if !instance_exists(HoldToShiftAmmo)
					{
						if wep_type[wep] == 0 && !scrIsCrown(40)
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
							if uniqueKey
							{
								with HoldToShiftAmmo
								{
									visible = false;
									event_perform(ev_other,ev_animation_end);
								}
							}
						}
					}
				}
			break;
			//ANGEL
			case 18:
				if !isOverlapping && (KeyCont.key_regal[p] == 1 || KeyCont.key_spec[p] == 1) && instance_exists(AngelActive)
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
							speed = 12;
							image_index = 0;
							image_speed = (image_number-1)/alarm[0];
							image_angle = a + 90;
						}
						alarm[3] = max(alarm[3],6);
					}
				}
			break;
			//SKELETON
			case 19:
				if !isOverlapping && (KeyCont.key_regal[p] == 1) && !instance_exists(SkeletonSkullDestroyed)
				{
					var h = 100;
					with HoldToSkull
					{
						h = skullHealth;
						instance_destroy();
					}
					if !instance_exists(HoldToSkull)
					{
						with instance_create(x,y,HoldToSkull)
						{
							skullHealth = h;	
						}
						if uniqueKey
						{
							with HoldToSkull
							{
								visible = false;
								event_perform(ev_other,ev_animation_end);
							}
						}
					}
				}
			break;
			//HORROR
			case 21:
				if !isOverlapping && (KeyCont.key_regal[p] == 1) && instance_exists(Rad) && (instance_number(Rad) > origincharge*2)
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
				if !isOverlapping && (KeyCont.key_regal[p] == 1) && (my_health > 1 && !scrIsCrown(41) || my_health > 2)
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
				if !isOverlapping && (KeyCont.key_regal[p] == 1) && toxicamount > 1 && !toxicUltra
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
						if !ultra_got[92] && altUltra
						{/*
							repeat(3)
							with instance_create(x,y,UltraSplinter)
							{
								motion_add(random(360),19)
								image_angle = direction
								team = other.team
							}
						}
						else
						{*/
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
				if !isOverlapping && KeyCont.key_regal[p] == 1 && instance_exists(ElementorWall)
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
				if !isOverlapping && (KeyCont.key_regal[p] == 1) && !instance_exists(PlagueBringer)
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
							if uniqueKey
							{
								with HoldToPlague
								{
									visible = false;
									event_perform(ev_other,ev_animation_end);
								}
							}
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
				if !isOverlapping && KeyCont.key_regal[p] == 1 && !instance_exists(SpeedLockout)
				{
					with HoldToSelfStun
					{
						instance_destroy();
					}
					if !instance_exists(HoldToSelfStun)
					{
						instance_create(x,y,HoldToSelfStun);
						if uniqueKey
						{
							with HoldToSelfStun
							{
								visible = false;
								event_perform(ev_other,ev_animation_end);
							}
						}
					}
					
				}
			break;
			//HANDS
			case 27:
				if !instance_exists(HandBlock) && (KeyCont.key_regal[p] == 1 || KeyCont.key_regal[p] == 2)
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
function scrFire(canDrown = true) {
	IDKWID=false;
	can_shoot = 0
	if !instance_exists(Player) || instance_exists(StartAreaBuffer) || instance_exists(UnPauseDelay)
	{
		clicked = 0;
		can_shoot = 0;
		exit;
	}
	if wep==0{
		exit;}
	if isInvisible
	{
		scrTurnOffInvisibility();
		
	}
	if instance_exists(ReloadableGun)
	{
		with ReloadableGun
		{
			if owner == other.id && wep == other.wep
			{
				if ammo > maxAmmo
				{
					overload = max(overload, ammo - maxAmmo);
				}
				if ammo <= 0
				{
					other.wep_load[other.wep] = other.wep_load_base[other.wep];
					instance_destroy();	
				}
				else
				{
					ammo -= 1;
					if ammo <= overload
					{
						if ammo <= 0
							other.wep_load[other.wep] = other.wep_load_base[other.wep] * extraLoad;
						finalShot = true;
					}
					else
					{
						other.wep_load[other.wep] = other.wep_load_base[other.wep];
					}
				}
			}
		}
	}
	reload = min(reload + wep_load[wep],wep_load[wep]);
	if (object_index == Player || object_index == CloneShooter)
	{
		if ultra_got[21] && Player.altUltra && reload > 0
		{
			if gunGodDebt > 0
			{
				gunGodDebt -= reload;
				reload += reload;
			}
			else
			{
				gunGod += reload * 0.8;
				reload = reload * 0.2;
			}
		}
		if scrIsGamemode(48) && ammo[1] < 0
		{
			if armour > 0
				armour -= 1;
			else
				DealDamage(2);
			sprite_index = spr_hurt;
			image_index = 0;
			snd_play(snd_hurt);
			exception = true;
			hitBy = wep_sprt[wep];
		}
		if wep_load[wep] > 1 && reload < 0
		{
			canPuffyCheek = min(wep_load[wep],6);
		}
		if ultra_got[2] && alarm[2] > 0
		{
		 	reload -= wep_load[wep]*0.1;
		}
		//Nerves of steel
		if skill_got[41]
		{
			if armour == 1//armour < 1
			{
				if reload > 200
					reload -= 50;
				if reload > 300
					reload -= 100;
				if race == 25
				{
					reload -= wep_load[wep]*0.33;
				}
				else
				{
					reload -= wep_load[wep]*0.35;
				}
			}/*
			else if armour == maxarmour
			{
				if reload > 200
					reload -= 50;
				if reload > 300
					reload -= 80;
				if race == 25
				{
					reload -= wep_load[wep]*0.148;
				}
				else
				{
					reload -= wep_load[wep]*0.15;
				}
			}*/
		}
		queueshot = max(queueshot-1,0);
		fired = true;
		scrSpendingAmmo(wep_type[wep],wep_cost[wep]);
		if (alarm[2]<1)//alarm = Fish Ultra B
		{
			ammo[wep_type[wep]] -= wep_cost[wep]
			//if Player.ultra_got[70]
			//ammo[wep_type[wep]] = max(0,ammo[wep_type[wep]]);
			if !instance_exists(RadFree)
				rad -= wep_rad[wep]
			rad = max(rad,0);
		}
		with Player {
			if ammoReduction < 1
			{
				ammo[wep_type[wep]] += wep_cost[wep] * ammoReduction
				ammoReduction = 1;
				with instance_create(x,y,QuickSwapperFX) {
					image_angle = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);	
				}
			}
			if canDrown && scrIsCrown(13)
			{
				if ammo[wep_type[wep]] <= 0 && wep_cost[wep] > 0
				{
					with Crown {
						event_user(0);	
					}
				}
			}
			if ultra_got[70]
			{
				if wep_type[wep] != 0 || scrIsCrown(40)
				{
					var ammoPercentage = 0;
					ammoPercentage += max(0.1,max(0,ammo[wep_type[wep]]) / typ_amax[wep_type[wep]]);
					
					//if skill_got[10] //BACK MUSCLE
					//	ammoPercentage *= 1.4;
					reload -= wep_load[wep] - (wep_load[wep]*clamp(ammoPercentage,0.35,1));
					if ammo[wep_type[wep]] <= typ_amax[wep_type[wep]] * 0.6
					{
						//Additional boost when half ammo
						if wep_cost[wep] > 0
						{
							reload -= wep_load[wep] * 0.1;
						}
						else
						{
							reload -= wep_load[wep] * 0.05;
						}
					}
					if ammo[wep_type[wep]] <= 0
					{
						snd_play_2d(sndHealthPickup);
						scrHeal(2);	
					}
				}
			}
		}
		if Player.ultra_got[4] && !Player.altUltra//FISH ULTRA D rolling is good
		{
			if reload > 0
			{
			    reload -= speed*0.3
			    if Player.roll = 1
			    {
					reload -= wep_load[wep]*0.48
			    }
			}
		}
		if scrIsCrown(33) {
			//CROWN OF ECHO
			var currentCrown = Player.crown;
			Player.crown = [];
			scrFire();
			reload += wep_load[wep]*0.94;
			Player.crown = currentCrown;
		}
	}
	var hasTailNow = false;
	hasTailNow = Player.drawTail;
	Player.drawTail = false;
	
	// ROIDS THRONE BUTT
	//when firing both weapon more chance to giev other weapon ammo
	with Player
	{
		if ultra_got[25] && wep == bwep && wep_cost[wep] > 0
		{
			scrAmbidexturous(wep);
		}
		var wac = wep_cost[wep];
		var wbc = wep_cost[bwep];
		if scrIsCrown(40)
		{
			if wep_type[wep] == 0
			{
				wac = max(wac,2);
			}
			if wep_type[bwep] == 0
			{
				wbc = max(wbc,2);
			}
		}
			
		if (race=7 && skill_got[5] && wac > 0 && wbc > 0)
		{
	//	    if KeyCont.key_spec[Player.p] = 1 or KeyCont.key_spec[Player.p] = 2
	//	    {
		        if random(100) * luck<(
					(wac/typ_ammo[wep_type[wep]])*0.69
				)*100
				{
				    var wantAmmo = round(typ_ammo[wep_type[bwep]]*0.5);
				    if (ammo[wep_type[bwep]] + wantAmmo >=typ_amax[wep_type[bwep]] && !ultra_got[26])
				    {
						ammo[wep_type[bwep]] = typ_amax[wep_type[bwep]];
				    }
				    else
						ammo[wep_type[bwep]] += wantAmmo;
					if wep_rad[bwep] > 0
					{
						var ang = random(360);
						repeat(6)
						{
							with instance_create(x,y,PlutoFX)
							{
								motion_add(ang,1);
							}
							ang += 60;
						}
						rad += 2;
					}
					with instance_create(x,y-16,FxOnOwner)
					{
						owner = other.id;
						sprite_index=sprSteroidsTB;
						yOffset = -16;
					}
					if (UberCont.opt_ammoicon)
					{
						dir = instance_create(x,y,PopupText)
						dir.sprt = sprAmmoIconsPickup;
						dir.ii = wep_type[bwep];
						dir.mytext = "+"+string(wantAmmo);
						if ammo[wep_type[bwep]] == typ_amax[wep_type[bwep]]
							dir.mytext = "MAX ";
					}
					else
					{
						dir = instance_create(x,y,PopupText)
						dir.mytext = "+"+string(wantAmmo)+" "+string(other.typ_name[wep_type[bwep]])
						if ammo[wep_type[bwep]] == typ_amax[wep_type[bwep]]
							dir.mytext = "MAX "+string(other.typ_name[wep_type[bwep]])
					}
				}
		}
	}
	if object_index == Player
	{
		with AcidDreamControl
		{
			event_user(0);	
		}
		if (ultra_got[43] && !altUltra) {
			with instance_create(x,y,CloneShooter) {
				snd_play(sndHitscan,0.1,true);
				alarm[2] = 4;
				dmg = min(ceil(wep_load[wep]*0.5),9);
				depth = other.depth + 1;
				hitscanMode = true;
				alarm[0] = wep_load[wep] + 4
				offset = (random(12) - 6) * other.accuracy;
				event_perform(ev_step,ev_step_end);
				scrFire();
				alarm[0] = wep_load[wep] + 4
				alarm[1] = 1;
			}
			exit;
		}
		if firingStance
		{
			speed = 0;
			var firingStanceAccuracy = accuracy;
			accuracy *= 0.45;
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
				maxSpeed = 1.25;
				if skill_got[2]
				{
					scrApplyExtraFeet();
					maxSpeed += 0.75;
				}
			}	
		}
	}
	drawempty = 10

	//IDKWID
	if wep=75
	{
	IDKWID=true;
	    do{wep=round(random(maxwep))
	    }until (wep!=69&&wep!=298)//not Oops gun pls and golden oops gun
	}
	if instance_exists(AutoAim)
	{
		var n = instance_nearest(x,y,enemy);
		if n != noone && n.team != 2
		{
			UberCont.mouse__x = n.x;
			UberCont.mouse__y = n.y;
		}
	}

	var aimDirection = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
	if wep_type[wep] == 5 && !instance_exists(LaserBrainFX)
	{
		with instance_create(x,y,LaserBrainFX)
		{
			owner = other.id;	
		}
	}
	
	switch(wep)
	{
	//REVOLVER
	case 1:

	snd_play_fire(sndPistol)

	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,Bullet1)
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 2

	break;

	//TRIPLE MACHINEGUN
	case 2:

	snd_play_fire(sndTripleMachinegun)

	repeat(3)
	{
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(70)-35,2+random(2))
	}

	with instance_create(x,y,Bullet1)
	{motion_add(aimDirection+(random(6)-3)*other.accuracy,16)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet1)
	{motion_add(aimDirection+15*other.accuracy+(random(6)-3)*other.accuracy,16)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet1)
	{motion_add(aimDirection-15*other.accuracy+(random(6)-3)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 6
	break;

	//WRENCH
	case 3:

	snd_play_fire(sndWrench)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x(((Player.skill_got[13]+bettermelee)*20),aimDirection),y+lengthdir_y(((Player.skill_got[13]+bettermelee)*20),aimDirection),WrenchSlash)
	{
	dmg = 9
	longarms = 0
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2.7+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	if !skill_got[2]
	{
		motion_add(aimDirection,5)
	}
	BackCont.viewx2 += lengthdir_x(12,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection)*UberCont.opt_shake
	BackCont.shake += 1
	wkick = -4

	break;

	//MACHINEGUN
	case 4:

	snd_play_fire(sndMachinegun)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,Bullet1)
	{motion_add(aimDirection+(random(10)-5)*other.accuracy,17)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = 2

	break;

	//SHOTGUN
	case 5:

	snd_play_fire(sndShotgun)

	repeat(7)
	{
	with instance_create(x,y,Bullet2)
	{motion_add(aimDirection+(random(40)-20)*other.accuracy,13+random(5))
	image_angle = direction
	team = other.team}
	}

	BackCont.viewx2 += lengthdir_x(12,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 6

	break;


	//CROSSBOW
	case 6:

	snd_play_fire(sndCrossbow)

	with instance_create(x,y,Bolt)
	{motion_add(aimDirection+(random(4)-2)*other.accuracy,24)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(40,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(40,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 4

	break;

	//NADER
	case 7:

	snd_play_fire(sndGrenade)

	with instance_create(x,y,Grenade)
	{
	sticky = 0
	motion_add(aimDirection+(random(6)-3)*other.accuracy,10)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = 5

	break;

	//DOUBLE SHOTGUN
	case 8:

	snd_play_fire(sndDoubleShotgun);
	with instance_create(x,y,DoubleShotgunBurst)
	{
	creator = other.id
	ammo = 2
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,1);
		motion_add(aimDirection+180,1)
	}

	BackCont.viewx2 += lengthdir_x(5,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(5,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 8

	break;

	//MINIGUN
	case 9:

	snd_play_fire(sndMinigun)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(80)-40,3+random(2))

	with instance_create(x,y,Bullet1)
	{motion_add(aimDirection+(random(26)-13)*other.accuracy,16)
	image_angle = direction
	team = other.team}
	if !skill_got[2]
	{
		motion_add(aimDirection+180,1)
	}
	BackCont.viewx2 += lengthdir_x(7,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(7,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 4

	break;

	//AUTO SHOTGUN
	case 10:

	snd_play_fire(sndShotgun)

	repeat(6)
	{
	with instance_create(x,y,Bullet2)
	{motion_add(aimDirection+(random(24)-12)*other.accuracy,15+random(4))
	image_angle = direction
	team = other.team}
	}

	BackCont.viewx2 += lengthdir_x(12,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 5

	break;

	//AUTO CROSSBOW
	case 11:

	snd_play_fire(sndCrossbow)

	with instance_create(x,y,Bolt)
	{motion_add(aimDirection+(random(14)-7)*other.accuracy,24)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(40,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(40,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 4

	break;

	//SUPER CROSSBOW
	case 12:

	snd_play_fire(sndSuperCrossbow)

	with instance_create(x,y,Bolt)
	{motion_add(aimDirection,24)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bolt)
	{motion_add(aimDirection+5*other.accuracy,24)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bolt)
	{motion_add(aimDirection-5*other.accuracy,24)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bolt)
	{motion_add(aimDirection+10*other.accuracy,24)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bolt)
	{motion_add(aimDirection-10*other.accuracy,24)
	image_angle = direction
	team = other.team}

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,11);
		motion_add(aimDirection+180,2)
	}

	BackCont.viewx2 += lengthdir_x(60,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(60,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 14
	wkick = 8

	break;


	//SHOVEL
	case 13:

	snd_play_fire(sndShovel)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x(4+(Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y(4+(Player.skill_got[13]+bettermelee)*20,aimDirection),Slash)
	{
	dmg = 10
	longarms = 0
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2.7+longarms)
	image_angle = direction
	team = other.team}
	with instance_create(x+lengthdir_x(4+(Player.skill_got[13]+bettermelee)*15,aimDirection+50*Player.accuracy),y+lengthdir_y(4+(Player.skill_got[13]+bettermelee)*15,aimDirection+50*Player.accuracy),Slash)
	{
	dmg = 8
	longarms = 0
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection+50*other.accuracy,2.6+longarms)
	image_angle = direction
	team = other.team}
	with instance_create(x+lengthdir_x(4+(Player.skill_got[13]+bettermelee)*15,aimDirection-50*Player.accuracy),y+lengthdir_y(4+(Player.skill_got[13]+bettermelee)*15,aimDirection-50*Player.accuracy),Slash)
	{
	dmg = 8
	longarms = 0
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection-50*other.accuracy,2.6+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	if !skill_got[2]
	{
		motion_add(aimDirection,6)
		scrMoveContactSolid(aimDirection,5)
	}
	BackCont.viewx2 += lengthdir_x(24,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(24,aimDirection)*UberCont.opt_shake
	BackCont.shake += 1
	wkick = -4

	break;

	//BAZOOKA
	case 14:

	snd_play_fire(sndRocket)

	with instance_create(x,y,Rocket)
	{motion_add(aimDirection+(random(4)-2)*other.accuracy,6)
	image_angle = direction
	team = other.team}
	if !skill_got[2]
	{
		motion_add(aimDirection + 180,1)
		scrMoveContactSolid(aimDirection + 180,1)
	}
	BackCont.viewx2 += lengthdir_x(30,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(30,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 10

	break;

	// STICKY NADER
	case 15:

	snd_play_fire(sndGrenade)

	with instance_create(x,y,Grenade)
	{
	sprite_index = sprStickyGrenade
	sticky = 1
	motion_add(aimDirection+(random(6)-3)*other.accuracy,11)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = 5

	break;

	//SMG
	case 16:

	snd_play_fire(sndPistol)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(60)-30,2+random(2))

	with instance_create(x,y,Bullet1)
	{motion_add(aimDirection+(random(13)-11.5)*other.accuracy,17)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = 2

	break;


	//ASSAULT RIFLE
	case 17:

	with instance_create(x,y,Burst)
	{
	creator = other.id
	ammo = 3
	time = 2
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;


	//DISC GUN
	case 18:

	snd_play_fire(sndDiscgun)

	with instance_create(x,y,Disc)
	{motion_add(aimDirection+(random(10)-5)*other.accuracy,10)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 4

	break;


	//LASER PISTOL
	case 19:


	if Player.skill_got[17] = 1
	snd_play_fire(sndLaserUpg)
	else
	snd_play_fire(sndLaser)
	with instance_create(x,y,Laser)
	{image_angle = aimDirection+(random(2)-1)*other.accuracy
	team = other.team
	event_perform(ev_alarm,0)
	}

	BackCont.viewx2 += lengthdir_x(3,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(3,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = 2

	break;


	//LASER RIFLE
	case 20:

	if Player.skill_got[17] = 1
	snd_play_fire(sndLaserUpg)
	else
	snd_play_fire(sndLaser)
	with instance_create(x,y,Laser)
	{image_angle = aimDirection+(random(8)-4)*other.accuracy
	team = other.team
	event_perform(ev_alarm,0)}

	BackCont.viewx2 += lengthdir_x(3,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(3,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = 5

	break;


	//SLUGGER
	case 21:

	snd_play_fire(sndSlugger)

	with instance_create(x,y,Slug)
	{motion_add(aimDirection+(random(10)-5)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(14,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(14,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 10
	wkick = 8

	break;

	//GATLING SLUGGER
	case 22:

	snd_play_fire(sndSlugger)

	with instance_create(x,y,Slug)
	{motion_add(aimDirection+(random(12)-6)*other.accuracy,18)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 10
	wkick = 8

	break;

	//ASSAULT SLUGGER
	case 23:

	with instance_create(x,y,SlugBurst)
	{
	creator = other.id
	ammo = 3
	time = 3
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;

	//ENERGY SWORD
	case 24:


	if Player.skill_got[17] = 1
	snd_play_fire(sndEnergySwordUpg)
	else
	snd_play_fire(sndEnergySword)
	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x(4+(Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y(4+(Player.skill_got[13]+bettermelee)*20,aimDirection),EnergySlash)
	{
		dmg = 22;
	longarms = 0
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2.7+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	if !skill_got[2]
	{
		motion_add(aimDirection,5)
		scrMoveContactSolid(aimDirection,2)
	}
	BackCont.viewx2 += lengthdir_x(24,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(24,aimDirection)*UberCont.opt_shake
	BackCont.shake += 1
	wkick = -4

	break;

	//SUPER SLUGGER
	case 25:

	snd_play_fire(sndSuperSlugger)

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,10);
		motion_add(aimDirection+180,2)
	}

	with instance_create(x,y,Slug)
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,18)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Slug)
	{motion_add(aimDirection+10*other.accuracy+(random(8)-4)*other.accuracy,18)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Slug)
	{motion_add(aimDirection+20*other.accuracy+(random(8)-4)*other.accuracy,18)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Slug)
	{motion_add(aimDirection-10*other.accuracy+(random(8)-4)*other.accuracy,18)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Slug)
	{motion_add(aimDirection-20*other.accuracy+(random(8)-4)*other.accuracy,18)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 15
	wkick = 8

	break;

	//HYPER RIFLE
	case 26:

	with instance_create(x,y,Burst)
	{
	creator = other.id
	ammo = 5
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;



	//MINES
	/*
	if wep = 27
	{
	snd_play_fire(sndGrenade)

	with instance_create(x,y,Mine)
	{
	motion_add(aimDirection+(random(30)-15)*other.accuracy,4)
	team = other.team}

	BackCont.viewx2 += lengthdir_x(5,aimDirection)
	BackCont.viewy2 += lengthdir_y(5,aimDirection)
	wkick = 8
	}*/

	//SCREWDRIVER
	case 27:

	snd_play_fire(sndScrewdriver)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x(8+(Player.skill_got[13]+bettermelee)*10,aimDirection),y+lengthdir_y(8+(Player.skill_got[13]+bettermelee)*10,aimDirection),Shank)
	{
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection+(random(10)-5)*other.accuracy,4+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	if !skill_got[2]
	{
		motion_add(aimDirection,3)
		scrMoveContactSolid(aimDirection,0.5)
	}
	BackCont.viewx2 += lengthdir_x(12,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection)*UberCont.opt_shake
	BackCont.shake += 1
	wkick = -8

	break;

	//LASER MINIGUN
	case 28:

	if Player.skill_got[17] = 1
	snd_play_fire(sndLaserUpg)
	else
	snd_play_fire(sndLaser)
	with instance_create(x,y,Laser)
	{image_angle = aimDirection+(random(16)-8)*other.accuracy
	team = other.team
	event_perform(ev_alarm,0)}
	BackCont.viewx2 += lengthdir_x(5,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(5,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = 6

	if !skill_got[2]
	{
		motion_add(aimDirection+180,1.5)
	}

	break;


	//BLOOD NADER
	case 29:

	snd_play_fire(sndBloodLauncher)

	with instance_create(x,y,BloodGrenade)
	{
	sticky = 0
	motion_add(aimDirection+(random(12)-6)*other.accuracy,13)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(5,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(5,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = 4

	break;

	//SPLINTER GUN
	case 30:
	with instance_create(x,y,Splinter)//5 splinters
	{motion_add(aimDirection+(random(6)-3)*other.accuracy,20+random(4))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,SplinterBurst)
	{
		totalAccuracy = 16;
		creator = other.id
		ammo = 5
		time = 1
		team = other.team
		event_perform(ev_alarm,0) 
	}

	BackCont.viewx2 += lengthdir_x(15,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(15,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = 3

	break;


	//TOXIC BOW
	case 31:

	snd_play_fire(sndCrossbow)

	with instance_create(x,y,ToxicBolt)
	{motion_add(aimDirection,22)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(40,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(40,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 4

	break;

	//SENTRY GUN
	case 32:

	snd_play_fire(sndGrenade)

	with instance_create(x,y,SentryGun)
	{
	sticky = 0
	motion_add(aimDirection,6)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(5,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(5,aimDirection+180)*UberCont.opt_shake

	wkick = -10

	break;

	//WAVE GUN
	case 33:
	snd_play_fire(sndWaveGun);
	with instance_create(x,y,WaveBurst)
	{
	creator = other.id
	ammo = 8
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;

	//PLASMA GUN
	case 34:

	if Player.skill_got[17] = 1
	snd_play_fire(sndPlasmaUpg)
	else
	snd_play_fire(sndPlasma)

	with instance_create(x+lengthdir_x(6,aimDirection),y+lengthdir_y(6,aimDirection),PlasmaBall)
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,2)
	image_angle = direction
	team = other.team}

	if !skill_got[2]
	{
		motion_add(aimDirection+180,1)
	}
	BackCont.viewx2 += lengthdir_x(3,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(3,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = 5
	resetSpeed=false;

	break;

	//PLASMA CANNON
	case 35:

	if Player.skill_got[17] = 1
	snd_play_fire(sndPlasmaBigUpg)
	else
	snd_play_fire(sndPlasmaBig)

	with instance_create(x+lengthdir_x(8,aimDirection),y+lengthdir_y(8,aimDirection),PlasmaBig)
	{motion_add(aimDirection+(random(4)-2)*other.accuracy,2)
	image_angle = direction
	team = other.team}

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,5);
		motion_add(aimDirection+180,6)
	}
	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 10
	resetSpeed=false;

	break;

	//ENERGY HAMMER
	case 36:


	if Player.skill_got[17] = 1
	snd_play_fire(sndEnergyHammerUpg)
	else
	snd_play_fire(sndEnergyHammer)
	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x(4+(Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y(4+(Player.skill_got[13]+bettermelee)*20,aimDirection),EnergyHammerSlash)
	{
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*2
	motion_add(aimDirection,1+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	if !skill_got[2]
		motion_add(aimDirection,7)
	BackCont.viewx2 += lengthdir_x(32,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(32,aimDirection)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = -3

	break;

	//JACKHAMMER
	case 37:

	with instance_create(x,y,SawBurst)
	{
	creator = other.id
	ammo = 12
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;

	//FLAK CANNON
	case 38:

	snd_play_fire(sndFlakCannon)

	with instance_create(x,y,FlakBullet)
	{
	motion_add(aimDirection+(random(10)-5)*other.accuracy,11+random(2))
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(32,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(32,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 7

	break;


	//GOLDEN REVOLVER
	case 39:

	snd_play_fire(sndGoldPistol)

	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,Bullet1)
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,17)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 4

	break

	//GOLDEN WRENCH
	case 40:

	snd_play_fire(sndGoldWrench)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x(4+(Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y(4+(Player.skill_got[13]+bettermelee)*20,aimDirection),WrenchSlash)
	{
	sprite_index=sprGoldenSlash
	dmg = 9
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2.7+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	if !skill_got[2]
		motion_add(aimDirection,6)
	BackCont.viewx2 += lengthdir_x(16,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(16,aimDirection)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = -6

	break;


	//GOLDEN MACHINEGUN
	case 41:

	snd_play_fire(sndGoldMachinegun)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,Bullet1)
	{motion_add(aimDirection+(random(6)-3)*other.accuracy,17)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(7,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(7,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3.4
	wkick = 4

	break;


	//GOLDEN SHOTGUN
	case 42:

	snd_play_fire(sndGoldShotgun)

	repeat(8)
	{
	with instance_create(x,y,Bullet2)
	{motion_add(aimDirection+(random(40)-20)*other.accuracy,13+random(5))
	image_angle = direction
	team = other.team}
	}

	BackCont.viewx2 += lengthdir_x(16,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(16,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 10
	wkick = 8

	break;



	//GOLDEN CROSSBOW
	case 43:

	snd_play_fire(sndGoldCrossbow)

	with instance_create(x,y,Bolt)
	{motion_add(aimDirection,24)
	image_angle = direction
	team = other.team
	sprite_index=sprGoldBolt}

	BackCont.viewx2 += lengthdir_x(44,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(44,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 6

	break;

	//GOLDEN NADER
	case 44:

	snd_play_fire(sndGoldGrenade)

	with instance_create(x,y,Grenade)
	{
	sprite_index = sprGoldGrenade
	sticky = 0
	motion_add(aimDirection,12)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(12,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 7

	break;

	//GOLDEN LASER PISTOL
	case 45:

	if Player.skill_got[17] = 1
	snd_play_fire(sndGoldLaserUpg)
	else
	snd_play_fire(sndGoldLaser);
	with instance_create(x,y,Laser)
	{image_angle = aimDirection
	team = other.team
	event_perform(ev_alarm,0)}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 4

	break;


	//CHICKEN SWORD
	case 46:

	snd_play_fire(choose(sndSword1,sndSword2))

	instance_create(x,y,Dust)

	if !skill_got[2]
	scrMoveContactSolid(aimDirection,5)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x(4+(Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y(4+(Player.skill_got[13]+bettermelee)*20,aimDirection),Slash)
	{
		dmg = 10
		longarms = 0
	
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection,2.7+longarms)
		image_angle = direction
		team = other.team
	}

	wepangle = -wepangle
	speed = +speed*0.5;
	BackCont.viewx2 += lengthdir_x(8,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection)*UberCont.opt_shake
	BackCont.shake += 1
	wkick = -6

	break;


	//NUKE LAUNCHER
	case 47:

	snd_play_fire(sndNukeFire)

	with instance_create(x,y,Nuke)
	{motion_add(aimDirection+(random(4)-2)*other.accuracy,2)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(40,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(40,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 10

	break;

	//ION CANNON
	case 48:
	snd_play_fire(sndLaserCannonCharge);
	with instance_create(x,y,IonBurst)
	{
	creator = other.id
	ammo = 16
	time = 1
	team = other.team
	alarm[0] = 20
	}

	BackCont.shake += 6
	wkick = 3

	break;

	//QUADRUPLE MACHINEGUN
	case 49:

	snd_play_fire(sndQuadMachinegun)

	repeat(4)
	{
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(70)-35,4+random(3))
	}

	with instance_create(x,y,Bullet1)
	{motion_add(aimDirection+6*other.accuracy+(random(6)-3)*other.accuracy,16)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet1)
	{motion_add(aimDirection-6*other.accuracy+(random(6)-3)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	with instance_create(x,y,Bullet1)
	{motion_add(aimDirection+18*other.accuracy+(random(6)-3)*other.accuracy,16)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet1)
	{motion_add(aimDirection-18*other.accuracy+(random(6)-3)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 8

	break;

	//FLAMETHROWER
	case 50:

	if !instance_exists(FlameSound)
	instance_create(x,y,FlameSound)
	with instance_create(x,y,FlameBurst)
	{
	creator = other.id
	ammo = 10
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;

	//DRAGON
	case 51:

	if !instance_exists(DragonSound)
		instance_create(x,y,DragonSound)
	with instance_create(x,y,DragonBurst)
	{
	creator = other.id
	ammo = 5
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;


	//FLARE GUN
	case 52:

	snd_play_fire(sndFlare)

	with instance_create(x,y,Flare)
	{
	sticky = 0
	motion_add(aimDirection+(random(14)-7)*other.accuracy,9)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 5

	break;


	//ENERGY SCREWDRIVER
	case 53:

	if Player.skill_got[17] = 1
	snd_play_fire(sndEnergyScrewdriverUpg)
	else
	snd_play_fire(sndEnergyScrewdriver)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x(5+(Player.skill_got[13]+bettermelee)*10,aimDirection),y+lengthdir_y(5+(Player.skill_got[13]+bettermelee)*10,aimDirection),EnergyShank)
	{
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection+(random(10)-5)*other.accuracy,4.5+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	if !skill_got[2]
		motion_add(aimDirection,3)
	BackCont.viewx2 += lengthdir_x(12,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = -8

	break;


	//HYPER LAUNCHER
	case 54:

	snd_play_fire(sndHyperLauncher)

	with instance_create(x,y,HyperGrenade)
	{
	direction = aimDirection+(random(4)-2)*other.accuracy
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(20,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(20,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 8

	break;

	//LASER CANNON
	case 55:

	snd_play_fire(sndLaserCannonCharge)

	with instance_create(x,y,LaserCannon)
	{
	creator = other.id
	ammo = 5+(Player.skill_got[17]+other.betterlaserbrain)*2
	time = 1
	team = other.team
	alarm[0] = 13//15 originally
	alarm[1] = alarm[0] + ammo*time;
		if Player.skill_got[42]
		{
			alarm[0] = max(1,alarm[0]*0.25);
			if Player.ultra_got[97] && !Player.altUltra
				alarm[0] = 1;
		}
	}

	break;


	//RUSTY REVOLVER
	case 56:

	snd_play_fire(sndRustyRevolver)

	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,Bullet1)
	{motion_add(aimDirection,15)
	image_angle = direction
	team = other.team}
	
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,1);
		motion_add(aimDirection + 180,1)
	}
	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 4

	break;


	//LIGHTNING PISTOL
	case 57:

	if Player.skill_got[17] = 1
	snd_play_fire(sndLightning3)
	else
	snd_play_fire(sndLightning1)


	with instance_create(x,y,Lightning)
	{
		image_angle = aimDirection+(random(20)-10)*other.accuracy
		team = other.team
		ammo = 16
		event_perform(ev_alarm,0)
		with instance_create(x,y,LightningSpawn)
			image_angle = other.image_angle
	}

	BackCont.viewx2 += lengthdir_x(3,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(3,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 4

	break;

	//LIGHTNING RIFLE
	case 58:

	if Player.skill_got[17] = 1
	snd_play_fire(choose(sndLightning2,sndLightning3))
	else
	snd_play_fire(sndLightning1)


	with instance_create(x,y,Lightning)
	{image_angle = aimDirection+(random(6)-3)*other.accuracy
	team = other.team
	ammo = 33
	event_perform(ev_alarm,0)
	with instance_create(x,y,LightningSpawn)
	image_angle = other.image_angle}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 8

	break;


	//LIGHTNING SHOTGUN
	case 59:

	if Player.skill_got[17] = 1
	snd_play_fire(sndThunder)
	else
	snd_play_fire(choose(sndLightning2,sndLightning3))

	repeat(7)
	{
	with instance_create(x,y,Lightning)
	{image_angle = aimDirection+(random(60)-30)*other.accuracy
	team = other.team
	ammo = 12+random(6)
	event_perform(ev_alarm,0)
	with instance_create(x,y,LightningSpawn)
	image_angle = other.image_angle}}

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,3);
		motion_add(aimDirection + 180,1)
	}
	BackCont.viewx2 += lengthdir_x(4,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(4,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 10
	wkick = 5

	break;

	//BLOOD SHOTGUN
	case 60:

	snd_play_fire(sndBloodLauncher)
		with instance_create(x,y,BloodGrenade)
		{
		sticky = 0
		motion_add(aimDirection-(20*other.accuracy),14+random(6))
		image_angle = direction
		team = other.team
		with instance_create(x,y,BloodStreak){
		image_angle = other.direction}
		alarm[0]=6;
		//instance_destroy();
		}
		with instance_create(x,y,BloodGrenade)
		{
		sticky = 0
		motion_add(aimDirection,14+random(6))
		image_angle = direction
		team = other.team
		with instance_create(x,y,BloodStreak){
		image_angle = other.direction}
		alarm[0]=6;
		//instance_destroy();
		}
		with instance_create(x,y,BloodGrenade)
		{
		sticky = 0
		motion_add(aimDirection+(20*other.accuracy),14+random(6))
		image_angle = direction
		team = other.team
		with instance_create(x,y,BloodStreak){
		image_angle = other.direction}
		alarm[0]=6;
		//instance_destroy();
		}

	BackCont.viewx2 += lengthdir_x(5,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(5,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 5

	break;

	//BLOOD PISTOL
	case 61:

	snd_play_fire(sndBloodPistol)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,BloodBullet)
	{motion_add(aimDirection+(random(12)-6)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = 2

	break;

	//POPGUN
	case 62:

	snd_play_fire(sndPopgun)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,Bullet2)
	{motion_add(aimDirection+(random(16)-8)*other.accuracy,14+random(2))
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = 2

	break;


	//BLACKHOLE GENERATOR
	case 63:

	snd_play_fire(sndLightningPlasma2)
	repeat(2){
	with instance_create(x,y,Lightning)
	{image_angle = aimDirection+(random(60)-30)*other.accuracy
	team = other.team
	ammo = 7
	event_perform(ev_alarm,0)
	with instance_create(x,y,LightningSpawn)
	image_angle = other.image_angle}
	}

	with instance_create(x,y,Implosion)
	{
	sticky = 0
	motion_add(aimDirection+(random(6)-3)*other.accuracy,5)
	image_angle = direction
	team = other.team
		if Player.skill_got[42]
		{
			duration = Player.betterTail;
			time -= 1;
			if Player.ultra_got[97] && !Player.altUltra
				time = 1;
			scrActivateTail(hasTailNow);
		}
	}

	BackCont.viewx2 += lengthdir_x(14,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(14,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 8

	break;


	//POP RIFLE
	case 64:

	with instance_create(x,y,Burst2)
	{
	creator = other.id
	ammo = 3
	time = 2
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;


	//POP HYPER RIFLE
	case 65:

	with instance_create(x,y,Burst2)
	{
	creator = other.id
	ammo = 5
	time = 1
	team = other.team
	projectileSpeed += 3;
	event_perform(ev_alarm,0) 
	}

	break;


	//QUADRUPLE SHOTGUN
	case 66:

	snd_play_fire(sndDoubleShotgun)
	with instance_create(x,y,DoubleShotgunBurst)
	{
		alarm[1] = 2;
		creator = other.id
		ammo = 4
		time = 1
		team = other.team
		event_perform(ev_alarm,0) 
	}
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,1);
		motion_add(aimDirection+180,1)
	}

	BackCont.viewx2 += lengthdir_x(15,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(15,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 10
	wkick = 12

	break;


	//SWORD GUN
	case 67:

	snd_play_fire(sndCrossbow)
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,1);
		motion_add(aimDirection+180,1)
	}
	with instance_create(x,y,SwordBullet)
	{motion_add(aimDirection+(random(4)-2)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 2

	break;


	//AUTO GRENADE LAUNCHER
	case 68:

	snd_play_fire(sndGrenade)

	with instance_create(x,y,Grenade)
	{
	sticky = 0
	motion_add(aimDirection+(random(8)-4)*other.accuracy,15)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = 5

	break;


	//OOPS GUN
	case 69:

	snd_play_fire(sndPistol)
	instance_create(x,y,SmallExplosion);
	snd_play(sndExplosionS);
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	//kill player (This is actually really bad design but I don't care it only happens one in a milion so its funny)
	Player.my_health=0;
	Player.armour = 0;
	Player.hitBy = Player.spr_dead;

	BackCont.viewx2 += lengthdir_x(800,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(800,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 500
	wkick = 40
	exit;
	break;


	//MORPH-O-RAY
	case 70:

	if !instance_exists(MorphSound)
	instance_create(x,y,MorphSound)
	with instance_create(x,y,Ray)
	{
		team = other.team;
	creator = other.id
	ammo = 5
	time = 3
	team = other.team
	}

	break;


	//SUPER BAZOOKA
	case 71:

	snd_play_fire(sndSuperBazooka)

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,12);
		motion_add(aimDirection+180,4)
	}

	with instance_create(x,y,Rocket)
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,4)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Rocket)
	{motion_add(aimDirection+10*other.accuracy+(random(4)-2)*other.accuracy,4)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Rocket)
	{motion_add(aimDirection+20*other.accuracy+(random(4)-2)*other.accuracy,4)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Rocket)
	{motion_add(aimDirection-10*other.accuracy+(random(4)-2)*other.accuracy,4)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Rocket)
	{motion_add(aimDirection-20*other.accuracy+(random(4)-2)*other.accuracy,4)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(60,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(60,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 14
	wkick = 8

	break;


	//GATLING BAZOOKA
	case 72:

	snd_play_fire(sndRocket)

	with instance_create(x,y,Rocket)
	{motion_add(aimDirection+(random(6)-3)*other.accuracy,9 - (instance_number(Rocket) % 3))
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(30,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(30,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 10

	break;


	//EXPLOSIVE exMORPH-O-RAY
	case 73:

	if !instance_exists(MorphSound)
	instance_create(x,y,MorphSound)
	with instance_create(x,y,Ray)
	{
	creator = other.id
	ammo = 5
	time = 3
	team = other.team
	morphType = 2;
	}

	break;


	//TRIPLE POP GUN
	case 74:

	snd_play_fire(sndTripleMachinegun)

	repeat(3)
	{
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(70)-35,2+random(2))
	}

	with instance_create(x,y,Bullet2)
	{motion_add(aimDirection+(random(6)-3)*other.accuracy,14+random(2))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet2)
	{motion_add(aimDirection+15*other.accuracy+(random(6)-3)*other.accuracy,14+random(2))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet2)
	{motion_add(aimDirection-15*other.accuracy+(random(6)-3)*other.accuracy,14+random(2))
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 6

	break;

	// wep 75 the IDKWID code is at the start and end of this script

	//PLASMA Rifle
	case 76:

	if Player.skill_got[17] = 1
	snd_play_fire(sndPlasmaUpg)
	else
	snd_play_fire(sndPlasma)

	with instance_create(x+lengthdir_x(6,aimDirection),y+lengthdir_y(6,aimDirection),PlasmaBall)
	{motion_add(aimDirection+(random(10)-5)*other.accuracy,2)
	image_angle = direction
	team = other.team}

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,1);
		motion_add(aimDirection+180,1)
	}
	BackCont.viewx2 += lengthdir_x(3,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(3,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = 5

	break;


	//PLASMA Minigun
	case 77:

	if Player.skill_got[17] = 1
	snd_play_fire(sndPlasmaMinigun)
	else
	snd_play_fire(sndPlasmaMinigunUpg)

	with instance_create(x+lengthdir_x(6,aimDirection),y+lengthdir_y(6,aimDirection),PlasmaBall)
	{motion_add(aimDirection+(random(16)-8)*other.accuracy,2)
	image_angle = direction
	team = other.team}

	if !skill_got[2]
	{
		motion_add(aimDirection+180,2)
	}
	BackCont.viewx2 += lengthdir_x(3,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(3,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = 5
	resetSpeed=false;

	break;


	//HYPER SLUGGER
	case 78:

	snd_play_fire(sndHyperSlugger)

	with instance_create(x,y,HyperSlug)
	{
	direction = aimDirection+(random(4)-2)*other.accuracy
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(20,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(20,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 8

	break;


	//SUPER PLASMA CANNON
	case 79:

	snd_play_fire(sndSuperPlasmaCannon)

	with instance_create(x+lengthdir_x(8,aimDirection),y+lengthdir_y(8,aimDirection),PlasmaHuge)
	{motion_add(aimDirection+(random(4)-2)*other.accuracy,2)
	image_angle = direction
	team = other.team}

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,20);
		motion_add(aimDirection+180,6)
	}
	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 10
	resetSpeed=false;

	break;


	//HUNTER SNIPER
	case 80:

	snd_play_fire(sndSniperFire)

	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,Bullet1)
	{motion_add(aimDirection+4*other.accuracy,16)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet1)
	{motion_add(aimDirection-4*other.accuracy,16)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet1)
	{motion_add(aimDirection-2*other.accuracy,16)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet1)
	{motion_add(aimDirection+2*other.accuracy,16)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet1)
	{motion_add(aimDirection,16)
	image_angle = direction
	team = other.team}


	BackCont.viewx2 += lengthdir_x(15,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(15,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 3

	break;

	//SUPER SWORD GUN
	case 81:

	snd_play_fire(sndHeavyCrossbow)

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,12);
		motion_add(aimDirection+180,14)
	}

	with instance_create(x,y,SwordBullet)
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,16)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,SwordBullet)
	{motion_add(aimDirection+10*other.accuracy+(random(4)-2)*other.accuracy,16)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,SwordBullet)
	{motion_add(aimDirection+20*other.accuracy+(random(4)-2)*other.accuracy,16)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,SwordBullet)
	{motion_add(aimDirection-10*other.accuracy+(random(4)-2)*other.accuracy,16)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,SwordBullet)
	{motion_add(aimDirection-20*other.accuracy+(random(4)-2)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(60,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(60,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 14
	wkick = 8

	break;

	//MEGA LASER PISTOL
	case 82:

	snd_play_fire(sndMegaLaser)

	with instance_create(x+lengthdir_x(8,aimDirection),y+lengthdir_y(8,aimDirection),MegaLaser)
	{image_angle = aimDirection+(random(2)-1)*other.accuracy
	team = other.team
	event_perform(ev_alarm,0)}

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,5);
		motion_add(aimDirection+180,1)
	}
	BackCont.viewx2 += lengthdir_x(3,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(3,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 6

	break;


	//BLOOD RIFLE
	case 83:

	snd_play_fire(sndBloodPistol)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,BloodBullet)
	{motion_add(aimDirection+(random(12)-6)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 2.2
	wkick = 2

	break;


	//TRIPLE BLOOD RIFLE
	case 84:

	snd_play_fire(sndMachinegun)
	snd_play_fire(sndBloodPistol)

	repeat(2)
	{
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(70)-35,2+random(2))
	}

	with instance_create(x,y,BloodBullet)
	{motion_add(aimDirection+(random(6)-3)*other.accuracy,17)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,BloodBullet)
	{motion_add(aimDirection+15*other.accuracy+(random(6)-3)*other.accuracy,17)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,BloodBullet)
	{motion_add(aimDirection-15*other.accuracy+(random(6)-3)*other.accuracy,17)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = 5

	break;

	//ERASER
	case 85:

	snd_play_fire(sndEraserNew)
	with instance_create(x,y,EraserBurst)
	{
	mox=UberCont.mouse__x;
	moy=UberCont.mouse__y;
	creator = other.id
	ammo = 18
	projectileAmount = 2;
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,4);
		motion_add(aimDirection+180,3)
	}
	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 6

	break;


	//SUPER ERASER
	case 86:

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,16);
		motion_add(aimDirection+180,8)
	}
	snd_play_fire(sndEraserNew)
	snd_play_fire(sndEraser)
	with instance_create(x,y,EraserBurst)
	{
	mox=UberCont.mouse__x;
	moy=UberCont.mouse__y;
	creator = other.id
	ammo = 30
	projectileAmount = 2;
	projectileSpeed += 4;
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}
	with instance_create(x,y,EraserBurst)
	{
	mox=x+lengthdir_x(64*other.accuracy,aimDirection+8*other.accuracy+(random(4)-2)*other.accuracy)
	moy=y+lengthdir_y(64*other.accuracy,aimDirection+8*other.accuracy+(random(4)-2)*other.accuracy)
	creator = other.id
	ammo = 30
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	with instance_create(x,y,EraserBurst)
	{
	mox=x+lengthdir_x(64*other.accuracy,aimDirection-8*other.accuracy+(random(4)-2)*other.accuracy)
	moy=y+lengthdir_y(64*other.accuracy,aimDirection-8*other.accuracy+(random(4)-2)*other.accuracy)
	creator = other.id
	ammo = 30
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	BackCont.viewx2 += lengthdir_x(60,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(60,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 14
	wkick = 8

	break;


	//DOUBLE MINIGUN
	case 87:

	snd_play_fire(sndDoubleMinigun)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(80)-40,3+random(2))
	repeat(2){
	with instance_create(x,y,Bullet1)
	{motion_add(aimDirection+(random(32)-16)*other.accuracy,16)
	image_angle = direction
	team = other.team}
	}
	if !skill_got[2]
	{
		motion_add(aimDirection+180,2)
	}
	BackCont.viewx2 += lengthdir_x(7,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(7,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 8

	break;


	//SPLINTER PISTOL
	case 88:

	snd_play_fire(sndSplinterPistol)

	with instance_create(x,y,SplinterBurst)
	{
		totalAccuracy = 16;
		creator = other.id
		ammo = 2
		time = 1
		team = other.team
		event_perform(ev_alarm,0) 
	}
	with instance_create(x,y,SplinterBurst)
	{
		totalAccuracy = 8;
		creator = other.id
		ammo = 2
		time = 1
		team = other.team
		event_perform(ev_alarm,0) 
	}

	BackCont.viewx2 += lengthdir_x(15,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(15,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 2
	wkick -= 2

	break;


	//DIRECTOR SLUGGER
	case 89:

	snd_play_fire(sndSlugger)

	with instance_create(x,y,DirectorSlug)
	{motion_add(aimDirection+(random(10)-5)*other.accuracy,10)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(14,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(14,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 11
	wkick = 8

	break;


	//ASSAULT PISTOL
	case 90:

	with instance_create(x,y,Burst)
	{
	creator = other.id
	ammo = 2
	time = 2
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;


	//ASSAULT SHOTGUN
	case 91:

	with instance_create(x,y,ShotgunBurst)
	{
	creator = other.id
	ammo = 3
	time = 3
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;


	//BEAM SHOTGUN
	case 92:

	//snd_play_fire(sndEraser)
	with instance_create(x,y,BeamShotgunBurst)
	{
	creator = other.id
	ammo = 8
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;


	//BOUNCER SMG
	case 93:

	snd_play_fire(sndBouncerFire)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(60)-30,2+random(2))

	with instance_create(x,y,Bullet3)
	{motion_add(aimDirection+(random(34)-17)*other.accuracy,5.5)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(7,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(7,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = 2

	break;


	//BOUNCER SHOTGUN
	case 94:

	snd_play_fire(sndBouncerShotgun)

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,6);
		motion_add(aimDirection+180,3)
	}

	with instance_create(x,y,Bullet3)
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,5.5)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet3)
	{motion_add(aimDirection+10*other.accuracy+(random(8)-4)*other.accuracy,5.5)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet3)
	{motion_add(aimDirection+20*other.accuracy+(random(8)-4)*other.accuracy,5.5)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet3)
	{motion_add(aimDirection-10*other.accuracy+(random(8)-4)*other.accuracy,5.5)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet3)
	{motion_add(aimDirection-20*other.accuracy+(random(8)-4)*other.accuracy,5.5)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet3)
	{motion_add(aimDirection-30*other.accuracy+(random(8)-4)*other.accuracy,5.5)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet3)
	{motion_add(aimDirection+30*other.accuracy+(random(8)-4)*other.accuracy,5.5)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 10
	wkick = 6

	break;


	//BOUNCER ASSAULT RIFLE
	case 95:

	with instance_create(x,y,BouncerBurst)
	{
	creator = other.id
	ammo = 3
	time = 2
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;


	//HYPER BOUNCER RIFLE
	case 96:

	with instance_create(x,y,BouncerBurst)
	{
		pspeed += 3;
		creator = other.id
		ammo = 5
		time = 2
		team = other.team
		event_perform(ev_alarm,0)
	}

	break;


	//BOUNCER FLAK CANNON
	case 97:

	snd_play_fire(sndFlakCannon)

	with instance_create(x,y,BouncerFlakBullet)
	{
	motion_add(aimDirection+(random(10)-5)*other.accuracy,5.1)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(32,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(32,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 7

	break;


	//MORPH-O-PISTOL
	case 98:

	if !instance_exists(MorphSound)
	instance_create(x,y,MorphSound)
	with instance_create(x,y,Ray)
	{
		team = other.team;
	creator = other.id
	ammo = 3
	time = 3
	team = other.team
	}

	break;


	//SUPER FLAK CANNON
	case 99:

	snd_play_fire(sndSuperFlakCannon)

	with instance_create(x,y,SuperFlakBullet)
	{
	motion_add(aimDirection+(random(10)-5)*other.accuracy,13+random(2))
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(32,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(32,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 14
	wkick = 8

	break;


	//SLEDGEHAMMER
	case 100:

	snd_play_fire(sndHammer)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x(5+(Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y(5+(Player.skill_got[13]+bettermelee)*20,aimDirection),Slash)
	{
	sprite_index=sprHeavySlash;
	dmg = 28//shovel is 8
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2.7+longarms)
	image_angle = direction
	team = other.team
	}

	wepangle = -wepangle
	if !skill_got[2]
	{
		motion_add(aimDirection,5)
		scrMoveContactSolid(aimDirection,2)
	}
	BackCont.viewx2 += lengthdir_x(12,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection)*UberCont.opt_shake
	BackCont.shake += 1
	wkick = -4

	break;


	//LIGHTNING SMG
	case 101:

	if Player.skill_got[17] = 1
	snd_play_fire(sndLightning3)
	else
	snd_play_fire(sndLightning1)


	with instance_create(x,y,Lightning)
	{image_angle = aimDirection+(random(20)-15)*other.accuracy
		iframeskip -= 0.02;
	team = other.team
	ammo = 14
	event_perform(ev_alarm,0)
	with instance_create(x,y,LightningSpawn)
	image_angle = other.image_angle}

	BackCont.viewx2 += lengthdir_x(3,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(3,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 3

	break;


	//FROST PISTOL
	case 102:

	snd_play_fire(sndFrostShot1)

	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,FreezeBullet)
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 4

	break;


	//FROST MACHINEGUN
	case 103:

	snd_play_fire(sndFrostShot2)
	repeat(2)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,FreezeBullet)
	{motion_add(aimDirection+(random(12)-6)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 4

	break;


	//HEAVY REVOLVER
	case 104:

	snd_play_fire(sndHeavyRevolver)

	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,HeavyBullet)
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 5

	break;


	//HEAVY MACHINEGUN
	case 105:

	snd_play_fire(sndHeavyMachinegun)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,HeavyBullet)
	{motion_add(aimDirection+(random(12)-6)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 5

	break;


	//HEAVY ASSAULT RIFLE
	case 106:

	with instance_create(x,y,HeavyBurst)
	{
	creator = other.id
	ammo = 3
	time = 2
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;


	//SHORTGUN
	case 107:

	snd_play_fire(sndSawedOffShotgun)
	with instance_create(x,y,ShortgunBurst)
	{
		creator = other.id
		ammo = 2
		time = 1
		team = other.team
		event_perform(ev_alarm,0) 
	}

	BackCont.viewx2 += lengthdir_x(2,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(2,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 1

	break;


	//DEAD GLOVE
	case 108:

	snd_play_fire(choose(sndGlove1,sndGlove2))

	instance_create(x,y,Dust)
	var currentX = x;
	var currentY = y;
	var hitWall = false;
	with instance_create(x+lengthdir_x(4+(Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y(4+(Player.skill_got[13]+bettermelee)*20,aimDirection),Slash)
	{
		dmg = 9
		longarms = 0
		walled = 1;
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection,2.7+longarms)
		image_angle = direction
		team = other.team
	}
	repeat(2+Player.skill_got[13])
	{
		if !hitWall
		{
			hitWall = scrMoveContactSolid(aimDirection,42)
			instance_create(x,y,Dust)
			with instance_create(x+lengthdir_x(4+(Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y(4+(Player.skill_got[13]+bettermelee)*20,aimDirection),Slash)
			{
				dmg = 9
				walled = 1;
				longarms = 0
				longarms = (Player.skill_got[13]+other.bettermelee)*3
				motion_add(aimDirection,2.7+longarms)
				image_angle = direction
				team = other.team
			}
		}
	}
	if !skill_got[2]
	{
		x += lengthdir_x(1,aimDirection+180)
		y += lengthdir_y(1,aimDirection+180)
		xprevious = x;
		yprevious = y;
		alarm[3]=max(3,alarm[3]);//imunity
	}
	else
	{
		x = currentX;
		y = currentY;
	}
	//wepangle = -wepangle
	BackCont.viewx2 += lengthdir_x(8,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = -12

	break;


	//BLOOD GLOVE
	case 109:

	snd_play_fire(sndBloodHammer)

	instance_create(x,y,Dust)
	var currentX = x;
	var currentY = y;
	var hitWall = false;
	with instance_create(x+lengthdir_x(4+(Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y(4+(Player.skill_got[13]+bettermelee)*20,aimDirection),BloodSlash)
	{
		dmg = 6
		longarms = 0
		walled = 1;
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection,2.7+longarms)
		image_angle = direction
		team = other.team
	}
	repeat(2+Player.skill_got[13])
	{
		if !hitWall
		{
			hitWall = scrMoveContactSolid(aimDirection,42)
			instance_create(x,y,Dust)
			with instance_create(x+lengthdir_x(4+(Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y(4+(Player.skill_got[13]+bettermelee)*20,aimDirection),BloodSlash)
			{
				dmg = 5
				walled = 1;
				longarms = 0
				longarms = (Player.skill_got[13]+other.bettermelee)*3
				motion_add(aimDirection,2.7+longarms)
				image_angle = direction
				team = other.team
			}
		}
	}
	if !skill_got[2]
	{
		x += lengthdir_x(1,aimDirection+180)
		y += lengthdir_y(1,aimDirection+180)
		xprevious = x;
		yprevious = y;
		alarm[3]=max(3,alarm[3]);//imunity
	}
	else
	{
		x = currentX;
		y = currentY;
	}

	BackCont.viewx2 += lengthdir_x(8,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = -12

	break;


	//MINI FLAME CANNON
	case 110:

	snd_play_fire(sndFiretrap)
	snd_play_fire(sndFlare);
	repeat(3)
	with instance_create(x,y,Flame)
	{motion_add(aimDirection+random(10)-5*other.accuracy,2+random(2))
	team = other.team
	}

	with instance_create(x,y,Flame)
	{motion_add(other.image_angle+180+random(10)-5,2+random(2))
	team = other.team
	}
	with instance_create(x,y,MiniFlameCannonBall)
	{
	motion_add(aimDirection+(random(8)-4)*other.accuracy,6)
	team = other.team}

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,4);
		motion_add(aimDirection+180,1)
	}
	BackCont.viewx2 += lengthdir_x(14,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(14,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 10
	wkick = 8

	break;


	//FLAME CANNON
	case 111:

	snd_play_fire(sndFlameCannon)

	with instance_create(x,y,FlameCannonBall)
	{
	image_angle=random(360);
	motion_add(aimDirection+(random(8)-4)*other.accuracy,5)
	team = other.team}

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,10);
		motion_add(aimDirection+180,5)
	}
	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 7
	wkick = 8

	break;


	//INFINITY PISTOL
	case 112:

	snd_play_fire(sndPistol)

	//with instance_create(x,y,Shell)
	//motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,Bullet1)
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 3

	break;


	//INFINITY MACHINEGUN
	case 113:

	snd_play_fire(sndMachinegun)
	//with instance_create(x,y,Shell)
	//motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,Bullet1)
	{motion_add(aimDirection+(random(12)-6)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(7,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(7,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 3

	break;


	//ULTRA REVOLVER
	case 114:

	snd_play_fire(sndUltraPistol)

	repeat(2){
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))
	}

	with instance_create(x,y,Bullet4)
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,22)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(7,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(7,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 3


	break;


	//ULTRA SHOTGUN
	case 115:


	snd_play_fire(sndUltraShotgun)

	repeat(9)
	{
	with instance_create(x,y,Bullet5)
	{motion_add(aimDirection+(random(40)-20)*other.accuracy,14+random(6))
	image_angle = direction
	team = other.team}
	}

	BackCont.viewx2 += lengthdir_x(13,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(13,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 9
	wkick = 7

	break;


	//ULTRA CROSSBOW
	case 116:


	snd_play_fire(sndUltraCrossbow)

	with instance_create(x,y,UltraBolt)
	{motion_add(aimDirection,24)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(41,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(41,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 5

	break;


	//ULTRA LASERPISTOL
	case 117:


	if Player.skill_got[17] = 1
	snd_play_fire(sndUltraLaserUpg)
	else
	snd_play_fire(sndUltraLaser)

	with instance_create(x,y,Laser)
	{image_angle = aimDirection+(random(2)-1)*other.accuracy
		sprite_index = sprUltraLaser;
		dmg += 0.25;
	team = other.team
	defaultPierce *= 2;
	image_yscale+=0.25;
	isUltra=true;
	event_perform(ev_alarm,0)
	}
	with instance_create(x,y,Laser)
	{image_angle = aimDirection+(random(2)-1)+7*other.accuracy
		sprite_index = sprUltraLaser;
		dmg += 0.25;
	team = other.team
	image_yscale+=0.25;
	defaultPierce *= 2;
	isUltra=true;
	event_perform(ev_alarm,0)
	}
	with instance_create(x,y,Laser)
	{image_angle = aimDirection+(random(2)-1)+14*other.accuracy
		sprite_index = sprUltraLaser;
		dmg += 0.25;
	team = other.team
	image_yscale+=0.25;
	defaultPierce *= 2;
	isUltra=true;
	event_perform(ev_alarm,0)
	}
	with instance_create(x,y,Laser)
	{image_angle = aimDirection+(random(2)-1)-7*other.accuracy
		sprite_index = sprUltraLaser;
		dmg += 0.25;
	team = other.team
	image_yscale+=0.25;
	defaultPierce *= 2;
	isUltra=true;
	event_perform(ev_alarm,0)
	}
	with instance_create(x,y,Laser)
	{image_angle = aimDirection+(random(2)-1)-14*other.accuracy
		sprite_index = sprUltraLaser;
		dmg += 0.25;
	team = other.team
	image_yscale+=0.25;
	defaultPierce *= 2;
	isUltra=true;
	event_perform(ev_alarm,0)
	}

	BackCont.viewx2 += lengthdir_x(20,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(20,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 12
	wkick = 9


	break;


	//ULTRA SHOVEL
	case 118:

	snd_play_fire(sndUltraShovel)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x(4+(Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y(4+(Player.skill_got[13]+bettermelee)*20,aimDirection),Slash)
	{
	dmg = 27;
	wallPierce *= 0.5;
	sprite_index=sprUltraSlash;
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2.7+longarms)
	image_angle = direction
	team = other.team}
	with instance_create(x+lengthdir_x(4+(Player.skill_got[13]+bettermelee)*15,aimDirection+50*Player.accuracy),y+lengthdir_y(4+(Player.skill_got[13]+bettermelee)*15,aimDirection+50*Player.accuracy),Slash)
	{
	dmg = 24
	wallPierce *= 0.5;
	sprite_index=sprUltraSlash;
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection+50*other.accuracy,2.6+longarms)
	image_angle = direction
	team = other.team}
	with instance_create(x+lengthdir_x(4+(Player.skill_got[13]+bettermelee)*15,aimDirection-50*Player.accuracy),y+lengthdir_y(4+(Player.skill_got[13]+bettermelee)*15,aimDirection-50*Player.accuracy),Slash)
	{
	dmg = 24
	wallPierce *= 0.5;
	sprite_index=sprUltraSlash;
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection-50*other.accuracy,2.6+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	if !skill_got[2]
		motion_add(aimDirection,8)
	BackCont.viewx2 += lengthdir_x(26,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(26,aimDirection)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = -4

	break;


	//AUTO FLAK CANNON
	case 119:

	snd_play_fire(sndFlakCannon)

	with instance_create(x,y,FlakBullet)
	{
	motion_add(aimDirection+(random(20)-10)*other.accuracy,11+random(2))
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(32,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(32,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 7

	break;


	//ULTRA LIGHTNING RIFLE
	case 120:

	if Player.skill_got[17] = 1
	snd_play_fire(choose(sndLightning2,sndLightning3))
	else
	snd_play_fire(sndLightning1)

	snd_play_fire(sndUltraLaser);


	with instance_create(x,y,UltraLightning)
	{image_angle = aimDirection+(random(6)-3)*other.accuracy
	team = other.team
	ammo = 48//60
	event_perform(ev_alarm,0)
	with instance_create(x,y,LightningSpawn)
	image_angle = other.image_angle}


	BackCont.viewx2 += lengthdir_x(12,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 10
	wkick = 10

	break;


	//ULTRA FLAMETHROWER
	case 121:

	if !instance_exists(DragonSound)
	instance_create(x,y,DragonSound)
	with instance_create(x,y,UltraFlameBurst)
	{
	creator = other.id
	ammo = 5
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;


	//FLARE SHOTGUN
	case 122:

	snd_play_fire(sndFlare)

	with instance_create(x,y,Flare)
	{
		sticky = 1
		motion_add(aimDirection+(30+random(10)-5)*other.accuracy,9)
		image_angle = direction
		team = other.team
	}
	with instance_create(x,y,Flare)
	{
		sticky = 1
		motion_add(aimDirection+(-30+random(10)-5)*other.accuracy,9)
		image_angle = direction
		team = other.team
	}
	with instance_create(x,y,Flare)
	{
		sticky = 1
		motion_add(aimDirection+(10+random(10)-5)*other.accuracy,9)
		image_angle = direction
		team = other.team
	}
	with instance_create(x,y,Flare)
	{
		sticky = 1
		motion_add(aimDirection+(-10+random(10)-5)*other.accuracy,9)
		image_angle = direction
		team = other.team
	}

	BackCont.viewx2 += lengthdir_x(12,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 7
	wkick = 7

	break;


	//FROST GLOVE
	case 123:

	snd_play_fire(sndHammer)

	instance_create(x,y,Dust)
	var currentX = x;
	var currentY = y;
	var hitWall = false;
	with instance_create(x,y,IceFlame)
	{
		motion_add(aimDirection,4)
		image_angle = direction
		team = other.team;
	}
	with instance_create(x+lengthdir_x(4+(Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y(4+(Player.skill_got[13]+bettermelee)*20,aimDirection),FrostSlash)
	{
		dmg = 14
		longarms = 0
		walled = 1;
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection,2.7+longarms)
		image_angle = direction
		team = other.team
	}
	repeat(2+Player.skill_got[13])
	{
		if !hitWall
		{
			hitWall = scrMoveContactSolid(aimDirection,42)
			instance_create(x,y,Dust)
			with instance_create(x,y,IceFlame)
			{
				motion_add(aimDirection,4)
				image_angle = direction
				team = other.team;
			}
			with instance_create(x+lengthdir_x(4+(Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y(4+(Player.skill_got[13]+bettermelee)*20,aimDirection),FrostSlash)
			{
				walled = 1;
				dmg = 14
				longarms = 0
				alarm[11] = choose(0,1);
				longarms = (Player.skill_got[13]+other.bettermelee)*3
				motion_add(aimDirection,2.7+longarms)
				image_angle = direction
				team = other.team
			}
		}
	}
	if !skill_got[2]
	{
		x += lengthdir_x(1,aimDirection+180)
		y += lengthdir_y(1,aimDirection+180)
		xprevious = x;
		yprevious = y;
		alarm[3]=max(3,alarm[3]);//imunity
	}
	else
	{
		x = currentX;
		y = currentY;
	}

	BackCont.viewx2 += lengthdir_x(8,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = -12

	break;


	//LIGHTNING HAMMER
	case 124:

	if Player.skill_got[17] = 1
		snd_play_fire(sndLaserSwordUpg);
	
	snd_play_fire(sndLightningHammer);

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x(4+(Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y(4+(Player.skill_got[13]+bettermelee)*20,aimDirection),LightningSlash)
	{
	dmg = 13//shovel is 8
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2.7+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection,2);
		motion_add(aimDirection,6)
	}
	BackCont.viewx2 += lengthdir_x(12,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = -4

	break;


	//LIGHTNING SHOVEL
	case 125:

	if Player.skill_got[17] = 1
	snd_play_fire(sndLaserSwordUpg)
	else
	snd_play_fire(sndLaserSword)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x(4+(Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y(4+(Player.skill_got[13]+bettermelee)*20,aimDirection),LightningSlash)
	{
	dmg = 20//shovel is 8
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2.7+longarms)
	image_angle = direction
	team = other.team}
	with instance_create(x+lengthdir_x(4+(Player.skill_got[13]+bettermelee)*15,aimDirection+50*Player.accuracy),y+lengthdir_y(4+(Player.skill_got[13]+bettermelee)*15,aimDirection+50*Player.accuracy),LightningSlash)
	{
	dmg = 18//shovel is 8
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection+50*other.accuracy,2.6+longarms)
	image_angle = direction
	team = other.team}
	with instance_create(x+lengthdir_x(4+(Player.skill_got[13]+bettermelee)*15,aimDirection-50*Player.accuracy),y+lengthdir_y(4+(Player.skill_got[13]+bettermelee)*15,aimDirection-50*Player.accuracy),LightningSlash)
	{
	dmg = 18//shovel is 8
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection-50*other.accuracy,2.6+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	if !skill_got[2]
		motion_add(aimDirection,6)
	BackCont.viewx2 += lengthdir_x(24,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(24,aimDirection)*UberCont.opt_shake
	BackCont.shake += 1
	wkick = -4

	break;


	//ENERGY JACKHAMMER
	case 126:

	with instance_create(x,y,EnergyJackhammerBurst)
	{
	creator = other.id
	ammo = 4
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;


	//ENERGY SWORD GUN
	case 127:

	if Player.skill_got[17] = 1
	snd_play_fire(sndPlasmaBigUpg)
	else
	snd_play_fire(sndPlasmaBig)

	with instance_create(x,y,EnergySwordBullet)
	{motion_add(aimDirection+(random(4)-2)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 4

	break;


	//SUPER SWORD GUN
	case 128:

	snd_play_fire(sndLightningPlasma2)

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,14);
		motion_add(aimDirection+180,16)
	}

	with instance_create(x,y,EnergySwordBullet)
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,16)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,EnergySwordBullet)
	{motion_add(aimDirection+10*other.accuracy+(random(4)-2)*other.accuracy,16)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,EnergySwordBullet)
	{motion_add(aimDirection+20*other.accuracy+(random(4)-2)*other.accuracy,16)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,EnergySwordBullet)
	{motion_add(aimDirection-10*other.accuracy+(random(4)-2)*other.accuracy,16)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,EnergySwordBullet)
	{motion_add(aimDirection-20*other.accuracy+(random(4)-2)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(62,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(62,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 16
	wkick = 10

	break;


	//TOXICTHROWER
	case 129:

	if !instance_exists(ToxicSound)
	instance_create(x,y,ToxicSound)
	with instance_create(x,y,ToxicBurst)
	{
	creator = other.id
	ammo = 9
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;


	//TOXIC DRAGON
	case 130:

	if !instance_exists(ToxicDragonSound)
	instance_create(x,y,ToxicDragonSound)
	with instance_create(x,y,ToxicDragonBurst)
	{
	creator = other.id
	ammo = 5
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;


	//HEAVY HYPER RIFLE
	case 131:

	with instance_create(x,y,HeavyBurst)
	{
	creator = other.id
	ammo = 5
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;


	//HYPER BLOOD LAUNCHER
	case 132:

	snd_play_fire(sndBloodLauncher)
	snd_play_fire(sndHyperLauncher);

	with instance_create(x,y,HyperBloodGrenade)
	{
	direction = aimDirection+(random(4)-2)*other.accuracy
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(20,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(20,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 8

	break;


	//AUTO SPLINTER GUN
	case 133:

	with instance_create(x,y,Splinter)//5 splinters
	{motion_add(aimDirection+(random(10)-5)*other.accuracy,20+random(4))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,SplinterBurst)
	{
		totalAccuracy = 19;
		creator = other.id
		ammo = 5
		time = 1
		team = other.team
		event_perform(ev_alarm,0) 
	}

	BackCont.viewx2 += lengthdir_x(16,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(16,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick -= 3

	break;


	//DOUBLE MACHINEGUN
	case 134:

	snd_play_fire(sndMachinegun)

	repeat(2)
	{
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(70)-35,2+random(2))
	}

	with instance_create(x,y,Bullet1)
	{motion_add(aimDirection+8*other.accuracy+(random(8)-4)*other.accuracy,16)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet1)
	{motion_add(aimDirection-8*other.accuracy+(random(8)-4)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(7,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(7,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = 3

	break;


	//LOLLIPOP
	case 135:

	snd_play_fire(sndHammer)
	snd_play_fire(sndLollipop);
	instance_create(x,y,Dust)
	with instance_create(x+lengthdir_x(((Player.skill_got[13]+bettermelee)*20),aimDirection),y+lengthdir_y(((Player.skill_got[13]+bettermelee)*20),aimDirection),Slash)
	{
		dmg = 12
		longarms = 0
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection,4+longarms)
		image_angle = direction
		team = other.team
		sprite_index = sprLollipopSlash;
	}
	with instance_create(x+lengthdir_x(4+(Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y(4+(Player.skill_got[13]+bettermelee)*20,aimDirection),LollipopSlash)
	{
		dmg = 32//shovel is 8 sledge = 16
		longarms = 0
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection,4+longarms)
		image_angle = direction
		team = other.team
	}

	wepangle = -wepangle
	if !skill_got[2]
		motion_add(aimDirection,8)
	BackCont.viewx2 += lengthdir_x(14,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(14,aimDirection)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = -5

	break;


	//SMART GUN
	case 136:

	snd_play_fire(sndSmartgun)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,Bullet1)
	{
	motion_add(aimDirection+(random(12)-6)*other.accuracy,16)

	var target;
	target=instance_nearest(x+lengthdir_x(80,direction),y+lengthdir_y(80,direction),enemy);// nearest in direction of cursor

	if instance_exists(target) && target.team != team
	{
	        if!(collision_line(x,y,target.x,target.y,Wall,false,true) )//No walls between player and target?
	        {
	            if(direction<point_direction(x,y,target.x,target.y)+30+(30*Player.skill_got[19]))
	            {
					direction=point_direction(x,y,target.x,target.y)+(random(12)-6)*other.accuracy;
					motion_add(aimDirection+(random(12)-6)*other.accuracy,16)
	            }
	       }
		   else
		   {
				motion_add(aimDirection+(random(12)-6)*other.accuracy,16)   
		   }
       
	}
	else
	{
		motion_add(aimDirection+(random(12)-6)*other.accuracy,16)	
	}

	image_angle = direction
	team = other.team

	}

	BackCont.viewx2 += lengthdir_x(7,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(7,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 4

	break;


	//SMART MINIGUN
	case 137:

	snd_play_fire(sndMinigun)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,Bullet1)
	{


	var target;
	target=instance_nearest(x+lengthdir_x(80,direction),y+lengthdir_y(80,direction),enemy);// nearest in direction of cursor

	if instance_exists(target)
	{
	        if!(collision_line(x,y,target.x,target.y,Wall,false,true) )//No walls between player and target?
	        {
	            if(direction<point_direction(x,y,target.x,target.y)+30+(30*Player.skill_got[19]))
	            {
	            direction=point_direction(x,y,target.x,target.y)+(random(20)-10)*other.accuracy;
				motion_add(direction,16)
	            }
	       }
		   else
		   {
				motion_add(aimDirection+(random(20)-10)*other.accuracy,16)
		   }
	}
	else
	{
		motion_add(aimDirection+(random(20)-10)*other.accuracy,16)	
	}

	image_angle = direction
	team = other.team

	}

	if !skill_got[2]
	{
		motion_add(aimDirection+180,1)
	}
	BackCont.viewx2 += lengthdir_x(7,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(7,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 4

	break;


	//MEGA LASER RIFLE
	case 138:

	snd_play_fire(sndMegaLaser)

	with instance_create(x+lengthdir_x(8,aimDirection),y+lengthdir_y(8,aimDirection),MegaLaser)
	{image_angle = aimDirection+(random(8)-4)*other.accuracy
	team = other.team
	event_perform(ev_alarm,0)}

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,3);
		motion_add(aimDirection+180,1)
	}
	BackCont.viewx2 += lengthdir_x(4,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(4,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 6

	break;


	//SPLINTER CROSSBOW
	case 139:

	snd_play_fire(sndCrossbow)

	with instance_create(x+lengthdir_x(2,aimDirection),y+lengthdir_y(2,aimDirection),Bolt)
	{motion_add(aimDirection,25)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,SplinterBurst)
	{
		totalAccuracy = 16;
		creator = other.id
		ammo = 2
		time = 1
		team = other.team
		event_perform(ev_alarm,0) 
	}
	with instance_create(x,y,SplinterBurst)
	{
		totalAccuracy = 8;
		creator = other.id
		ammo = 2
		time = 1
		team = other.team
		event_perform(ev_alarm,0) 
	}
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,1);
		motion_add(aimDirection+180,1)
	}
	BackCont.viewx2 += lengthdir_x(40,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(40,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 5

	break;


	//HYPER PLASMA CANNON
	case 140:

	snd_play_fire(sndLightningPlasma2)
	snd_play_fire(sndHyperLauncher);

	with instance_create(x,y,HyperPlasmaCannon)
	{
	direction = aimDirection+(random(4)-2)*other.accuracy
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(20,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(20,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 8

	break;


	//BULLET SHOTGUN
	case 141:

	snd_play_fire(sndShotgun)

	repeat(8)
	{
	with instance_create(x,y,Bullet1)
	{motion_add(aimDirection+(random(40)-20)*other.accuracy,14+random(6))
	image_angle = direction
	team = other.team}
	}

	BackCont.viewx2 += lengthdir_x(12,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 6

	break;


	//BLOOD BULLET SHOTGUN
	case 142:

	snd_play_fire(sndShotgun)
	snd_play_fire(sndBloodHammer);

	repeat(8)
	{
	with instance_create(x,y,BloodBullet)
	{motion_add(aimDirection+(random(40)-20)*other.accuracy,13+random(6))
	image_angle = direction
	team = other.team}
	}

	BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 6

	break;


	//LINE GRENADE
	case 143:

	snd_play_fire(sndHyperLauncher)

	with instance_create(x,y,LineGrenade)
	{
	direction = aimDirection+(random(2)-1)*other.accuracy
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(30,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(30,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 8

	break;


	//HYPER LIGHTNING LAUNCHER
	case 144:

	snd_play_fire(sndHyperLightning)
	snd_play_fire(sndHyperLauncher)

	with instance_create(x,y,HyperLightning)
	{
	direction = aimDirection+(random(4)-2)*other.accuracy
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(20,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(20,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 8

	break;


	//LINE OF FIRE
	case 145:

	snd_play_fire(sndGrenade)
	snd_play_fire(sndHyperLauncher)
	with instance_create(x,y,LineFire)
	{
	direction = aimDirection+(random(2)-1)*other.accuracy
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(30,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(30,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 8

	break;


	//TOXIC LINE
	case 146:

	snd_play_fire(sndGrenade)
	snd_play_fire(sndHyperLauncher)
	with instance_create(x,y,LineToxic)
	{
	direction = aimDirection+(random(2)-1)*other.accuracy
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(30,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(30,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 8

	break;


	//FROST SHOTGUN
	case 147:

	snd_play_fire(sndShotgun)

	repeat(9)
	{
	with instance_create(x,y,FreezeBullet)
	{motion_add(aimDirection+(random(40)-20)*other.accuracy,14+random(6))
	image_angle = direction
	team = other.team}
	}

	BackCont.viewx2 += lengthdir_x(14,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(14,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 9
	wkick = 8

	break;


	//PISTOLE
	case 148:

	with instance_create(x,y,PistoleBurst)
	{
	creator = other.id
	ammo = 2
	time = 3
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;


	//HYPER BURST SHOTGUN
	case 149:

	with instance_create(x,y,ShotgunBurst)
	{
		projectileVelocity += 2;
	creator = other.id
	ammo = 5
	time = 2
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;


	//HYPER ASSAULT SLUGGER
	case 150:

	with instance_create(x,y,SlugBurst)
	{
	creator = other.id
	ammo = 5
	time = 2
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;


	//INFINTY SHOTGUN
	case 151:

	snd_play_fire(sndShotgun)

	repeat(7)
	{
	with instance_create(x,y,Bullet2)
	{motion_add(aimDirection+(random(36)-18)*other.accuracy,12+random(6))
	image_angle = direction
	team = other.team}
	}

	BackCont.viewx2 += lengthdir_x(14,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(14,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 10
	wkick = 7

	break;


	//INFINITY CROSSBOW
	case 152:

	snd_play_fire(sndCrossbow)

	with instance_create(x,y,Bolt)
	{motion_add(aimDirection,25)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(40,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(40,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 6

	break;


	//INCINERATOR
	case 153:

	snd_play_fire(sndIncinerator)

	repeat(3)
	{
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(70)-35,2+random(2))
	}

	with instance_create(x,y,Bullet6)
	{motion_add(aimDirection+(random(6)-3)*other.accuracy,17+random(2))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet6)
	{motion_add(aimDirection+14*other.accuracy+(random(6)-3)*other.accuracy,17+random(2))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet6)
	{motion_add(aimDirection-14*other.accuracy+(random(6)-3)*other.accuracy,17+random(2))
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(9,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(9,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 6

	break;


	//FLAME POP GUN
	case 154:

	snd_play_fire(sndMachinegun)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,Bullet6)
	{motion_add(aimDirection+(random(16)-8)*other.accuracy,14.5+random(2))
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(7,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(7,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = 3

	break;


	//MINI INCINERATOR
	case 155:

	snd_play_fire(sndIncinerator)

	repeat(2)
	{
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(70)-35,2+random(2))
	}

	with instance_create(x,y,Bullet6)
	{motion_add(aimDirection+6*other.accuracy+(random(6)-3)*other.accuracy,16+random(2))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet6)
	{motion_add(aimDirection-6*other.accuracy+(random(6)-3)*other.accuracy,16+random(2))
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 4

	break;


	//FLAME SHOTGUN
	case 156:

	snd_play_fire(sndFireShotgun)

	repeat(6)
	{
	with instance_create(x,y,Bullet6)
	{motion_add(aimDirection+(random(40)-20)*other.accuracy,12+random(6))
	image_angle = direction
	team = other.team}
	}

	BackCont.viewx2 += lengthdir_x(13,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(13,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 9
	wkick = 6

	break;


	//DOUBLE FLAME SHOTGUN
	case 157:

	snd_play_fire(sndDoubleFireShotgun)

	with instance_create(x,y,DoubleFlameShotgunBurst)
	{
	creator = other.id
	ammo = 2
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,1);
		motion_add(aimDirection+180,1)
	}

	BackCont.viewx2 += lengthdir_x(7,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(7,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 8

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,1);
		motion_add(aimDirection+180,1)
	}

	break;


	//AUTO FLAME SHOTGUN
	case 158:

	snd_play_fire(sndFireShotgun)

	repeat(5)
	{
	with instance_create(x,y,Bullet6)
	{motion_add(aimDirection+(random(30)-15)*other.accuracy,12+random(6))
	image_angle = direction
	team = other.team}
	}

	BackCont.viewx2 += lengthdir_x(13,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(13,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 9
	wkick = 5

	break;


	//QUADRUPLE FLAME SHOTGUN
	case 159:

	snd_play_fire(sndDoubleFireShotgun)
	with instance_create(x,y,DoubleFlameShotgunBurst)
	{
		alarm[1] = 2;
		creator = other.id
		ammo = 4
		time = 1
		team = other.team
		event_perform(ev_alarm,0) 
	}
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,1);
		motion_add(aimDirection+180,1)
	}

	BackCont.viewx2 += lengthdir_x(16,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(16,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 12
	wkick = 12

	break;


	//FLAME ERASER
	case 160:

	snd_play_fire(sndEraser)
	snd_play_fire(sndFireShotgun);
	with instance_create(x,y,FlameEraserBurst)
	{
	mox=UberCont.mouse__x;
	moy=UberCont.mouse__y;
	creator = other.id
	ammo = 14
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	BackCont.viewx2 += lengthdir_x(9,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(9,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 6

	break;


	//SUPER FLAME ERASER
	case 161:

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,1);
		motion_add(aimDirection+180,1)
	}

	snd_play_fire(sndEraser)
	snd_play_fire(sndDoubleFireShotgun);
	with instance_create(x,y,FlameEraserBurst)
	{
	mox=UberCont.mouse__x;
	moy=UberCont.mouse__y;
	creator = other.id
	ammo = 28
	projectileAmount = 2;
	projectileSpeed += 4;
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	with instance_create(x,y,FlameEraserBurst)
	{
	mox=x+lengthdir_x(64*other.accuracy,aimDirection+10*other.accuracy+(random(4)-2)*other.accuracy)
	moy=y+lengthdir_y(64*other.accuracy,aimDirection+10*other.accuracy+(random(4)-2)*other.accuracy)
	creator = other.id
	ammo = 28
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	with instance_create(x,y,FlameEraserBurst)
	{
	mox=x+lengthdir_x(64*other.accuracy,aimDirection-10*other.accuracy+(random(4)-2)*other.accuracy)
	moy=y+lengthdir_y(64*other.accuracy,aimDirection-10*other.accuracy+(random(4)-2)*other.accuracy)
	creator = other.id
	ammo = 28
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	BackCont.viewx2 += lengthdir_x(60,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(60,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 15
	wkick = 9

	break;


	//MEGA INCINERATOR
	case 162:

	snd_play_fire(sndIncinerator)

	repeat(4)
	{
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(70)-35,4+random(3))
	}

	with instance_create(x,y,Bullet6)
	{motion_add(aimDirection+6*other.accuracy+(random(6)-3)*other.accuracy,17+random(2))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet6)
	{motion_add(aimDirection-6*other.accuracy+(random(6)-3)*other.accuracy,17+random(2))
	image_angle = direction
	team = other.team}

	with instance_create(x,y,Bullet6)
	{motion_add(aimDirection+18*other.accuracy+(random(6)-3)*other.accuracy,17+random(2))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet6)
	{motion_add(aimDirection-18*other.accuracy+(random(6)-3)*other.accuracy,17+random(2))
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(11,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(11,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 7
	wkick = 8

	break;


	//QUADRUPLE POP GUN
	case 163:

	snd_play_fire(sndQuadMachinegun)

	repeat(3)
	{
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(70)-35,4+random(3))
	}

	with instance_create(x,y,Bullet2)
	{motion_add(aimDirection+6*other.accuracy+(random(6)-3)*other.accuracy,14+random(2))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet2)
	{motion_add(aimDirection-6*other.accuracy+(random(6)-3)*other.accuracy,14+random(2))
	image_angle = direction
	team = other.team}

	with instance_create(x,y,Bullet2)
	{motion_add(aimDirection+18*other.accuracy+(random(6)-3)*other.accuracy,14+random(2))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet2)
	{motion_add(aimDirection-18*other.accuracy+(random(6)-3)*other.accuracy,14+random(2))
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(9,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(9,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 7

	break;


	//BLOOD LINE
	case 164:

	snd_play_fire(sndBloodLauncher)
	snd_play_fire(sndHyperLauncher)
	with instance_create(x,y,LineBlood)
	{
	direction = aimDirection+(random(2)-1)*other.accuracy
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(30,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(30,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = 8

	break;


	//EXPLOSIVE CROSSBOW
	case 165:

	snd_play_fire(sndCrossbow)
	altFire = !altFire;
	if altFire
	{
		wep_type[165] = 3;
	}
	else
	{
		wep_type[165] = 4;
	}
	with instance_create(x,y,ExplosiveBolt)
	{motion_add(aimDirection,22)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(40,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(40,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 4

	break;


	//SLASH SHOTGUN
	case 166:

	with instance_create(x,y,SlashShotgunPrep)
	{
	snd_play_fire(sndSlugger)
	motion_add(aimDirection+(random(6)-3)*other.accuracy,15);
	image_angle=direction;
	rate=1//for extra speed more bullets per step
	Direction=aimDirection;
	creator = other.id
	ammo = 14
	if Player.skill_got[42]
	{
		ammo = ceil(ammo*Player.betterTail);
		scrActivateTail(hasTailNow);
	}
	totalammo = ammo;
	time = 1
	team = other.team
	//event_perform(ev_alarm,0) 
	}

	BackCont.viewx2 += lengthdir_x(14,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(14,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 10
	wkick = 8

	break;


	//SPIRAL SLASH SHOTGUN
	case 167:

	with instance_create(x,y,SlashShotgunPrep)
	{
	snd_play_fire(sndSlugger)
	motion_add(aimDirection+(random(6)-3)*other.accuracy,15);
	image_angle=direction;
	rate=4//for extra speed more bullets per step
	Direction=aimDirection;
	creator = other.id
	ammo = 45
	if Player.skill_got[42]
	{
		ammo = ceil(ammo*Player.betterTail);
		scrActivateTail(hasTailNow);
	}
	totalammo = ammo;
	time = 1
	team = other.team
	//event_perform(ev_alarm,0) 
	}

	BackCont.viewx2 += lengthdir_x(16,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(16,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 12
	wkick = 10

	break;


	//SLASH ERASER
	case 168:

	with instance_create(x,y,SlashEraserPrep)
	{
	snd_play_fire(sndEraser)
	motion_add(aimDirection+(random(6)-3)*other.accuracy,14);
	image_angle=direction;
	rate=1//for extra speed more bullets per step
	Direction=aimDirection;
	creator = other.id
	ammo = 7
	time = 2;
	if Player.skill_got[42]
	{
		ammo = ceil(ammo*Player.betterTail);
		if Player.ultra_got[97] && !Player.altUltra
			time = 1;
		scrActivateTail(hasTailNow);
	}
	totalammo = ammo;
	team = other.team
	//event_perform(ev_alarm,0) 
	}

	BackCont.viewx2 += lengthdir_x(15,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(15,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 11
	wkick = 9

	break;


	//SUPER SPIRAL SLASH SHOTGUN
	case 169:

	with instance_create(x,y,SlashShotgunPrep)
	{
	snd_play_fire(sndSlugger)
	motion_add(aimDirection+(random(6)-3)*other.accuracy,18);
	image_angle=direction;
	rate=4//for extra speed more bullets per step
	Direction=aimDirection;
	creator = other.id
	ammo = 140
	if Player.skill_got[42]
	{
		ammo = ceil(ammo*Player.betterTail);
		scrActivateTail(hasTailNow);
	}
	totalammo = ammo;
	time = 1
	team = other.team
	//event_perform(ev_alarm,0) 
	}

	BackCont.viewx2 += lengthdir_x(16,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(16,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 12
	wkick = 10

	break;


	//DIRECTOR SHOTGUN
	case 170:

	snd_play_fire(sndDirectorShotgun)

	repeat(6)
	{
	with instance_create(x,y,Bullet7)
	{motion_add(aimDirection+(random(44)-22)*other.accuracy,9+random(6))
	image_angle = direction
	team = other.team}
	}

	BackCont.viewx2 += lengthdir_x(13,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(13,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 6

	break;


	//DOUBLE DIRECTOR SHOTGUN
	case 171:

	snd_play_fire(sndDirectorShotgun);
	
	with instance_create(x,y,DoubleDirectorShotgunBurst)
	{
		creator = other.id
		ammo = 2
		time = 1
		team = other.team
		event_perform(ev_alarm,0)
	}
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,1);
		motion_add(aimDirection+180,1)
	}

	BackCont.viewx2 += lengthdir_x(7,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(7,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 8

	break;


	//QUADRUPLE DIRECTOR SHOTGUN
	case 172:

	snd_play_fire(sndDoubleShotgun);
	with instance_create(x,y,DoubleDirectorShotgunBurst)
	{
		alarm[1] = 2;
		creator = other.id
		ammo = 4
		time = 1
		team = other.team
		event_perform(ev_alarm,0)
	}
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,1);
		motion_add(aimDirection+180,1)
	}

	BackCont.viewx2 += lengthdir_x(12,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 11
	wkick = 10

	break;


	//DIRECTOR RIFLE
	case 173:

	with instance_create(x,y,DirectorBurst)
	{
	creator = other.id
	ammo = 4
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;


	//FLAME DIRECTOR SHOTGUN
	case 174:

	snd_play_fire(sndFireShotgun)
	snd_play_fire(sndDirectorShotgun);
	repeat(6)
	{
	with instance_create(x,y,Bullet9)
	{motion_add(aimDirection+(random(40)-20)*other.accuracy,8+random(6))
	image_angle = direction
	team = other.team}
	}

	BackCont.viewx2 += lengthdir_x(13,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(13,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 9
	wkick = 6
	
	

	break;


	//DOUBLE FLAME DIRECTOR SHOTGUN
	case 175:
	snd_play_fire(sndFireShotgun);
	
	with instance_create(x,y,DoubleDirectorFlameShotgunBurst)
	{
		creator = other.id
		ammo = 2
		time = 1
		team = other.team
		event_perform(ev_alarm,0)
	}
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,1);
		motion_add(aimDirection+180,1)
	}

	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 7
	wkick = 8

	break;


	//QUADRUPLE FLAME DIRECTOR SHOTGUN
	case 176:

	snd_play_fire(sndDoubleFireShotgun)
	with instance_create(x,y,DoubleDirectorFlameShotgunBurst)
	{
		alarm[1] = 2;
		creator = other.id
		ammo = 2
		time = 1
		team = other.team
		event_perform(ev_alarm,0)
	}
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,2);
		motion_add(aimDirection+180,1)
	}

	BackCont.viewx2 += lengthdir_x(14,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(14,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 12
	wkick = 10

	break;


	//REVERSE LANCER
	case 177:

	snd_play_fire(sndLaserCannonCharge)
	BackCont.shake += 1
	BackCont.viewx2 += lengthdir_x(2,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(2,aimDirection)*UberCont.opt_shake
	wkick = 5;
	with instance_create(x,y,EnergyBackStabber)
	{
		creator = other.id
		gotLongarms = Player.skill_got[13];
		gotEnergyBrain = Player.skill_got[17];
		bettermelee = Player.bettermelee;
		ammo = 2+(gotEnergyBrain+Player.betterlaserbrain)
		time = 4
		team = other.team
		alarm[0] = 10
		alarm[1] = alarm[0] + ammo*time;
			if Player.skill_got[42]
			{
				alarm[0] = max(1,alarm[0]*0.25);
				if Player.ultra_got[97] && !Player.altUltra
					alarm[0] = 1;
			}
	}

	break;


	//HEAVY ASSAULT PISTOL
	case 178:

	with instance_create(x,y,HeavyBurst)
	{
	creator = other.id
	ammo = 2
	time = 2
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;


	//AUTO FLARE GUN
	case 179:

	snd_play_fire(sndFlare)

	with instance_create(x,y,Flare)
	{
	sticky = 0
	motion_add(aimDirection+(random(24)-12)*other.accuracy,9)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(9,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(9,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 4

	break;


	//AUTO FLARE SHOTGUN
	case 180:

	snd_play_fire(sndFlare)

	with instance_create(x,y,Flare)
	{
		sticky = 1
		motion_add(aimDirection+(30+random(10)-5)*other.accuracy,9)
		image_angle = direction
		team = other.team
	}
	with instance_create(x,y,Flare)
	{
		sticky = 1
		motion_add(aimDirection+(-30+random(10)-5)*other.accuracy,9)
		image_angle = direction
		team = other.team
	}
	with instance_create(x,y,Flare)
	{
		sticky = 1
		motion_add(aimDirection+(10+random(10)-5)*other.accuracy,9)
		image_angle = direction
		team = other.team
	}
	with instance_create(x,y,Flare)
	{
		sticky = 1
		motion_add(aimDirection+(-10+random(10)-5)*other.accuracy,9)
		image_angle = direction
		team = other.team
	}

	BackCont.viewx2 += lengthdir_x(11,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(11,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 7
	wkick = 6

	break;


	//CAR THROWER
	case 181:

	snd_play_fire(sndSnowBotThrow);
	with instance_create(x,y,CarThrow)
	{
		scrGiveProjectileStats();
		dmg = 10;
		team = other.team
		motion_add(aimDirection+(random(8)-4)*other.accuracy,20)
	}

	BackCont.viewx2 += lengthdir_x(-7,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(-7,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 12
	wkick = -7

	break;


	//DIRECTOR ERASER
	case 182:

	snd_play_fire(sndEraserNew)
	with instance_create(x,y,DirectorEraserBurst)
	{
	mox=UberCont.mouse__x;
	moy=UberCont.mouse__y;
	creator = other.id
	ammo = 17
	time = 1
	projectileAmount = 3;
	team = other.team
	event_perform(ev_alarm,0) 
	}

	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 6

	break;


	//FLAME DIRECTOR ERASER
	case 183:

	snd_play_fire(sndEraserNew)
	snd_play_fire(sndFireShotgun);
	with instance_create(x,y,FlameDirectorEraserBurst)
	{
	mox=UberCont.mouse__x;
	moy=UberCont.mouse__y;
	creator = other.id
	ammo = 17
	time = 1
	team = other.team
	projectileAmount = 3;
	event_perform(ev_alarm,0) 
	}

	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 6
	break;


	//SEEKER PISTOL
	case 184:

	snd_play_fire(sndSeekerPistol)


	with instance_create(x,y,SeekerBolt)
	{motion_add(aimDirection+(random(20)-10)-10*other.accuracy,2+random(3))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,SeekerBolt)
	{motion_add(aimDirection+(random(20)-10)+10*other.accuracy,2+random(3))
	image_angle = direction
	team = other.team}


	BackCont.viewx2 += lengthdir_x(15,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(15,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick -= 3

	break;


	//SEEKER SHOTGUN
	case 185:

	snd_play_fire(sndSeekerShotgun)


	with instance_create(x,y,SeekerBolt)
	{motion_add(aimDirection+(random(12)-6)-15*other.accuracy,2+random(3))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,SeekerBolt)
	{motion_add(aimDirection+(random(12)-6)+15*other.accuracy,2+random(3))
	image_angle = direction
	team = other.team}

	with instance_create(x,y,SeekerBolt)
	{motion_add(aimDirection+(random(12)-6)-30*other.accuracy,2+random(3))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,SeekerBolt)
	{motion_add(aimDirection+(random(12)-6)+30*other.accuracy,2+random(3))
	image_angle = direction
	team = other.team}

	with instance_create(x,y,SeekerBolt)
	{motion_add(aimDirection+(random(12)-6)-45*other.accuracy,2+random(3))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,SeekerBolt)
	{motion_add(aimDirection+(random(12)-6)+45*other.accuracy,2+random(3))
	image_angle = direction
	team = other.team}

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,1);
		motion_add(aimDirection+180,1)
	}
	BackCont.viewx2 += lengthdir_x(30,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(30,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = -7

	break;

	//AUTO SEEKER PISTOL
	case 186:

	snd_play_fire(sndSeekerPistol)


	with instance_create(x,y,SeekerBolt)
	{motion_add(aimDirection+(random(30)-15)-15*other.accuracy,2+random(3))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,SeekerBolt)
	{motion_add(aimDirection+(random(30)-15)+15*other.accuracy,2+random(3))
	image_angle = direction
	team = other.team}


	BackCont.viewx2 += lengthdir_x(14,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(14,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick -= 3

	break;


	//ASSAULT SEEKER SHOTGUN
	case 187:

	with instance_create(x,y,SeekerShotgunBurst)
	{
	creator = other.id
	ammo = 3
	time = 7
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;


	//GRENADE PISTOL
	case 188:

	with instance_create(x,y,SmallGrenadeBurst)
	{
	creator = other.id
	ammo = 2
	time = 2
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;


	//SPLINTER SEEKER
	case 189:

	snd_play_fire(sndBigSplinter)

	with instance_create(x,y,SeekerBolt)
	{motion_add(aimDirection+(random(20)-10)-20*other.accuracy,2+random(3))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,SeekerBolt)
	{motion_add(aimDirection+(random(20)-10)+20*other.accuracy,2+random(3))
	image_angle = direction
	team = other.team}

	repeat(2)
	{
	with instance_create(x,y,Splinter)
	{motion_add(aimDirection+(random(20)-10)*other.accuracy,20+random(4))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Splinter)
	{motion_add(aimDirection+(random(10)-5)*other.accuracy,20+random(4))
	image_angle = direction
	team = other.team}
	}

	BackCont.viewx2 += lengthdir_x(20,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(20,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 4

	break;


	//SEEKER CROSSBOW
	case 190:

	snd_play_fire(sndSeekerShotgun)
	snd_play_fire(sndCrossbow);

	with instance_create(x,y,SeekerBolt)
	{motion_add(aimDirection+(random(20)-10)-20*other.accuracy,2+random(3))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,SeekerBolt)
	{motion_add(aimDirection+(random(20)-10)+20*other.accuracy,2+random(3))
	image_angle = direction
	team = other.team}

	with instance_create(x,y,Bolt)
	{motion_add(aimDirection,25)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(40,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(40,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 5

	break;


	//SUPER AUTO CROSSBOW
	case 191:

	snd_play_fire(sndSuperCrossbow)

	with instance_create(x,y,Bolt)
	{motion_add(aimDirection,24)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bolt)
	{motion_add(aimDirection+6*other.accuracy,24)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bolt)
	{motion_add(aimDirection-6*other.accuracy,24)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bolt)
	{motion_add(aimDirection+12*other.accuracy,24)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bolt)
	{motion_add(aimDirection-12*other.accuracy,24)
	image_angle = direction
	team = other.team}

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,1);
		motion_add(aimDirection+180,1)
	}

	BackCont.viewx2 += lengthdir_x(40,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(40,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 10
	wkick = 9

	break;


	//ULTRA BOMB LOBBER
	case 192:
	snd_play_fire(sndChickenThrow)
	snd_play_fire(sndClusterLauncher)

	with instance_create(x,y,UltraLobGrenade)
	{
		accuracy = other.accuracy;
	sticky = 0
	motion_add(aimDirection+(random(6)-3)*other.accuracy,6)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,LobGrenade)
	{
		accuracy = other.accuracy;
		alarm[2] -= 2;
	sticky = 0
	motion_add(aimDirection+(random(12)-6)*other.accuracy,6.5)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(16,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(16,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wepangle = -wepangle
	wkick = -7
	break;
	
	//ULTRA BLADE GUN
	case 193:

	snd_play_fire(sndDiscgun)

	with instance_create(x,y,UltraBlade)
	{motion_add(aimDirection+(random(10)-5)*other.accuracy,12)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(20,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(20,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 14
	wkick = 8


	break;


	default:
		//we run a secondary script because this one is lagging
		if wep > 790
			scrFire3(hasTailNow)
		else
			scrFire2(hasTailNow);
	break;
	}//end of huge switch
	
	if (IDKWID)
	{
	wep=75;
	}


	if Player.ultra_got[56]//PANDA Meditate rapid hands melee firerate
	{
		if  reload > 0 && scrMeleeWeapons(wep)
	    {
			reload -= wep_load[wep]*0.4;//0.6;
	    }
	}
	if Player.ultra_got[33] && Player.altUltra
	{
		var pr = Player.phoenixrevives
		if  pr > 4 && reload > 0
	    {
			reload -= wep_load[wep] * min(0.15,(Player.phoenixrevives-3)*0.05)
	    }
		if pr > 3
		{
			pr += max(0,(wep_load[wep]*0.03));
			pr = clamp(round(pr),1,10);
			repeat(pr-3)
			{
				with instance_create(x,y,Bullet6)
				{
					motion_add(aimDirection+(random(50)-25)*other.accuracy,min(18,2+pr+random(4+pr)))
					image_angle = direction
					team = other.team
				}
			}
		}
	}
	if wep_type_base[wep] == 0 && scrIsCrown(40)
	{
		with MeleeParent
		{
			if !appliedAmmoChange
			{
				meleeAmmoType = other.wep_type[other.wep];
				appliedAmmoChange = true;
			}
		}
	}
	
	//YV ultra C 
	//if firing a bullet weapon add a small percentage of shotgun ammo

	    if !Player.altUltra && Player.ultra_got[23]//ULTRA C
	    {
			if wep_type[wep] == 2 || scrIsAlsoShotgunType(wep)// You are holding a shotgun
			{
				reload -= wep_load[wep]*0.5;//shotgun speed
				//ammo[1] += wep_cost[wep]//bullet magic
			}
			else if wep_type[wep] == 1 || scrIsAlsoBulletType(wep)// You are holding a bullet weapon
			{
				reload -= wep_load[wep]*0.1;//bullet speed
				ammo[2] += wep_cost[wep] * 0.1;//Ten bullets is 1 shotgun pellet
				ammo[2] = min(ammo[2],typ_amax[2]);
			}
	    }
		if Player.ultra_got[29] && Player.altUltra && Player.bwep == 0
		{
			ammo[wep_type[wep]] += wep_cost[wep]*0.1;
			reload -= wep_load[wep]*0.15;
			rad += max(0,wep_rad[wep]*0.1);
		}
    
	    if Player.ultra_got[96]//ULTRA D ELEMENTOR THUNDER BOMB
	    {
    
		    if scrLightningWeapons(wep) // You are holding a lightning weapon
		    {
    
			    if (ammo[4] + round(wep_cost[wep]*0.4) >=typ_amax[4])//get explo ammo
			    {
					ammo[4]=typ_amax[4];
			    }
			    else
					ammo[4] += round(wep_cost[wep]*0.4);
    
		    }
		    if scrKrakenWeapons(wep) // You are holding a kraken weapon
		    {
			    if (ammo[5] + round(wep_cost[wep]*0.4) >=typ_amax[5])//get energy ammo
			    {
					ammo[5]=typ_amax[5];
			    }
			    else
					ammo[5] += round(wep_cost[wep]*0.4);
    
		    }
	    }
	if Player.skill_got[42]
	{
		with BurstWeapons
		{
			if !boosted
			{
				ammo = ceil(ammo*Player.betterTail);
				time = max(1,time - 1);
				if Player.ultra_got[97] && !Player.altUltra
					time = 1;
				if alarm[0] > time
					alarm[0] = time;
				boosted = true;
				scrActivateTail(hasTailNow);
			}
		}
		with Ray
		{
			if !boosted
			{
				ammo = ceil(ammo*Player.betterTail);
				time = max(1,time - 1);
				boosted = true;
				scrActivateTail(hasTailNow);
			}
		}
		with Player
		{
			if hasTailNow && !drawTail
			{
				drawTailIntro = 2;
			}
		}
	}
	//Atom utlra electron

	if Player.ultra_got[59] && !Player.altUltra//ATOM ELECTRON
	{
		if wep_type[wep] == 5//energy wep
		{
			ammo[wep_type[wep]] += wep_cost[wep]*0.20;//return one ammo
		}
	}
	if Player.ultra_got[61] && Player.altUltra//CAPTAIN OF THE KRAKEN
	{
		if scrKrakenWeapons(wep)
		{
			ammo[wep_type[wep]] += wep_cost[wep]*0.25;//return one ammo
		}
	}

	if Player.ultra_got[57]//ATOM NEUTRON
	{

		if wep_type[wep]==4//splosive wep
		{
			ammo[wep_type[wep]] += wep_cost[wep]*0.20;//return one ammo
			if wep_cost[wep]>1//if ammo cost is more than 1
				ammo[wep_type[wep]]+=1;//return one ammo

		}
	} 



	    if Player.ultra_got[67] == 1
	    {
		    //Ultra c one with the gun
		    if !scrMeleeWeapons(wep)
		    {
		        if wep_cost[wep]>1//if ammo cost is more than 1
		        ammo[wep_type[wep]]+=1;//return one ammo
		    }
		    else if reload > 0//thats a melee weapon!
		    {
				reload += wep_load[wep];
		    }
	    }
    



	/*WEAPON MODS
	mod1[]
	mod2[]
	mod3[]
	0 nothing
	1 toxic
	2 explosive
	3 flame
	4 frost
	5 blood
	6 lightning
	*/
	if object_index == Player || object_index == CloneShooter {
		with projectile
		{
			if team == other.team//player projectile
			{
				scrGiveProjectileStats();
			}
		}
		firedthislevel=true;
		firedOnce = true;
		fired=true;
		if lastFiredWeapon != wep
		{
			lastFiredWeapon = wep;
			with UberCont
			{
				if !array_contains(usedWeapons,other.wep)
				{
					usedWeapons[array_length(usedWeapons)] = other.wep;
				}
			}	
		}
	}
	if object_index == Player
	{
		if firingStance
		{
			reload -= 1;
			reload -= ceil(wep_load[wep] * 0.17);
			accuracy = firingStanceAccuracy;	
		}
	}
	if !scrIsCrown(29)//Crown of purity
	{
		var reloadBoost = 0.055;
		if Player.skill_got[30] == 1
		{
			reloadBoost = 0.10;
		}
		if Player.ultra_got[65]
		{
			reloadBoost += 0.055;
		}
	
		if wepmod1==12
			reload -= wep_load[wep]*reloadBoost
	
		if wepmod2==12
			reload -= wep_load[wep]*reloadBoost

		if wepmod3==12
			reload -= wep_load[wep]*reloadBoost

		if wepmod4==12
			reload -= wep_load[wep]*reloadBoost
	}
	if Player.ultra_got[80] == 1//business hog gold digger
	{
		if scrCheckGold(wep_name[wep])//string_copy(wep_name[wep],0,4) = "GOLD"&&loops<1
			reload -= wep_load[wep]*0.6;
	}


	if wep!=1 && wep!=39 && wep!=56//revolver and golden revolver and rusty revolver
		onlyusemerevolver=false;


	if Player.ultra_got[88]//ROGUE ULTRA POPO ULTRA D
	{
		if wep_rad[wep]>0
			rad+=wep_rad[wep]*0.3;
	}
	if Player.ultra_got[83]//HORROR MELTDOWN
	{
		if wep_rad[wep]>0
			rad+=wep_rad[wep]*0.4;
	}
	if scrIsCrown(27)//DISCO FEVER!
	{
	draw_set_blend_mode(bm_add);
	__background_set_colour( (make_color_hsv(random(255),255,255)) )
	if random(400)<20
	{

	with enemy
	{

	if x > __view_get( e__VW.XView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y > __view_get( e__VW.YView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
	{
	spr_idle=choose(sprSheepIdleA,sprSheepIdleB)
	spr_walk=sprSheepWalk;
	spr_hurt=sprSheepHurt;
	spr_dead=sprSheepDead;
	}

	}

	}
	}
}

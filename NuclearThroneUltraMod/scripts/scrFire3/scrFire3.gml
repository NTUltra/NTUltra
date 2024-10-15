///scrFire3();
// /@description its more guns
///@param
function scrFire3(hasTailNow){
	var aimDirection = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
	switch(wep)
	{//here we go again! again!

		//RAPIER
		case 791:
			snd_play_fire(choose(sndSword1,sndSword2))
			instance_create(x,y,Dust)
			with instance_create(x+lengthdir_x(4+((Player.skill_got[13]+bettermelee)*20),aimDirection),y+lengthdir_y(4+((Player.skill_got[13]+bettermelee)*20),aimDirection),RapierShank)
			{
			longarms = 0
			if Player.skill_got[13]
			{
				longarms = (Player.skill_got[13]+other.bettermelee)*3
				image_yscale += other.bettermelee;
			}
			motion_add(aimDirection,3.5+longarms)
			image_angle = direction
			team = other.team}

			wepangle = -wepangle
			if !skill_got[2]
			{
				motion_add(aimDirection,7)
				scrMoveContactSolid(aimDirection,2)
			}
			BackCont.viewx2 += lengthdir_x(18,aimDirection)*UberCont.opt_shake
			BackCont.viewy2 += lengthdir_y(18,aimDirection)*UberCont.opt_shake
			BackCont.shake += 1
			wkick = -6
		break;
		
		//LIGHTNING NUNCHUKU
		case 792:
		with instance_create(x,y,LightningNunchukuBurst)
		{
			accuracy = other.accuracy;
			creator = other.id
			ammo = 2
			time = 5
			team = other.team
			event_perform(ev_alarm,0)
		}

		break;
		
		//RAILGUN
		case 793:

		//snd_play_fire(sndPistol)
		//REDO SOUND A BIT CHOPPED!
		if Player.skill_got[17] = 1
			snd_play_fire(sndRailGunUpg)
		else
			snd_play_fire(sndRailGun)
			
		repeat(2 + Player.skill_got[17])
		{
			with instance_create(x,y,Smoke)
				motion_add(aimDirection+(random(30)-15)*other.accuracy,2+random(3))
		}
		repeat(2 + Player.skill_got[17])
		{
			with instance_create(x,y,PlasmaFX)
				motion_add(aimDirection+(random(30)-15)*other.accuracy,2+random(3))
		}
		with instance_create(x,y,Railgun)
		{
			direction = aimDirection;
			image_angle = direction;
			team = other.team
			scrGiveProjectileStats();
			event_perform(ev_alarm,0);
		}

		BackCont.viewx2 += lengthdir_x(50,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(50,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 30
		wkick = 6
		if !skill_got[2]
		{
			scrMoveContactSolid(aimDirection + 180,20);
			motion_add(aimDirection + 180, 6);
		}

		break;
		
		//DIRECTOR RETRACTOR
		case 794:

		snd_play_fire(sndCrossbow)

		with instance_create(x,y,RetractorBolt)
		{motion_add(aimDirection+(random(4)-2)*other.accuracy,24);
			owner = other.id;
		image_angle = direction
		team = other.team}

		BackCont.viewx2 += lengthdir_x(20,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(20,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 4
		wkick = 3

		break;
		
		//ARROW RAIN
		case 795:

		snd_play_fire(sndSuperSplinterGun)
		with instance_create(x,y,BoltArrowBurst)
		{
			creator = other.id
			maxAmmo = 8;
			ammo = maxAmmo
			time = 2
			team = other.team
			event_perform(ev_alarm,0)
		}
		with instance_create(x,y,BoltArrowBurst)
		{
			creator = other.id
			maxAmmo = 6;
			ammo = maxAmmo
			time = 2
			team = other.team
			alarm[0] = 1;
		}

		break;
		
		//MAGNETIC CROSSBOW
		case 796:

		snd_play_fire(sndCrossbow)

		with instance_create(x,y,MagneticBolt)
		{motion_add(aimDirection+(random(4)-2)*other.accuracy,24)
		image_angle = direction
		team = other.team}

		BackCont.viewx2 += lengthdir_x(40,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(40,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 4
		wkick = 4

		break;
		
		//KRAKEN MACHINEGUN
		case 797:

		snd_play_fire(sndKrakenRevolver)
		snd_play(choose(sndWater1,sndWater2));
		repeat(3)
			with instance_create(x,y,Shell)
				motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

		with instance_create(x,y,Bullet1Kraken)
		{
			creator = other.id;
			motion_add(aimDirection+(random(16)-8)*other.accuracy,14)
			image_angle = direction
			team = other.team
		}
		with instance_create(x,y,FishBoost)
		{
			motion_add(aimDirection+random(60)-30,2+random(4));
		}

		BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 3
		wkick = 2
		if !skill_got[2]
			scrMoveContactSolid(aimDirection + 180,2);
		
		break;
		
		//MICRO CRASH
		case 798:

		snd_play_fire(sndQuadMachinegun)
		snd_play_fire(sndMicroSmg);

		var am = 14;
		var angStep = 360/am;
		angStep *= accuracy;
		var angg = aimDirection - (angStep * (am*0.5));
		repeat(am)
		{
			with instance_create(x,y,MicroBullet)
			{
				direction = angg+(random(8)-4)*other.accuracy
				image_angle = direction
				team = other.team
				scrGiveProjectileStats();
			event_perform(ev_alarm,0);
			}
			angg += angStep
		}
		angStep *= 0.5;
		with instance_create(x,y,MicroBullet)
		{
			direction = aimDirection+angStep+(random(8)-4)*other.accuracy
			image_angle = direction
			team = other.team
			scrGiveProjectileStats();
			event_perform(ev_alarm,0);
		}
		with instance_create(x,y,MicroBullet)
		{
			direction = aimDirection-angStep+(random(8)-4)*other.accuracy
			image_angle = direction
			team = other.team
			scrGiveProjectileStats();
			event_perform(ev_alarm,0);
		}

		BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 5
		wkick = 4
		scrSpinnableWeapon(wep);
		break;
		
		//VOID EXECUTIONER
		case 799:

		//snd_play_fire(sndPistol)
		snd_play(sndMicroSmg,0.02,true);
		snd_play(sndVoidShank,0.2);
		with instance_create(x,y,VoidExecution)
		{
		direction = aimDirection;
		image_angle = direction;
		team = other.team
		scrGiveProjectileStats();
		event_perform(ev_alarm,0);
		}
		if !skill_got[2]
		{
			scrMoveContactSolid(aimDirection + 180,20);
			motion_add(aimDirection + 180, 6);
		}
		BackCont.viewx2 += lengthdir_x(30,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(30,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 10
		wkick = 6

		break;
		
		//BLOB MACHINEGUN
		case 800:

		snd_play_fire(sndBlobFireS);

		with instance_create(x,y,BlobBall)
		{
			motion_add(aimDirection+(random(16)-8)*other.accuracy,12)
			team = other.team
		}
		if !skill_got[2]
		{
			scrMoveContactSolid(aimDirection + 180,4);
			motion_add(aimDirection+180,2)
		}
		BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 8
		wkick = 7

		break;
		
		//ultra RAILGUN
		case 801:

		if Player.skill_got[17] = 1
		{
			snd_play_fire(sndUltraLaserUpg)
			snd_play_fire(sndRailGunUpg)
		}
		else
		{
			snd_play_fire(sndUltraLaser)
			snd_play_fire(sndRailGun)
		}
			
		repeat(3 + Player.skill_got[17])
		{
			with instance_create(x,y,Smoke)
				motion_add(aimDirection+(random(30)-15)*other.accuracy,2+random(3))
		}
		repeat(4 + Player.skill_got[17])
		{
			with instance_create(x,y,PlasmaFX)
				motion_add(aimDirection+(random(30)-15)*other.accuracy,2+random(3))
		}
		with instance_create(x,y,UltraRailgun)
		{
			direction = aimDirection;
			image_angle = direction;
			team = other.team
			scrGiveProjectileStats();
			event_perform(ev_alarm,0);
		}

		BackCont.viewx2 += lengthdir_x(80,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(80,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 35
		wkick = 8
		if !skill_got[2]
		{
			scrMoveContactSolid(aimDirection + 180,32);
			motion_add(aimDirection + 180, 8);
		}

		break;
		
		//LASER SMG
		case 802:

		if Player.skill_got[17] = 1
			snd_play(sndMicroLaserUpg,0.03,true);
		else
			snd_play(sndMicroLaser,0.03,true);
		with instance_create(x,y,Laser)
		{
			defaultPierce -= 8;
			image_angle = aimDirection+(random(16)-8)*other.accuracy
			team = other.team;
			sprite_index = sprMicroLaser;
			knockback = 2;
			alarm[2] += 2;
			image_yscale *= 0.5;
			dmg -= 1;
			event_perform(ev_alarm,0)
		}
		BackCont.viewx2 += lengthdir_x(4,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(4,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 2
		wkick = 5

		if !skill_got[2]
		{
			motion_add(aimDirection+180,1)
		}

		break;
		
		//CLAW
		case 803:

		snd_play_fire(sndClaw)

		instance_create(x,y,Dust)

		var lx = x+lengthdir_x(4+(Player.skill_got[13]+bettermelee)*20,aimDirection);
		var ly = y+lengthdir_y(4+(Player.skill_got[13]+bettermelee)*20,aimDirection);
		var len = 16 * accuracy;
		with instance_create(lx,ly,ClawSlash)
		{
			owner = other.id;
			dmg = 6
			longarms = 0
			longarms = (Player.skill_got[13]+other.bettermelee)*3
			motion_add(aimDirection,2.5+longarms)
			image_angle = direction
			team = other.team
		}
		with instance_create(lx + lengthdir_x(len,aimDirection+90),ly + lengthdir_y(len,aimDirection+90),ClawSlash)
		{
			owner = other.id;
			dmg = 6
			longarms = 0
			longarms = (Player.skill_got[13]+other.bettermelee)*3
			motion_add(aimDirection,2.5+longarms)
			image_angle = direction
			team = other.team
		}
		with instance_create(lx + lengthdir_x(len,aimDirection-90),ly + lengthdir_y(len,aimDirection-90),ClawSlash)
		{
			owner = other.id;
			dmg = 6
			longarms = 0
			longarms = (Player.skill_got[13]+other.bettermelee)*3
			motion_add(aimDirection,2.5+longarms)
			image_angle = direction
			team = other.team
		}
		wepangle = -wepangle
		if !skill_got[2]
		{
			motion_add(aimDirection,5)
			scrMoveContactSolid(aimDirection,1)
		}
		BackCont.viewx2 += lengthdir_x(12,aimDirection)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(12,aimDirection)*UberCont.opt_shake
		BackCont.shake += 2
		wkick = -5

		break;
		
		//VOID BLASTER
		case 804:

		snd_play_fire(sndVoidBlaster)
		//with instance_create(x,y,Shell)
		//	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

		with instance_create(x,y,VoidBullet)
		{
			owner = other.id;
			if instance_exists(Player)
				owner = Player.id;
			motion_add(aimDirection+(random(8)-4)*other.accuracy,12 + other.accuracy)
			image_angle = direction
			team = other.team
		}
		if !skill_got[2]
		{
			motion_add(aimDirection + 180,5)
			scrMoveContactSolid(aimDirection  + 180,2)
		}
		BackCont.viewx2 += lengthdir_x(16,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(16,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 5
		wkick = 5

		break;
		
		//SPEAR
		case 805:

		snd_play_fire(sndMeleeSpear)
		instance_create(x,y,Dust)
		with instance_create(x+lengthdir_x(((Player.skill_got[13]+bettermelee)*20),aimDirection),y+lengthdir_y(((Player.skill_got[13]+bettermelee)*20),aimDirection),SpearShank)
		{
			longarms = 0
			if Player.skill_got[13]
			{
				longarms = (Player.skill_got[13]+other.bettermelee)
				image_yscale += 0.25 + other.bettermelee;
				maxRange += 20+other.bettermelee;
				minRange += 10+other.bettermelee;
			}
			motion_add(aimDirection,1+longarms)
			image_angle = direction
			team = other.team
			event_perform(ev_alarm,0);
		}
		if !skill_got[2]
		{
			motion_add(aimDirection,10)
			scrMoveContactSolid(aimDirection,20)
		}
		wepangle = -wepangle
		BackCont.viewx2 += lengthdir_x(40,aimDirection)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(40,aimDirection)*UberCont.opt_shake
		BackCont.shake += 5
		wkick = -20

		break;
		
		//POWER BOLT LAUNCHER
		case 806:

		snd_play_fire(sndOldHeavyPowerCrossbow)
		repeat(3)
		{
			with instance_create(x,y,Smoke)
				motion_add(aimDirection+(random(16)-8)*other.accuracy,3+random(2))
		}
		with instance_create(x,y,HeavyPowerBolt)
		{
			owner = other.id;
			motion_add(aimDirection+(random(16)-8)*other.accuracy,24)
			image_angle = direction
			team = other.team
		}

		BackCont.viewx2 += lengthdir_x(80,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(80,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 40
		wkick = 12
		if !skill_got[2]
		{
			motion_add(aimDirection + 180,20)
			scrMoveContactSolid(aimDirection + 180,32)
		}
		
		break;
		
		//ULTRA MAGNETIC CROSSBOW
		case 807:

		snd_play_fire(sndCrossbow)

		with instance_create(x,y,UltraMagneticBolt)
		{
			motion_add(aimDirection+(random(4)-2)*other.accuracy,24)
			image_angle = direction
			team = other.team
		}

		BackCont.viewx2 += lengthdir_x(60,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(60,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 8
		wkick = 4

		break;
		
		//CRIMSON DELUGE
		case 808:

		snd_play_fire(sndSuperBloodLance)

		instance_create(x,y,Dust)

		with instance_create(x,y,BloodStreak)
		{
			motion_add(aimDirection + 10,7)
			image_angle = direction;
		}
		with instance_create(x,y,BloodStreak)
		{
			motion_add(aimDirection - 10,7)
			image_angle = direction;
		}
		with instance_create(x+lengthdir_x(((Player.skill_got[13]+bettermelee)*15),aimDirection),y+lengthdir_y(((Player.skill_got[13]+bettermelee)*15),aimDirection),SuperBloodLanceSlash)
		{
			image_yscale = sign(other.wepangle);
			owner = other.id;
			longarms = 0
			longarms = (Player.skill_got[13]+other.bettermelee)*3
			motion_add(aimDirection,3+longarms)
			image_angle = direction
			team = other.team
		}

		wepangle = -wepangle
		if !skill_got[2]
		{
			scrMoveContactSolid(aimDirection,8);
			motion_add(aimDirection,9)
		}
		BackCont.viewx2 += lengthdir_x(40,aimDirection)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(40,aimDirection)*UberCont.opt_shake
		BackCont.shake += 20
		wkick = -6

		break;
		
		//CHAINSAW
		case 809:
		if !instance_exists(ChainSawBurst)
		{
			snd_play_fire(sndChainSawStart);
			repeat(3)
			{
				with instance_create(x,y,Smoke)
				{
					motion_add(aimDirection+random_range(20,-20),2);
				}
			}
		}
		with instance_create(x,y,ChainSawBurst)
		{
			accuracy = other.accuracy;
			creator = other.id
			ammo = 4
			time = 4
			team = other.team
			alarm[0] = 6;
			if Player.skill_got[42]
			{
				alarm[0] -= 2;
				alarm[1] -= 2;
				alarm[3] -= 2;
			}
		}

		break;
		
		//PAPER CRAFT SHOTGUN
		case 810:
		snd_play_fire(sndShotgun)
		with instance_create(x,y,PaperCraftShotgunBurst)
		{
			creator = other.id
			ammo = 2
			time = 3
			team = other.team
			event_perform(ev_alarm,0)
		}
	
		break;
		
		//SHARP SHOOTER
		case 811:

		var shake = 4;
		var move = 0;
		if instance_exists(BulletScaler)
		{
			shake += BulletScaler.dmg*0.5;
			wkick = 2
			if BulletScaler.dmg > 29
			{
				snd_play_fire(sndHeavySlugger);
				move = 12;
				wkick = 4;
			}
			else if BulletScaler.dmg > 19
			{
				snd_play_fire(sndSlugger);
				move = 7;
				wkick = 3;
			}
			else if BulletScaler.dmg > 7
			{
				snd_play_fire(sndHeavyRevolver);
				move = 3;
			}
			else
				snd_play_fire(sndPistol)
		}
		with instance_create(x,y,Shell)
		motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

		with instance_create(x,y,Bullet1ScaleDamage)
		{motion_add(aimDirection,12)
			if instance_exists(BulletScaler)
				speed += min(6,BulletScaler.dmg * 0.5);
		image_angle = direction
		team = other.team}
		if shake > 20
			shake -= shake * 0.125;
		BackCont.viewx2 += lengthdir_x(shake,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(shake,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += shake - 2;
		if !skill_got[2] && move > 0
		{
			scrMoveContactSolid(aimDirection + 180,move);
			motion_add(aimDirection+180,move * 0.5)
		}
		break;
		
		//GHOST DRILL
		case 812:
		if !instance_exists(GhostDrillBurst)
		{
			snd_play_fire(sndGhostDrillStart);
			repeat(3)
			{
				with instance_create(x,y,Smoke)
				{
					motion_add(aimDirection+random_range(20,-20),2);
				}
			}
			repeat(5)
			{
				with instance_create(x,y,GhostEffect)
				{
					motion_add(aimDirection+random_range(60,-60),3);
				}
			}
		}
		with instance_create(x,y,GhostDrillBurst)
		{
			accuracy = other.accuracy;
			creator = other.id
			ammo = 2
			time = 7
			team = other.team
			alarm[0] = 6;
			if Player.skill_got[42]
			{
				alarm[0] -= 2;
				alarm[1] -= 2;
				alarm[3] -= 2;
			}
		}

		break;
		
		//BIG DOG LAUNCHER
		case 813:
		snd_play(sndExplosionS);
		snd_play_fire(sndBigDogIntro)

		instance_create(x,y,NoDrama);
		with instance_create(x,y,ScrapBoss)
		{
			motion_add(aimDirection+(random(8)-4)*other.accuracy,16)
			image_angle = direction
			team = 2;
			team = other.team
			var walls = ds_list_create();
			var al = instance_place_list(x,y,Wall,walls,false)
			for (var i = 0; i < al; i++)
			{
				with walls[| i] {
					instance_destroy();
					instance_create(x,y,FloorExplo);
				}
			}
			alarm[2] = 2;
		}
		var rando = random(360);
		BackCont.viewx2 += lengthdir_x(100,rando)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(100,rando)*UberCont.opt_shake
		BackCont.shake += 100
		wkick = 6

		break;
		
		//SNAREBOW
		case 814:

		snd_play_fire(sndCrossbow)

		with instance_create(x,y,SnareBolt)
		{motion_add(aimDirection+(random(6)-3)*other.accuracy,20)
		image_angle = direction
		team = other.team}

		BackCont.viewx2 += lengthdir_x(40,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(40,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 4
		wkick = 4

		break;
		
		//MISSILE RAIN
		case 815:

		snd_play_fire(sndRocket)
		snd_play(sndRocketFly);
		with instance_create(x,y,RocketRainBurst)
		{
			creator = other.id
			maxAmmo = 5;
			ammo = maxAmmo
			time = 2
			team = other.team
			alarm[0] = 1;
		}
		with instance_create(x,y,RocketRainBurst)
		{
			creator = other.id
			maxAmmo = 3;
			ammo = maxAmmo
			time = 3
			team = other.team
			event_perform(ev_alarm,0)
		}

		break;
		
		//CHARGE PLASMA CANNON
		case 816:

		with instance_create(x,y,ChargePlasmaCannon)
		{
			maxcharge = 8;//MAX CHARGE
			type = 5;
			cost = 1;
			creator = other.id
			chargetime = 4;
			costtime = 4;
			team = other.team
			if Player.skill_got[42]
			{
				chargetime = 2;
				rate += 2;
				if Player.ultra_got[97] && !Player.altUltra
				{
					rate += 1;
					costtime = 5;
					chargetime = 1
				}
				maxcharge *= Player.betterTail;
				scrActivateTail(hasTailNow);
			}
			event_perform(ev_alarm,0)
			alarm[1] = costtime;
		}

		break;
		
		//METEOR STRIKER
		case 817:
		snd_play_fire(sndFlameCannon)
		var ang = aimDirection;
		var am = 8;
		var angstep = 360/am;
		repeat(am)
		{
			with instance_create(x,y,HeavyFlame)
			{
				team = other.team;
				motion_add(ang,2)
				motion_add(aimDirection,2);
				team = other.team
				ang += angstep;
			}
		}
		with instance_create(x,y,LobMeteor)
		{
			accuracy = other.accuracy;
			sticky = 0
			motion_add(aimDirection+(random(6)-3)*other.accuracy,6)
			image_angle = direction
			team = other.team
		}
		BackCont.viewx2 += lengthdir_x(30,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(30,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 10
		wepangle = -wepangle
		wkick = -5
		break;
		
		//GROUND SLAM
		case 818:

		snd_play_fire(sndHammer)

		instance_create(x,y,Dust)
		if object_index == Player
		{
			jump = maxJump;
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
		with instance_create(x,y,JumpStomp)
		{
			team = other.team;
			owner = other.id;
			Mod1=other.wepmod1;
			Mod2=other.wepmod2;
			Mod3=other.wepmod3;
			Mod4=other.wepmod4;
		}
		if !skill_got[2]
		{
			motion_add(aimDirection,12)
			scrMoveContactSolid(aimDirection,12)
		}
		BackCont.viewx2 += lengthdir_x(12,aimDirection)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(12,aimDirection)*UberCont.opt_shake
		BackCont.shake += 1
		wkick = -20;

		break;
		
		//RAM CANNON
		case 819:

		snd_play_fire(sndClusterOpen)
		var ang = direction;
		var am = 8;
		var angstep = 360/am;
		repeat(am)
		{
			with instance_create(x,y,Dust)
			{
				motion_add(ang,3);
				motion_add(aimDirection,2);
			}
		}
		with instance_create(x,y,Ram)
		{
			direction = aimDirection+(random(12)-6);
			originalDirection = direction;
			Mod1 = other.wepmod1;
			Mod2 = other.wepmod2;
			Mod3 = other.wepmod3;
			Mod4 = other.wepmod4;
		}
		
		if !skill_got[2]
		{
			motion_add(aimDirection + 180,6)
			scrMoveContactSolid(aimDirection + 180,6)
		}
		BackCont.viewx2 += lengthdir_x(20,aimDirection)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(20,aimDirection)*UberCont.opt_shake
		BackCont.shake += 20
		wkick = 2

		break;
		
		//DREAM LAUNCHER
		case 820:

		snd_play_fire(sndClusterLauncher)
		var ang = direction;
		var am = 8;
		var angstep = 360/am;
		repeat(am)
		{
			with instance_create(x,y,Smoke)
			{
				motion_add(ang,3);
				motion_add(aimDirection,2);
			}
		}
		with instance_create(x,y,ExplosionSheep)
		{
			direction = aimDirection+(random(12)-6);
			originalDirection = direction;
			Mod1 = other.wepmod1;
			Mod2 = other.wepmod2;
			Mod3 = other.wepmod3;
			Mod4 = other.wepmod4;
		}
		
		if !skill_got[2]
		{
			motion_add(aimDirection + 180,6)
			scrMoveContactSolid(aimDirection + 180,6)
		}
		BackCont.viewx2 += lengthdir_x(20,aimDirection)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(20,aimDirection)*UberCont.opt_shake
		BackCont.shake += 20
		wkick = 2

		break;
		
		//TENNIS RACKET
		case 821:

		snd_play_fire(sndChickenThrow);
		if Player.skill_got[42]
			scrActivateTail(hasTailNow);
		repeat(3)
			with instance_create(x,y,Dust)
			{
				speed += 1;
				motion_add(90,3);
				motion_add(aimDirection,1);
			}
		with instance_create(x,y,TennisBall)
		{
			owner = other.id;
			motion_add(aimDirection+(random(4)-2)*other.accuracy,16)
			image_angle = direction
			team = other.team
			fireRotation = direction;
		}

		if !skill_got[2]
		{
			scrMoveContactSolid(aimDirection + 180,1);
			motion_add(aimDirection+180,1)
		}
		BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 4
		wkick = 6
		break;
		
		//LIGHTNING GLOVE
		case 822:
		snd_play_fire(sndLightningHammer)
		instance_create(x,y,Dust)
		var currentX = x;
		var currentY = y;
		var hitWall = false;
		with instance_create(x+lengthdir_x(4+(Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y(4+(Player.skill_got[13]+bettermelee)*20,aimDirection),LightningSlash)
		{
			longarms = 0
		
				longarms = (Player.skill_got[13]+other.bettermelee)*2
			motion_add(aimDirection,1+longarms)
			image_angle = aimDirection
			team = other.team
			dmg = 10;
		}
		repeat(2+Player.skill_got[13])
		{
			if !hitWall
			{
				hitWall = scrMoveContactSolid(aimDirection,42)
				instance_create(x,y,Dust)
				with instance_create(x+lengthdir_x(4+(Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y(4+(Player.skill_got[13]+bettermelee)*20,aimDirection),LightningSlash)
				{
					longarms = 0
					longarms = (Player.skill_got[13]+other.bettermelee)*2
				motion_add(aimDirection,1+longarms)
				image_angle = aimDirection
				team = other.team
				dmg = 10;
				}
			}
		}
		if !skill_got[2]
		{
		scrForcePosition60fps();
		xprevious = x;
		yprevious = y;
		}
		else
		{
			x = currentX;
			y = currentY;
		}

		alarm[3]=max(4,alarm[3]);//imunity
		//wepangle = -wepangle
		BackCont.viewx2 += lengthdir_x(8,aimDirection)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(8,aimDirection)*UberCont.opt_shake
		BackCont.shake += 4
		wkick = -12

		break;
		
		//LASER SHOTGUN
		case 823:
		snd_play_fire(sndShotgun);
		if Player.skill_got[17] = 1
			snd_play_fire(sndLaserUpg);
		else
			snd_play_fire(sndLaser);
		with instance_create(x,y,LaserShotgunBurst)
		{
			creator = other.id
			ammo = 4
			time = 2
			team = other.team
			event_perform(ev_alarm,0)
		}
		BackCont.viewx2 += lengthdir_x(2,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(2,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 2
		wkick = 7

		if !skill_got[2]
		{
			motion_add(aimDirection + 180,4)
			scrMoveContactSolid(aimDirection + 180,3)
		}

		break;
		
		//FROSTBURN AXE
		case 824:
			snd_play_fire(sndHammer)
			snd_play_fire(sndFlareExplode)
			snd_play_fire(sndFrostShot1);
			instance_create(x,y,Dust)
			var t = team;
			var mx = x + lengthdir_x(34+(Player.skill_got[13]+bettermelee)*20,aimDirection)
			var my = y + lengthdir_y(34+(Player.skill_got[13]+bettermelee)*20,aimDirection)
			var multi = 1;
			if altFire
				multi = -1;
			altFire = !altFire;
			mx -= lengthdir_x(24,aimDirection + (90 * multi));
			my -= lengthdir_y(24,aimDirection + (90 * multi));
			with instance_create(mx,my,FlameSlash)
			{
				dmg = 17//shovel is 12 is frostglove
				longarms = 0
			
				longarms = (Player.skill_got[13]+other.bettermelee)*3
				motion_add(aimDirection + (90 * multi),2.7+longarms)
				image_angle = direction
				team = t
			}
			var len = 32 + ((Player.skill_got[13]+bettermelee)*20);
			var angStep = (100*accuracy) / 10;
			var aimDir = aimDirection - (angStep*5) + (90 * multi);
			var fx = mx + lengthdir_x(len,aimDir);
			var fy = my + lengthdir_y(len,aimDir);
			repeat(10)
			{
				with instance_create(fx,fy,Flame)
				{
					motion_add(aimDir,4+random(1))
					//image_angle = direction
					team = t
				}
				aimDir += angStep;
				fx = mx + lengthdir_x(len,aimDir);
				fy = my + lengthdir_y(len,aimDir);
			}
			mx -= lengthdir_x(48,aimDirection - (90 * multi));
			my -= lengthdir_y(48,aimDirection - (90 * multi));
			var toSpawn = FrostSlash;
			var um = GetPlayerUltramod();
			if um == ultramods.fireFrost
				toSpawn = FlameSlash;
			with instance_create(mx,my,toSpawn)
			{
				dmg = 17//shovel is 12 is frostglove
				longarms = 0
		
				longarms = (Player.skill_got[13]+other.bettermelee)*3
				motion_add(aimDirection - (90 * multi),2.7+longarms)
				image_angle = direction
				team = t
			}
			var len = 32 + ((Player.skill_got[13]+bettermelee)*20);
			var angStep = (100*accuracy) / 6;
			var aimDir = aimDirection - (angStep*3) - (90 * multi);
			var fx = mx + lengthdir_x(len,aimDir)
			var fy = my + lengthdir_y(len,aimDir)
			repeat(6)
			{
				with instance_create(fx,fy,IceFlame)
				{
					motion_add(aimDir,4+random(1))
					image_angle = direction
					team = t
				}
				aimDir += angStep;
				fx = mx + lengthdir_x(len,aimDir);
				fy = my + lengthdir_y(len,aimDir);
			}
			wepangle = -wepangle
			if !skill_got[2]
			{
				motion_add(aimDirection,5)
				scrMoveContactSolid(aimDirection,4)
			}
			BackCont.viewx2 += lengthdir_x(20,aimDirection)*UberCont.opt_shake
			BackCont.viewy2 += lengthdir_y(20,aimDirection)*UberCont.opt_shake
			BackCont.shake += 5
			wkick = -6
		break;
		
		//ENERGY SPEAR
		case 825:

		if Player.skill_got[17]
			snd_play_fire(sndEnergySpear)
		else
			snd_play_fire(sndEnergySpearUpg)
		instance_create(x,y,Dust)
		with instance_create(x+lengthdir_x(((Player.skill_got[13]+bettermelee)*20),aimDirection),y+lengthdir_y(((Player.skill_got[13]+bettermelee)*20),aimDirection),EnergySpearShank)
		{
			longarms = 0
			if Player.skill_got[13]
			{
				longarms = (Player.skill_got[13]+other.bettermelee)
				image_yscale += 0.25 + other.bettermelee;
				maxRange += 20+other.bettermelee;
				minRange += 10+other.bettermelee;
			}
			motion_add(aimDirection,1+longarms)
			image_angle = direction
			team = other.team
			event_perform(ev_alarm,0);
		}
		if !skill_got[2]
		{
			motion_add(aimDirection,10)
			scrMoveContactSolid(aimDirection,20)
		}
		wepangle = -wepangle
		BackCont.viewx2 += lengthdir_x(44,aimDirection)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(44,aimDirection)*UberCont.opt_shake
		BackCont.shake += 6
		wkick = -22

		break;
		
		//POP CANNON
		case 826:

		snd_play_fire(sndFlakCannon)

		with instance_create(x,y,PopCannonBullet)
		{motion_add(aimDirection+(random(14)-7)*other.accuracy,12)
		image_angle = direction
		team = other.team}

		BackCont.viewx2 += lengthdir_x(7,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(7,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 7
		wkick = 4
		if !skill_got[2]
		{
			motion_add(aimDirection + 180,2)
			scrMoveContactSolid(aimDirection + 180,3)
		}
		break;
		
		//THUNDER STRIKE
		case 827:

		if Player.skill_got[17] = 1
		snd_play_fire(sndThunderStrikeUpg)
		else
		snd_play_fire(sndThunderStrike)

		var len = 64;
		var hit = collision_line_point(x,y,
		x + lengthdir_x(len,aimDirection),
		y + lengthdir_y(len,aimDirection),
		Wall,false,false);
		while place_meeting(hit[1],hit[2],Wall)
		{
			hit[1] += lengthdir_x(2,aimDirection + 180);
			hit[2] += lengthdir_y(2,aimDirection + 180);
		}
		with instance_create(hit[1],hit[2],LightningBeam) {
			team = other.team;
			direction = aimDirection;
			speed = 1;
		}
		with instance_create(x,y,Lightning)
		{
			image_angle = aimDirection;
			team = other.team
			ammo = 6
			event_perform(ev_alarm,0)
			with instance_create(x,y,LightningSpawn)
			image_angle = other.image_angle
		}
		var ang = aimDirection + 60 + ((random(6)-3)*other.accuracy);
		repeat(3)
		{
			with instance_create(hit[1],hit[2],Lightning)
			{
				image_angle = ang;
				team = other.team
				ammo = 12
				event_perform(ev_alarm,0)
				with instance_create(x,y,LightningSpawn)
				image_angle = other.image_angle
			}
			ang += 120;
		}

		BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 8
		wkick = -8
		if !skill_got[2]
		{
			motion_add(aimDirection + 180,2)
			scrMoveContactSolid(aimDirection + 180,8)
		}
		break;
		
		//NAIL SHOTGUN
		case 828:
		snd_play_fire(sndDoubleShotgun);
		with instance_create(x,y,Nail)
		{
			motion_add(aimDirection+(random(6)-3)*other.accuracy,18)
			image_angle = direction
			team = other.team
		}
		with instance_create(x,y,NailBurst)
		{
			playSound = false;
			projectileSpeedAdjust = 1;
			totalAccuracy = 32;
			creator = other.id
			ammo = 3
			time = 2
			team = other.team
			event_perform(ev_alarm,0) 
		}
		with instance_create(x,y,NailBurst)
		{
			projectileSpeedAdjust = 1;
			totalAccuracy = 26;
			creator = other.id
			ammo = 3
			time = 2
			team = other.team
			alarm[0] = 1;
		}
		with instance_create(x,y,NailBurst)
		{
			projectileSpeedAdjust = 1;
			totalAccuracy = 18;
			creator = other.id
			ammo = 2
			time = 3
			team = other.team
			event_perform(ev_alarm,0) 
		}
		with instance_create(x,y,NailBurst)
		{
			projectileSpeedAdjust = -1;
			totalAccuracy = 40;
			creator = other.id
			ammo = 2
			time = 1
			team = other.team
			alarm[0] = 3;
		}
		if !skill_got[2]
		{
			scrMoveContactSolid(aimDirection + 180,4);
			motion_add(aimDirection+180,4)
		}
		BackCont.viewx2 += lengthdir_x(25,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(25,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 6
		wkick = 3

		break;
		
		//POLE
		case 829:

		snd_play_fire(sndPole)
			instance_create(x,y,Dust)
			with instance_create(x+lengthdir_x(((Player.skill_got[13]+bettermelee)*20),aimDirection),y+lengthdir_y(((Player.skill_got[13]+bettermelee)*20),aimDirection),SpearShank)
			{
				longarms = 0
				dmg = 8;
				maxRange -= 12;
				minRange -= 3;
				endSpr = sprPoleSlashEnd;
				if Player.skill_got[13]
				{
					longarms = (Player.skill_got[13]+other.bettermelee)
					image_yscale += 0.25 + other.bettermelee;
					maxRange += 12+other.bettermelee;
					minRange += 9+other.bettermelee;
				}
				motion_add(aimDirection,1+longarms)
				image_angle = direction
				team = other.team
				event_perform(ev_alarm,0);
			}
			if !skill_got[2]
			{
				motion_add(aimDirection,5)
				scrMoveContactSolid(aimDirection,10)
			}
			wepangle = -wepangle
			BackCont.viewx2 += lengthdir_x(25,aimDirection)*UberCont.opt_shake
			BackCont.viewy2 += lengthdir_y(25,aimDirection)*UberCont.opt_shake
			BackCont.shake += 5
			wkick = -10

		break;
		
		//STAFF
		case 830:

		//snd_play_fire(sndSplinterPistol)
		snd_play_fire(sndStaff)

		with instance_create(x+lengthdir_x(((Player.skill_got[13]+bettermelee)*20),aimDirection),y+lengthdir_y(((Player.skill_got[13]+bettermelee)*20),aimDirection),SmallSlash)
		{
			longarms = 0
			dmg = 3;
			longarms = (Player.skill_got[13]+other.bettermelee)*3
			motion_add(aimDirection,2.5+longarms)
			image_angle = direction
			team = other.team
		}
	
		with instance_create(x,y,StaffShank)
		{motion_add(aimDirection+(random(12)-6)*other.accuracy,13)
		image_angle = direction
		team = other.team}

		wepangle = -wepangle
		BackCont.viewx2 += lengthdir_x(8,aimDirection)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(8,aimDirection)*UberCont.opt_shake
		BackCont.shake += 2
		wkick = -6

		break;
		
		//DOUBLE BLOOD RIFLE
		case 831:

		snd_play_fire(sndBloodPistol)
		repeat(choose(1,2))
			with instance_create(x,y,Shell)
			motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

		with instance_create(x,y,BloodBullet)
		{motion_add(aimDirection+((8 + random(12)-6)*other.accuracy),16.5)
		image_angle = direction
		team = other.team}
		with instance_create(x,y,BloodBullet)
		{motion_add(aimDirection-((8 + random(12)-6)*other.accuracy),16.5)
		image_angle = direction
		team = other.team}

		BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 2.2
		wkick = 2

		break;
		
		//TURTLE SHOTGUN
		case 832:
		snd_play_fire(sndTurtleShotgun)
		repeat(3)
		{
			with instance_create(x,y,Smoke)
				motion_add(aimDirection+(random(16)-8)*other.accuracy,3+random(2))
		}
		repeat(3)
		{
			with instance_create(x,y,Dust)
				motion_add(aimDirection+(random(16)-8)*other.accuracy,3+random(2))
		}
		with instance_create(x,y,ShotgunBurst)
		{
			creator = other.id
			ammo = 4
			time = 4
			team = other.team
			alarm[0] = 15;
			if Player.skill_got[42]
			{
				alarm[0] = 8;
				if Player.ultra_got[97] && !Player.altUltra
				{
					alarm[0] = 1;
				}
				scrActivateTail(hasTailNow);
			}
		}
		BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 5
		wkick = -4
		break;
		
		//STAR GRENADE LAUNCHER
		case 833:

		snd_play_fire(sndGrenade)

		with instance_create(x,y,StarGrenade)
		{
		sticky = 0
		motion_add(aimDirection+(random(8)-4)*other.accuracy,16)
		image_angle = direction
		startingAngle = image_angle;
		team = other.team}

		BackCont.viewx2 += lengthdir_x(15,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(15,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 3
		wkick = 5

		break;
		
		//PLOP SHOTGUN
		case 834:
		snd_play_fire(choose(sndPlopShotgun1,sndPlopShotgun2));
		with instance_create(x,y,PlopShotgunBurst)
		{
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

		BackCont.viewx2 += lengthdir_x(7,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(7,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 6
		wkick = 8

		break;
		
		//PLOP MACHINEGUN
		case 835:

		snd_play_fire(choose(sndPlopMachinegun1,sndPlopMachinegun2))
		repeat(2)
			with instance_create(x,y,Shell)
				motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

		with instance_create(x,y,Bullet12)
		{
			motion_add(aimDirection+(random(8)-4)*other.accuracy,17)
			image_angle = direction
			team = other.team;
			minSpeed += 1;
			bulletCost = 2;
		}
		if !skill_got[2]
		{
			motion_add(aimDirection+180,2.5)
		}
		BackCont.viewx2 += lengthdir_x(7,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(7,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 4
		wkick = 2

		break;
		
		//ENERGY SHOTGUN
		case 836:
		if Player.skill_got[17]
			snd_play_fire(sndEnergyShotgunUpg);
		else
			snd_play_fire(sndEnergyShotgun);
		with instance_create(x,y,EnergyShotgunBurst)
		{
			creator = other.id
			ammo = 2
			time = 2
			team = other.team
			event_perform(ev_alarm,0)
		}
		if !skill_got[2]
		{
			scrMoveContactSolid(aimDirection + 180,3);
			motion_add(aimDirection+180,2)
		}

		BackCont.viewx2 += lengthdir_x(7,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(7,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 6
		wkick = 8

		break;
		
		//ENERGY POPGUN
		case 837:

		if Player.skill_got[17]
			snd_play_fire(choose(sndEnergyPopgunUpg1,sndEnergyPopgunUpg2))
		else
			snd_play_fire(choose(sndEnergyPopgun1,sndEnergyPopgun2))

		with instance_create(x,y,Bullet2Energy)
		{motion_add(aimDirection+(random(16)-8)*other.accuracy,15)
		image_angle = direction
		team = other.team}
		if !skill_got[2]
		{
			motion_add(aimDirection+180,2)
		}
		BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 2
		wkick = 2

		break;
		
		//ULTRA BULLET CRASH
		case 838:

		snd_play_fire(sndQuadMachinegun)
		snd_play_fire(sndUltraPistol)
		var am = 12;
		var angStep = 360/am;
		angStep *= accuracy;
		var angg = aimDirection - (angStep * (am*0.5));
		repeat(am)
		{
			with instance_create(x,y,Bullet4)
			{
				motion_add(angg+(random(8)-4)*other.accuracy,22);
				image_angle = direction
				team = other.team
			}
			angg += angStep
		}
		angStep *= 0.5;
		with instance_create(x,y,Bullet4)
		{
			motion_add(aimDirection+angStep+(random(8)-4)*other.accuracy,22);
			image_angle = direction
			team = other.team
		}
		with instance_create(x,y,Bullet4)
		{
			motion_add(aimDirection-angStep+(random(8)-4)*other.accuracy,22);
			image_angle = direction
			team = other.team
		}
		var ran = random(360);
		if !skill_got[2]
		{
			scrMoveContactSolid(ran,2);
			motion_add(ran,2)
		}
		BackCont.viewx2 += lengthdir_x(11,ran)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(11,ran)*UberCont.opt_shake
		BackCont.shake += 6
		wkick = 5
		scrSpinnableWeapon(wep);
		break;
		
		//ULTRA SUPER BAZOOKA
		case 839:
		snd_play_fire(sndUltraSuperBazooka)

		if !skill_got[2]
		{
			scrMoveContactSolid(aimDirection + 180,32);
			motion_add(aimDirection+180,8)
		}

		with instance_create(x,y,UltraRocket)
		{motion_add(aimDirection+(random(8)-4)*other.accuracy,22)
		image_angle = direction
		team = other.team}
		with instance_create(x,y,UltraRocket)
		{motion_add(aimDirection+10*other.accuracy+(random(4)-2)*other.accuracy,22)
		image_angle = direction
		team = other.team}
		with instance_create(x,y,UltraRocket)
		{motion_add(aimDirection+20*other.accuracy+(random(4)-2)*other.accuracy,22)
		image_angle = direction
		team = other.team}
		with instance_create(x,y,UltraRocket)
		{motion_add(aimDirection-10*other.accuracy+(random(4)-2)*other.accuracy,22)
		image_angle = direction
		team = other.team}
		with instance_create(x,y,UltraRocket)
		{motion_add(aimDirection-20*other.accuracy+(random(4)-2)*other.accuracy,22)
		image_angle = direction
		team = other.team}

		BackCont.viewx2 += lengthdir_x(120,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(120,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 25
		wkick = 10

		break;
		
		//GATLING FLAME BAZOOKA
		case 840:

		snd_play_fire(sndRocket);

		with instance_create(x,y,FireRocket)
		{motion_add(aimDirection+(random(8)-4)*other.accuracy,5)
		image_angle = direction
		team = other.team}
		if !skill_got[2]
		{
			motion_add(aimDirection+180,2)
		}
		BackCont.viewx2 += lengthdir_x(25,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(25,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 4
		wkick = 8

		break;
		
		//ULTRA KRAKEN WHIRLPOOL
		case 841:

		snd_play_fire(sndRoll);
		snd_play_fire(sndBloodCannon);
		snd_play_fire(choose(sndWater1,sndWater2) );

		var len = 96;
		var hit = collision_line_point(x,y,
		x + lengthdir_x(len,aimDirection),
		y + lengthdir_y(len,aimDirection),
		Wall,false,false);
		while place_meeting(hit[1],hit[2],Wall)
		{
			hit[1] += lengthdir_x(2,aimDirection + 180);
			hit[2] += lengthdir_y(2,aimDirection + 180);
		}
		with instance_create(x,y,Tentacle)
		{
			sprite_index=sprUltraTentacle;
			ultra=true;
			dmg = 6;//10+irandom(4)
			if Player.ultra_got[61] && Player.altUltra//Captain of the kraken
			{
				dmg += 1;
			}
			image_angle = aimDirection+(random(60)-30)*other.accuracy
			team = other.team
			ammo = 20//24
			image_yscale += 0.3;
			event_perform(ev_alarm,0)
			visible = 0
			with instance_create(x,y,LightningSpawn)
			{
				sprite_index=sprTentacleSpawn
				image_angle = other.image_angle
			}
		}
		with instance_create(hit[1],hit[2],UltraKrakenWhirlPool)
		{
			team = other.team;
		}
		BackCont.viewx2 += lengthdir_x(20,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(20,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 8
		wkick = -8
		if !skill_got[2]
		{
			motion_add(aimDirection + 180,2)
			scrMoveContactSolid(aimDirection + 180,8)
		}
		break;
		
		//PLOP REVOLVER
		case 842:

		snd_play_fire(choose(sndPlopMachinegun1,sndPlopMachinegun2))
		with instance_create(x,y,Shell)
		motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

		with instance_create(x,y,Bullet12)
		{
			motion_add(aimDirection+(random(6)-3)*other.accuracy,16)
			image_angle = direction
			team = other.team;
			minSpeed += 1;
			bulletCost = 2;
		}
		if !skill_got[2]
		{
			motion_add(aimDirection+180,2.5)
		}
		BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 4
		wkick = 3

		break;
		
		//TURTLE SLUGGER
		case 843:
		snd_play_fire(sndTurtleShotgun)
		repeat(3)
		{
			with instance_create(x,y,Smoke)
				motion_add(aimDirection+(random(16)-8)*other.accuracy,3+random(2))
		}
		repeat(3)
		{
			with instance_create(x,y,Dust)
				motion_add(aimDirection+(random(16)-8)*other.accuracy,3+random(2))
		}
		with instance_create(x,y,SlugBurst)
		{
			creator = other.id
			ammo = 4
			time = 4
			team = other.team
			alarm[0] = 15;
			if Player.skill_got[42]
			{
				alarm[0] = 8;
				if Player.ultra_got[97] && !Player.altUltra
				{
					alarm[0] = 1;
				}
				scrActivateTail(hasTailNow);
			}
		}
		BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 5
		wkick = -4
		break;
		
		//SUPER PLOP MACHINEGUN
		case 844:

		snd_play_fire(choose(sndPlopShotgun1,sndPlopShotgun2))
		with instance_create(x,y,Shell)
		motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))
		
		var ang = aimDirection;
		var am = 7;
		var range = 35 * accuracy;
		var angStep = range / am;
		ang -= range * 0.5;
		repeat(am)
		{
			with instance_create(x,y,Bullet12)
			{
				motion_add(ang,18)
				image_angle = direction
				team = other.team;
				minSpeed += 1;
				bulletCost = 2;
			}
			ang += angStep;
		}
		if !skill_got[2]
		{
			motion_add(aimDirection+180,2)
		}
		BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 5
		wkick = 4

		break;
		
		//SUPER ENERGY SHOTGUN
		case 845:
		if Player.skill_got[17]
			snd_play_fire(sndEnergyShotgunUpg);
		else
			snd_play_fire(sndEnergyShotgun);
		with instance_create(x,y,EnergyShotgunBurst)
		{
			creator = other.id
			ammo = 8
			time = 2
			projectileSpeed += 2;
			accuracy = 32;
			amountOfProjectiles += 2;
			team = other.team
			alarm[1] = 4;
			event_perform(ev_alarm,0)
		}
		if !skill_got[2]
		{
			scrMoveContactSolid(aimDirection + 180,4);
			motion_add(aimDirection+180,4)
		}

		BackCont.viewx2 += lengthdir_x(12,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(12,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 8
		wkick = 9

		break;
		
		//ULTRA SHOVEL BURST CRASH
		case 846:
		
		with instance_create(x,y,UltraShovelCrashBurst)
		{
			creator = other.id
			ammo = 2
			time = 5
			team = other.team
			event_perform(ev_alarm,0)
		}
		scrSpinnableWeapon(wep);
		BackCont.viewx2 += lengthdir_x(10,aimDirection)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(10,aimDirection)*UberCont.opt_shake
		BackCont.shake += 5
		wkick = -4

		break;
		
		//ULTRA AUTO CROSSBOW
		case 847:

		snd_play_fire(sndUltraCrossbow)

		with instance_create(x,y,UltraBolt)
		{motion_add(aimDirection+(random(12)-6)*other.accuracy,24)
		image_angle = direction
		team = other.team}

		BackCont.viewx2 += lengthdir_x(30,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(30,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 4
		wkick = 5

		break;
		
		//ULTRA GATLING SLUGGER
		case 848:

		snd_play_fire(sndUltraSlugger)

		with instance_create(x,y,UltraSlug)
		{motion_add(aimDirection+(random(12)-6)*other.accuracy,18)
		image_angle = direction
		team = other.team}

		BackCont.viewx2 += lengthdir_x(25,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(25,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 8
		wkick = 9

		break;
		
		//ULTRA DIRECTOR REVOLVER
		case 849:

		snd_play_fire(sndUltraDirectorRifle)
		if !skill_got[2]
		{
			motion_add(aimDirection+ 180,3)
		}	
		repeat(2)
		with instance_create(x,y,Shell)
		motion_add(aimDirection+180+random(50)-25,2+random(2))

		with instance_create(x,y,UltraDirectorRifleBullet)
		{
			motion_add(aimDirection+random(6)-3,9)
			image_angle = direction
			team = other.team
		}
		BackCont.viewx2 += lengthdir_x(15,aimDirection + 180)*UberCont.opt_shake;
		BackCont.viewy2 += lengthdir_y(15,aimDirection + 180)*UberCont.opt_shake;
		BackCont.shake += 10;
		wkick = 5;
		
		break;
		
		//ULTRA LIGHTNING HAMMER
		case 850:

		if Player.skill_got[17] = 1
			snd_play_fire(sndUltraLightningHammerUpg);
		else
			snd_play_fire(sndUltraLightningHammer);

		instance_create(x,y,Smoke)
		if !skill_got[2]
		{
			scrMoveContactSolid(aimDirection,4);
			motion_add(aimDirection,8)
		}
		with instance_create(x+lengthdir_x(5+(Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y(5+(Player.skill_got[13]+bettermelee)*20,aimDirection),UltraLightningSlash)
		{
			//shovel is 8
		longarms = 0
	
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection,3+longarms)
		image_angle = direction
		team = other.team}

		wepangle = -wepangle
		
		BackCont.viewx2 += lengthdir_x(12,aimDirection)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(12,aimDirection)*UberCont.opt_shake
		BackCont.shake += 2
		wkick = -4

		break;
		
		//OLD SHOTGUN
		case 851:

		snd_play_fire(sndSuperSlugger)
	
		with instance_create(x,y,Bullet2Heavy)
		{motion_add(aimDirection,13+random(5))
		image_angle = direction
		team = other.team}
		repeat(4)
		{
			with instance_create(x,y,Bullet2Heavy)
			{motion_add(aimDirection+(random(36)-18)*other.accuracy,13+random(5))
			image_angle = direction
			team = other.team}
		}

		BackCont.viewx2 += lengthdir_x(40,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(40,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 16
		wkick = 9
		if !skill_got[2]
			scrMoveContactSolid(aimDirection + 180,20);

		break;
		
		//DOUBLE PLOP GUN
		case 852:

		snd_play_fire(choose(sndDoublePlopGun1,sndDoublePlopGun2))
		repeat(4)
			with instance_create(x,y,Shell)
			motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

		with instance_create(x,y,Bullet12)
		{
			motion_add(aimDirection+(8+random(8)-4)*other.accuracy,17)
			image_angle = direction
			team = other.team;
		}
		with instance_create(x,y,Bullet12)
		{
			motion_add(aimDirection+(8-random(8)-4)*other.accuracy,17)
			image_angle = direction
			team = other.team;
		}
		if !skill_got[2]
		{
			motion_add(aimDirection+180,3)
		}
		BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 5
		wkick = 2

		break;
		
		//ENERGY POP RIFLE
		case 853:
		
		with instance_create(x,y,EnergyPopGunBurst)
		{
			creator = other.id
			ammo = 2
			time = 4
			team = other.team
			event_perform(ev_alarm,0)
		}
		/*
		if Player.skill_got[17]
			snd_play_fire(choose(sndEnergyPopgunUpg1,sndEnergyPopgunUpg2))
		else
			snd_play_fire(choose(sndEnergyPopgun1,sndEnergyPopgun2))
		snd_play_fire(sndEnergyPopPistol)
		with instance_create(x,y,Bullet2Energy)
		{motion_add(aimDirection+(random(12)-6)*other.accuracy,15)
			friction += 0.1;
		image_angle = direction
		team = other.team}
		if !skill_got[2]
		{
			motion_add(aimDirection+180,3)
		}
		BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 4
		wkick = 4*/

		break;
		
		//DOUBLE REVOLVER
		case 854:

		snd_play_fire(sndDoubleRevolver)
		var aimdir = aimDirection+(random(6)-3*accuracy);
		var offset = 5 * accuracy;
		var ldx = lengthdir_x(offset,aimdir+90);
		var ldy = lengthdir_y(offset,aimdir+90);
		var cldx = x+lengthdir_x(offset+8,aimdir+90);
		var cldy = y+lengthdir_y(offset+8,aimdir+90);
		if (collision_line(x,y,cldx,cldy,Wall,false,false) > 0)
		{
			ldx = 0;
			ldy = 0;
		}
		repeat(2)
			with instance_create(x,y,Shell)
			motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

		with instance_create(x + ldx,y + ldy,Bullet1)
		{motion_add(aimdir,15)
		image_angle = direction
		team = other.team}
		with instance_create(x - ldx,y - ldy,Bullet1)
		{motion_add(aimdir,15)
		image_angle = direction
		team = other.team}

		BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 4
		wkick = 2

		break;
		
		//TOXIC MACHINEGUN
		case 855:

		snd_play_fire(sndMachinegunToxic)

		with instance_create(x,y,Shell)
		motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

		with instance_create(x,y,Bullet1Toxic)
		{motion_add(aimDirection+(random(8)-4)*other.accuracy,15)
		image_angle = direction
		team = other.team}

		BackCont.viewx2 += lengthdir_x(5,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(5,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 3
		wkick = 3

		break;
		
		//FROST BURN MACHINEGUN
		case 856:
		
		repeat(2)
		with instance_create(x,y,Shell)
		motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))
		
		altFire = !altFire;
		if altFire
		{
			snd_play_fire(sndFrostShot2)
			with instance_create(x,y,FreezeBullet)
			{motion_add(aimDirection+(random(12)-6)*other.accuracy,17)
			image_angle = direction
			team = other.team}
		}
		else
		{
			snd_play_fire(sndFlameMachinegun)
			with instance_create(x,y,Bullet1Flame)
			{motion_add(aimDirection+(random(8)-4)*other.accuracy,17)
			image_angle = direction
			team = other.team}
		}

		BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 6
		wkick = 5

		break;
		
		//CHARGE LIGHTNING BOW
		case 857:

		with ChargeLightningBow {
			if scrChargeRelease()
			{
				instance_destroy();
			}
		}
		with instance_create(x,y,ChargeLightningBow)
		{
			maxcharge=3;//maxrate
			creator = other.id
			chargetime = 6;
			team = other.team
			if Player.skill_got[42]
			{
				chargetime = 2;
				maxcharge++;
				if Player.ultra_got[97] && !Player.altUltra
				{
					chargetime = 1;
					rate = maxcharge;
					maxcharge++;
				}
				scrActivateTail(hasTailNow);
			}
			event_perform(ev_alarm,0)
		}

		break;
		
		//CHARGE EXPLOSIVE BOW
		case 858:

		with ChargeExplosiveBow {
			if scrChargeRelease()
			{
				instance_destroy();
			}
		}
		with instance_create(x,y,ChargeExplosiveBow)
		{
			maxcharge=3;//maxrate
			creator = other.id
			chargetime = 6;
			team = other.team
			if Player.skill_got[42]
			{
				chargetime = 2;
				maxcharge++;
				if Player.ultra_got[97] && !Player.altUltra
				{
					chargetime = 1;
					rate = maxcharge;
					maxcharge++;
				}
				scrActivateTail(hasTailNow);
			}
			event_perform(ev_alarm,0)
		}

		break;
		
		//ENERGY SNAIL CANNON
		case 859:

		if Player.skill_got[17] = 1
		snd_play_fire(sndPlasmaBigUpg)
		else
		snd_play_fire(sndPlasmaBig)

		with instance_create(x,y,EnergySnailCannon)
		{
			motion_add(aimDirection+(random(8)-4)*other.accuracy,8)
			image_angle = direction
			team = other.team
		}

		if !skill_got[2]
		{
			scrMoveContactSolid(aimDirection + 180,16);
			motion_add(aimDirection+180,4)
		}
		BackCont.viewx2 += lengthdir_x(20,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(20,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 10
		wkick = 8

		break;
		
		//ENERGY SNAIL GUN
		case 860:

		if Player.skill_got[17] = 1
		snd_play_fire(sndPlasmaUpg)
		else
		snd_play_fire(sndPlasma)

		with instance_create(x,y,EnergySnail)
		{
			alarm[2] += 30;
			hitResetRate += 2;
			motion_add(aimDirection+(random(10)-5)*other.accuracy,5.5)
			minSpeed -= 0.3;
			image_angle = direction
			team = other.team
		}

		if !skill_got[2]
		{
			scrMoveContactSolid(aimDirection + 180,6);
			motion_add(aimDirection+180,3)
		}
		BackCont.viewx2 += lengthdir_x(20,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(20,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 10
		wkick = 8

		break;
		
		//HOT NAIL GUN
		case 861:
		with instance_create(x,y,HotNail)
		{
			motion_add(aimDirection+(random(6)-3)*other.accuracy,17)
			image_angle = direction
			team = other.team
		}
		with instance_create(x,y,HotNailBurst)
		{
			totalAccuracy = 18;
			creator = other.id
			ammo = 3
			time = 3
			team = other.team
			alarm[0] = 1;
		}
		if !skill_got[2]
		{
			scrMoveContactSolid(aimDirection + 180,2);
			motion_add(aimDirection+180,2)
		}
		BackCont.viewx2 += lengthdir_x(20,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(20,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 4
		wkick = 5

		break;
		
		//FLAME MACHINEGUN
		case 862:

		snd_play_fire(sndFlameMachinegun)
		with instance_create(x,y,Shell)
		motion_add(aimDirection+other.right*100+random(60)-30,2+random(2))

		with instance_create(x,y,Bullet1Flame)
		{motion_add(aimDirection+(random(12)-6)*other.accuracy,14.5)
		image_angle = direction
		team = other.team}

		BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 4
		wkick = 2

		break;
		
		//ICICLE HANDGUN
		case 863:
		with instance_create(x,y,FrostIcicle)
		{
			freezetime = 1;
			motion_add(aimDirection,24);
			image_angle = direction
			team = other.team
		}
		with instance_create(x,y,IcicleBurst)
		{
			creator = other.id
			ammo = 4//16
			time = 3
			team = other.team
			event_perform(ev_alarm,0)
			if instance_exists(Player) && other.object_index == Player && Player.skill_got[42] && Player.ultra_got[97] && !Player.altUltra
				alarm[0] = 1;
		}
		BackCont.viewx2 += lengthdir_x(6,aimDirection)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(6,aimDirection)*UberCont.opt_shake
		BackCont.shake += 3
		break;
		
		//ULTRA SLEDGEHAMMER
		case 864:

		snd_play_fire(sndUltraSledgehammer)

		instance_create(x,y,Smoke)

		with instance_create(x+lengthdir_x(2+(Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y(2+(Player.skill_got[13]+bettermelee)*20,aimDirection),UltraSledgehammerSlash)
		{
			longarms = 0
			longarms = (Player.skill_got[13]+other.bettermelee)*3
			motion_add(aimDirection,3+longarms)
			image_angle = direction
			team = other.team
		}

		wepangle = -wepangle
		if !skill_got[2]
		{
			speed = 0;
			if (!instance_exists(SpeedLockout))
			{
				with instance_create(x,y,SpeedLockout)
				{
					lockoutTime = 3;
					alarm[0] = lockoutTime;
					resetSpeed = other.maxSpeed;
				}
			}
		}
		BackCont.viewx2 += lengthdir_x(80,aimDirection)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(80,aimDirection)*UberCont.opt_shake
		BackCont.shake += 40
		wkick = -5

		break;
		
		//BLOOD SEWING NEEDLE
		case 865:

		snd_play_fire(sndBloodSewingNeedle)

		instance_create(x,y,Dust)
		with instance_create(x + lengthdir_x(16,aimDirection+180),y + lengthdir_y(16,aimDirection+180),BloodStreak)
		{
			motion_add(aimDirection + 180,1)
			image_angle = direction;
		}
		with instance_create(x + lengthdir_x(16,aimDirection+180),y + lengthdir_y(16,aimDirection+180),SewingNeedle)
		{
			longarms += (Player.skill_got[13]+other.bettermelee)*2
			if Player.skill_got[13]
			{
				needleRange += sprWdth;
				if Player.ultra_got[97] && !Player.altUltra
					needleRange += sprWdth * 2;
			}
			image_yscale += other.bettermelee * 2;
			motion_add(aimDirection,longarms)
			image_angle = direction
			team = other.team
			event_user(1);
		}
		if !skill_got[2]
		{
			//scrMoveContactSolid(aimDirection + 180,2);
			motion_add(aimDirection+180,3)
		}
		wepangle = -wepangle
		BackCont.viewx2 += lengthdir_x(20,aimDirection)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(20,aimDirection)*UberCont.opt_shake
		BackCont.shake += 3
		wkick = -7

		break;
		
		//TOXIC DENSE GUN
		case 866:

		snd_play_fire(sndToxicRevolver);
		snd_play(sndClusterOpen);

		with instance_create(x,y,Shell)
		motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

		var am = 5;
		var aim = aimDirection+(random(8)-4)*other.accuracy
		var ang = aim;
		var angStep = 60;
		var spd = 14;
		var len = 4 * accuracy;
		with instance_create(x,y,Bullet1Toxic)
		{motion_add(aim,spd)
		image_angle = direction
		team = other.team}
		repeat(am)
		{
			with instance_create(x + lengthdir_x(len,ang),y + lengthdir_y(len,ang),Bullet1Toxic)
			{motion_add(aim,spd)
			image_angle = direction
			team = other.team}
			ang += angStep;
		}
		if !skill_got[2]
		{
			scrMoveContactSolid(aimDirection + 180,8);
			motion_add(aimDirection + 180,3);
		}
		BackCont.viewx2 += lengthdir_x(15,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(15,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 10
		wkick = 4

		break
		
		//TOXIC HAND CANNON
		case 867:

		snd_play_fire(sndToxicLauncher)

		with instance_create(x,y,ToxicCannonBall)
		{
			alarm[0] = 10;
			motion_add(aimDirection,4)
			alarm[3] = 5;
			image_angle = direction
			team = other.team
		}
		if !skill_got[2]
		{
			//scrMoveContactSolid(aimDirection + 180,4);
			motion_add(aimDirection + 180,5);
		}
		BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 10
		wkick = 6

		break;
		
		//PLOP MINIGUN
		case 868:

		snd_play_fire(sndPlopMinigun)
		with instance_create(x,y,Shell)
		motion_add(aimDirection+other.right*100+random(80)-40,3+random(2))

		with instance_create(x,y,Bullet12)
		{motion_add(aimDirection+(random(26)-13)*other.accuracy,15)
		image_angle = direction
		team = other.team}
		if !skill_got[2]
		{
			motion_add(aimDirection+180,1)
		}
		BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 4
		wkick = 4

		break;
		
		//TRIPLE KRAKEN MACHINEGUN
		case 869:

		snd_play_fire(sndTripleKrakenMachinegun)
		snd_play(choose(sndWater1,sndWater2));
		repeat(5)
			with instance_create(x,y,Shell)
				motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

		with instance_create(x,y,Bullet1Kraken)
		{
			creator = other.id;
			motion_add(aimDirection+(random(8)-4)*other.accuracy,15)
			image_angle = direction
			team = other.team
		}
		with instance_create(x,y,Bullet1Kraken)
		{
			creator = other.id;
			motion_add(aimDirection+(random(6)-3+ 10)*other.accuracy,15)
			image_angle = direction
			team = other.team
		}
		with instance_create(x,y,Bullet1Kraken)
		{
			creator = other.id;
			motion_add(aimDirection+(random(6)-3 - 10)*other.accuracy,15)
			image_angle = direction
			team = other.team
		}
		with instance_create(x,y,FishBoost)
		{
			motion_add(aimDirection+random(60)-30,2+random(4));
		}

		BackCont.viewx2 += lengthdir_x(15,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(15,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 4
		wkick = 3
		if !skill_got[2]
		{
			motion_add(aimDirection+180,1)
		}
		
		break;
		
		//TORPEDO LAUNCHER
		case 870:

		snd_play_fire(sndTorpedoFire)
		var ang = random(360);
		repeat(6)
		{
			with instance_create(x,y,Dust)
			{
				sprite_index = sprBubble;
				motion_add(ang,2);
				motion_add(aimDirection,1);
			}
			ang += 60;
		}
		with instance_create(x,y,LightningSpawn)
		{
			sprite_index=sprTentacleSpawn
			image_angle = aimDirection
		}
		with instance_create(x,y,Torpedo)
		{motion_add(aimDirection+(random(4)-2)*other.accuracy,2)
		image_angle = direction
		team = other.team}
		if !skill_got[2]
		{
			motion_add(aimDirection + 180,8)
			scrMoveContactSolid(aimDirection + 180,16)
		}
		BackCont.viewx2 += lengthdir_x(40,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(40,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 4
		wkick = 8

		break;
		
		//GHOST GRENADE LAUNCHER
		case 871:

		snd_play_fire(sndGhostGrenade)
		repeat(4+irandom(3))
		{
			with instance_create(x,y,GhostEffect)
				motion_add(aimDirection+(random(30)-15)*other.accuracy,3+random(4))
		}
		with instance_create(x,y,GhostGrenade)
		{
			sticky = 0
			motion_add(aimDirection+(random(6)-3)*other.accuracy,16)
			image_angle = direction
			team = other.team
		}

		BackCont.viewx2 += lengthdir_x(15,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(15,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 4
		wkick = 5
		if !skill_got[2]
		{
			motion_add(aimDirection + 180,3)
			scrMoveContactSolid(aimDirection + 180,4)
		}
		break;
		
		//CROWBAR
		case 872:

		snd_play_fire(sndCrowbar)

		instance_create(x,y,Dust)

		with instance_create(x+lengthdir_x(((Player.skill_got[13]+bettermelee)*20),aimDirection),y+lengthdir_y(((Player.skill_got[13]+bettermelee)*20),aimDirection),WrenchSlash)
		{
			image_yscale *= sign(other.wepangle);
			snd_wallhit = sndCrowbarHitWall;
			dmg = 14
			sprite_index = sprCrowbarSlash;
			mask_index = mskCrowbarSlash;
			canAlwaysDeflect = true;
			longarms = 0
			longarms = (Player.skill_got[13]+other.bettermelee)*3
			motion_add(aimDirection,2.7+longarms)
			image_angle = direction
			team = other.team
		}

		wepangle = -wepangle
		if !skill_got[2]
		{
			motion_add(aimDirection,6)
		}
		BackCont.viewx2 += lengthdir_x(15,aimDirection)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(15,aimDirection)*UberCont.opt_shake
		BackCont.shake += 3
		wkick = -6

		break;
		
		//CANE
		case 873:

		snd_play_fire(sndCaneSlash)

		instance_create(x,y,Dust)

		with instance_create(x+lengthdir_x(6+((Player.skill_got[13]+bettermelee)*20),aimDirection),y+lengthdir_y(6+((Player.skill_got[13]+bettermelee)*20),aimDirection),CaneSlash)
		{
			image_yscale *= sign(other.wepangle);
			snd_wallhit = choose(sndMeleeSpearHit1,sndMeleeSpearHit2);;
			dmg = 24
			canAlwaysDeflect = true;
			longarms = 0
			longarms = (Player.skill_got[13]+other.bettermelee)*3
			motion_add(aimDirection,3+longarms)
			image_angle = direction
			team = other.team
		}

		wepangle = -wepangle
		if !skill_got[2]
		{
			motion_add(aimDirection,2)
		}
		BackCont.viewx2 += lengthdir_x(20,aimDirection)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(20,aimDirection)*UberCont.opt_shake
		BackCont.shake += 8
		wkick = -8

		break;
		
		//BUBBLE GUN
		case 874:
			snd_play(sndClusterLauncher);
			BackCont.shake += 5;
			snd_play(choose(sndWater1,sndWater2),0.1,true);
			var ang = random(360);
			repeat(5)
			{
				with instance_create(x,y,Dust)
				{
					sprite_index = sprBubble;
					motion_add(ang,2);
					motion_add(aimDirection,2);
				}
				ang += 72;
			}
			var len = 40;
			var aimDir = aimDirection + (random_range(12,-12)*accuracy);
			var xx = x + lengthdir_x(len,aimDir);
			var yy = y + lengthdir_y(len,aimDir);
			with instance_create(xx,yy,BigBubble)
			{
				motion_add(aimDir,7);
				var ang = random(360);
				image_angle = direction;
				repeat(6)
				{
					with instance_create(x,y,Dust)
					{
						image_xscale += 0.5;
						image_yscale += 0.5;
						sprite_index = sprBubble;
						direction = other.direction;
						speed = other.speed;
						motion_add(ang,4);
					}
					ang += 60;
				}
			}
			BackCont.viewx2 += lengthdir_x(15,aimDirection)*UberCont.opt_shake
			BackCont.viewy2 += lengthdir_y(15,aimDirection)*UberCont.opt_shake
			BackCont.shake += 4
			wkick = 4

		break;
		
		//RED BUBBLE GUN
		case 875:
			snd_play(sndBloodLauncher);
			BackCont.shake += 5;
			snd_play(choose(sndWater1,sndWater2),0.1,true);
			var ang = random(360);
			repeat(5)
			{
				with instance_create(x,y,Dust)
				{
					sprite_index = sprRedBubble;
					motion_add(ang,2);
					motion_add(aimDirection,3);
				}
				ang += 72;
			}
			with instance_create(x,y,BloodStreak)
			{
				motion_add(aimDirection,7)
				image_angle = direction;
			}
			var len = 24;
			var aimDir = aimDirection + (random_range(12,-12)*accuracy);
			var xx = x + lengthdir_x(len,aimDir);
			var yy = y + lengthdir_y(len,aimDir);
			with instance_create(xx,yy,BigBloodBubble)
			{
				motion_add(aimDir,9);
				image_angle = direction;
				var ang = random(360);
				repeat(6)
				{
					with instance_create(x,y,Dust)
					{
						image_xscale += 0.5;
						image_yscale += 0.5;
						sprite_index = sprRedBubble;
						direction = other.direction;
						speed = other.speed;
						motion_add(ang,4);
					}
					ang += 60;
				}
			}
			BackCont.viewx2 += lengthdir_x(14,aimDirection)*UberCont.opt_shake
			BackCont.viewy2 += lengthdir_y(14,aimDirection)*UberCont.opt_shake
			BackCont.shake += 4
			wkick = 4

		break;
		
		//BOLT CUTTER
		case 876:

		snd_play_fire(sndBoltCutter)

		instance_create(x,y,Dust)
		//wep_sprt[876] = sprBoltCutterCutting;
		with instance_create(x+lengthdir_x((-3+(Player.skill_got[13]+bettermelee)*20),aimDirection),y+lengthdir_y((-3+(Player.skill_got[13]+bettermelee)*20),aimDirection),BoltCutterShank)
		{
			owner = other.id;
			longarms = 0
			longarms = (Player.skill_got[13]+other.bettermelee)*2
			motion_add(aimDirection,2+longarms)
			image_angle = direction
			team = other.team
		}

		if !skill_got[2]
		{
			motion_add(aimDirection,8)
		}
		BackCont.viewx2 += lengthdir_x(30,aimDirection)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(30,aimDirection)*UberCont.opt_shake
		BackCont.shake += 3
		wkick = -8

		break;
	}
}
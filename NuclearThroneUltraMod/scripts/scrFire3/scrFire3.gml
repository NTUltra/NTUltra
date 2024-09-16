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

		var am = 18;
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
			alarm[2] = 3;
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
			scrMoveContactSolid(aimDirection + 180,0.25);
			motion_add(aimDirection+180,0.5)
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
		BackCont.viewx2 += lengthdir_x(40,aimDirection)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(40,aimDirection)*UberCont.opt_shake
		BackCont.shake += 5
		wkick = -20

		break;
		
		//POWER CROSSBOW
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
		
		//SUPER BLOOD LANCE
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
		{motion_add(aimDirection+(random(8)-4)*other.accuracy,14)
			if instance_exists(BulletScaler)
				speed += min(6,BulletScaler.dmg * 0.5);
		image_angle = direction
		team = other.team}
		
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
			event_perform(ev_alarm,0)
		}
		with instance_create(x,y,RocketRainBurst)
		{
			creator = other.id
			maxAmmo = 4;
			ammo = maxAmmo
			time = 2
			team = other.team
			alarm[0] = 1;
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
	}
}
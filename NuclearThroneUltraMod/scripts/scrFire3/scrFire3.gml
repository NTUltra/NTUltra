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
				image_xscale += 0.25;
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

		snd_play_fire(sndHeavyRevolver)
		snd_play(choose(sndWater1,sndWater2));
		repeat(2)
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
		BackCont.shake += 6
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
		direction = aimDirection+(random(8)-4)*other.accuracy;
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
	}
}
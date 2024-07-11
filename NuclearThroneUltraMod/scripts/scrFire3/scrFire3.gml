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
	}
}
/// @description main
if instance_exists(GenCont) || instance_exists(StartDaily)
	exit;
if ultra_got[43] && altUltra && hunterEye < hunterEyeMax
{
	hunterEye += 1.5+(1.5*skill_got[5]);
	if hunterEye >= hunterEyeMax
	{
		snd_play(choose(sndSpark1,sndSpark2));
		with instance_create(x,y,HunterSniperEyeReady) {
			if other.bskin == 1
				sprite_index = sprHunterSniperEyeReadyB
			else if other.bskin == 2
				sprite_index = sprHunterSniperEyeReadyC
			creator = other.id;	
		}
	}
}
if ultra_got[75] && speed == 0
{
	alarm[3] = max(alarm[3],1);
	meleeimmunity = max(1,meleeimmunity);
	if alarm[3] <= 1
	{
		if myShield > -1 && instance_exists(myShield)
		{
			with myShield
			{
				instance_destroy();
			}
		}
	}
}
if scrIsGamemode(29) || cheatyinfiniteammo || freeAmmoRound > 0//Infinite ammo
	alarm[2] = 2;
if unkillable
{
	alarm[3] = 2;
}
var is60fps = (UberCont.normalGameSpeed == 60);
if !instance_exists(LevCont) and visible = 1
{
	if roll = 0
	{
		var previousSpeed = max(1,speed);
		var acc = acceleration;
		if is60fps && (speed != 0)
			acc *= 0.5;
		if KeyCont.key_west[p] = 2 or KeyCont.key_west[p] = 1
		{
			hspeed -= acc
		}
		if KeyCont.key_east[p] = 2 or KeyCont.key_east[p] = 1
		{
			hspeed += acc
		}
		if KeyCont.key_nort[p] = 2 or KeyCont.key_nort[p] = 1
		{
			vspeed -= acc
		}
		if KeyCont.key_sout[p] = 2 or KeyCont.key_sout[p] = 1
		{
			vspeed += acc
		}
		if ultra_got[20] && altUltra
		{
			var delta = 1;
			var checkDelta = 4;
			if (is60fps)
			{
				delta = 0.5;
				checkDelta = 3;
			}
			var moving = false;
			var extraacc = 1.5 * delta;
			var braking = 0.4/delta;
			if speed > 5.1
				speed -= 3.5 * delta;
			var multi = 0;//Diagonal movement is faster acceleration otherwise
			if KeyCont.key_west[p] = 2 or KeyCont.key_west[p] = 1
			{
				if hspeed > 0
					hspeed *= braking;
				hspeed -= extraacc
				multi += extraacc;
				moving = true;
			}
			if KeyCont.key_east[p] = 2 or KeyCont.key_east[p] = 1
			{
				if hspeed < 0
					hspeed *= braking;
				hspeed += extraacc
				multi += extraacc;
				moving = true;
			}
			if KeyCont.key_nort[p] = 2 or KeyCont.key_nort[p] = 1
			{
				if vspeed > 0
					vspeed *= braking;
				vspeed -= extraacc
				multi += extraacc;
				moving = true;
			}
			if KeyCont.key_sout[p] = 2 or KeyCont.key_sout[p] = 1
			{
				if vspeed < 0
					vspeed *= braking;
				vspeed += extraacc
				multi += extraacc;
				moving = true;
			}
			speed -= max(0,multi-extraacc);
			if !moving
			{
				speed *= braking;
			}
			var msk = mask_index;
			if (abs(speed - previousSpeed) > checkDelta && !instance_exists(RocketSlash) && !place_meeting(x+hspeed,y+vspeed,WallHitMe))
			{
				snd_play(sndGhettoBlast);
				with instance_create(x+lengthdir_x(16,direction),y+lengthdir_y(16,direction),PlantSonicBoom)
				{
					motion_add(other.direction+180,other.speed+3)
					image_angle = direction
					team = other.team
				}
				with instance_create(x,y,PlantSonicBoom)
				{
					sprite_index = sprSpinSlash;
					mask_index = mskSpinSlash;
					image_angle = direction
					team = other.team
				}
				with instance_create(x+lengthdir_x(16,direction+180),y+lengthdir_y(16,direction+180),PlantSonicBoom)
				{
					motion_add(other.direction,other.speed+3)
					image_angle = direction
					team = other.team
				}
			}
			mask_index = msk;
			if speed > maxSpeed
			{
				if !instance_exists(PlantCharge)
				{
					snd_play(sndSheepLoopStart);
					instance_create(x,y,PlantCharge);	
				}
			}
		}

	
	if speed = 0
	{if sprite_index != spr_hurt
	sprite_index = spr_idle}
	else
	{if sprite_index != spr_hurt
	sprite_index = spr_walk}
	if sprite_index = spr_hurt
	{	
		if UberCont.normalGameSpeed == 60
			hurtTime += 0.5;
		else
			hurtTime++;
		if (image_index > 2 && hurtTime > hurtDuration)
		{
			sprite_index = spr_idle
			hurtTime = 0;
		}
	}
	if meleeimmunity > 0
	{
		if UberCont.normalGameSpeed == 60
			meleeimmunity -= 0.5;
		else
			meleeimmunity--;
	}
	if UberCont.mouse__x < x
		right = -1
	else if UberCont.mouse__x > x
		right = 1

	if UberCont.mouse__y < y
	back = 1
	else if UberCont.mouse__y > y
	back = -1

		scrPowers();
	}
	else
	{
		//rolling
		speed = 6.3*max(1,(skill_got[2]*1.3))//the rolling speed code is far below
		if UberCont.normalGameSpeed == 60
			angle += 25*right*max(1,(skill_got[2]*1.3))
		else
			angle += 50*right*max(1,(skill_got[2]*1.3))

		if speed = 0
		{if sprite_index != spr_hurt
		sprite_index = spr_idle}
		else
		{if sprite_index != spr_hurt
		sprite_index = spr_walk}
		if sprite_index = spr_hurt
		{
			if image_index > 2
			{
				sprite_index = spr_idle;
				canAnimateDuringImmune = -1;
			}
		}

		if skill_got[5] = 1
		{
			var spd = speed;
			speed = 0;
			if KeyCont.key_west[p] = 2 or KeyCont.key_west[p] = 1
			hspeed -= 3
			if KeyCont.key_east[p] = 2 or KeyCont.key_east[p] = 1
			hspeed += 3
			if KeyCont.key_nort[p] = 2 or KeyCont.key_nort[p] = 1
			vspeed -= 3
			if KeyCont.key_sout[p] = 2 or KeyCont.key_sout[p] = 1
			vspeed += 3
			instance_create(x,y,FishBoost)
			speed += spd;
			/*if KeyCont.key_west[p] = 2 or KeyCont.key_west[p] = 1
			hspeed -= 3
			if KeyCont.key_east[p] = 2 or KeyCont.key_east[p] = 1
			hspeed += 3
			if KeyCont.key_nort[p] = 2 or KeyCont.key_nort[p] = 1
			vspeed -= 3
			if KeyCont.key_sout[p] = 2 or KeyCont.key_sout[p] = 1
			vspeed += 3*/
			if (angle > 360 or -angle > 360) 
			{
				if !(KeyCont.key_spec[p] = 1 or KeyCont.key_spec[p] = 2)
				{
					angle = 0
					roll = 0
					audio_stop_sound(sndFishRollUpgLoop);
				}
			}
		}
		else{
		instance_create(x+random(6)-3,y+random(6),Dust)
			if angle > 360 or -angle > 360
			{
				angle = 0
				roll = 0
			}
		}
	}
	if alarm[4]>0//boiling veins
	{
	}
	//Cheats
	var thing;
	if UberCont.public==0 && !keyboard_check(vk_control) && !keyboard_check(vk_shift){
	//hacks
		if keyboard_check_pressed(ord("V")) {
			isPermanent = true;
			var dangle = random(1)*360;
			var f = instance_nearest(x + dcos(dangle)*128,y + dsin(dangle)*64,Floor);
			//screen_save("explain"+string(scrn)+".png");
			isPermanent = true;
			Sleep(100);
			//scrn++;
			
			instance_create(f.x + 16,f.y + 16,BigWallBreak)
			instance_create(f.x + 16,f.y + 16,SquareBat)
			instance_create(f.x + 16,f.y + 16,InvertedSquareBat)

			thing = instance_create(f.x + 16,f.y + 16,PopupText);
			thing.mytext = "Gorilla";
		}
		if keyboard_check_pressed(ord("C")) {
			var dangle = random(1)*360;
			var f = instance_nearest(x + dcos(dangle)*128,y + dsin(dangle)*64,Floor);
		    curse = !curse;
			thing = instance_create(f.x + 16,f.y + 16,PopupText);
			thing.mytext = "CURSE TOGGLE";
		}
		if keyboard_check_pressed(ord("B")) {
			instance_create(x+16,y,InvertedExploGuardianBullet);
			wepmod1 ++;
			wepmod2 ++;
			wepmod3 ++;
			wepmod4 ++;
		}
		if keyboard_check_pressed(ord("N")) {
			wepmod1 --;
			wepmod2 --;
			wepmod3 --;
			wepmod4 --;
		}
		if keyboard_check_pressed(vk_numpad1) {
			repeat(3) {
				var dangle = random(1)*360;
				var f = instance_nearest(x + dcos(dangle)*64,y + dsin(dangle)*64,Floor);
			    instance_create(f.x + 16,f.y + 16,CursedSpider);
				thing = instance_create(f.x + 16,f.y + 16,PopupText);
				thing.mytext = "GRAPES";
			}
		}
		if keyboard_check_pressed(vk_numpad2) {
			var dangle = random(1)*360;
			var f = instance_nearest(x + dcos(dangle)*64,y + dsin(dangle)*64,Floor);
			instance_create(f.x + 16,f.y + 16,AssassinBoss);
			thing = instance_create(f.x + 16,f.y + 16,PopupText);
			thing.mytext = "BIG ASS";
		}
		if keyboard_check_pressed(vk_numpad3) {
			var dangle = random(1)*360;
			var f = instance_nearest(x + dcos(dangle)*64,y + dsin(dangle)*64,Floor);
			instance_create(f.x + 16,f.y + 16,Thief);
			thing = instance_create(f.x + 16,f.y + 16,PopupText);
			thing.mytext = "Thief";
		}
		if keyboard_check_pressed(vk_numpad4) {
			var dangle = random(1)*360;
			var f = instance_nearest(x + dcos(dangle)*64,y + dsin(dangle)*64,Floor);
			instance_create(f.x + 16,f.y + 16,JungleFly);
			thing = instance_create(f.x + 16,f.y + 16,PopupText);
			thing.mytext = "FLY";
		}
		if keyboard_check_pressed(vk_numpad5) {
			var dangle = random(1)*360;
			var f = instance_nearest(x + dcos(dangle)*64,y + dsin(dangle)*64,Floor);
			instance_create(f.x + 16,f.y + 16,PalaceGuardian);
			thing = instance_create(f.x + 16,f.y + 16,PopupText);
			thing.mytext = "GUARDIAN";
		}
		if keyboard_check_pressed(vk_numpad6) {
			var dangle = random(1)*360;
			var f = instance_nearest(x + dcos(dangle)*64,y + dsin(dangle)*64,Floor);
			instance_create(f.x + 16,f.y + 16,ExploGuardian);
			thing = instance_create(f.x + 16,f.y + 16,PopupText);
			thing.mytext = "EXPLODER";
		}
		if keyboard_check_pressed(vk_numpad7) {
			repeat(2) {
				var dangle = random(1)*360;
				var f = instance_nearest(x + dcos(dangle)*56,y + dsin(dangle)*56,Floor);
				instance_create(f.x + 16,f.y + 16,Bandit);
				var dangle = random(1)*360;
				var f = instance_nearest(x + dcos(dangle)*64,y + dsin(dangle)*64,Floor);
				instance_create(f.x + 16,f.y + 16,SavannaBandit);
				var dangle = random(1)*360;
				var f = instance_nearest(x + dcos(dangle)*72,y + dsin(dangle)*72,Floor);
				instance_create(f.x + 16,f.y + 16,EraserBandit);
				var dangle = random(1)*360;
				var f = instance_nearest(x + dcos(dangle)*80,y + dsin(dangle)*80,Floor);
				instance_create(f.x + 16,f.y + 16,LaserBandit);
				var dangle = random(1)*360;
				var f = instance_nearest(x + dcos(dangle)*88,y + dsin(dangle)*88,Floor);
				instance_create(f.x + 16,f.y + 16,JungleBandit);
				var dangle = random(1)*360;
				var f = instance_nearest(x + dcos(dangle)*96,y + dsin(dangle)*96,Floor);
				instance_create(f.x + 16,f.y + 16,BanditSquare);
			}
			thing = instance_create(x,y,PopupText);
			thing.mytext = "BANDITLAND PROBABLY";
		}
		if keyboard_check_pressed(vk_numpad8) {
			var dangle = random(1)*360;
			var f = instance_nearest(x + dcos(dangle)*64,y + dsin(dangle)*64,Floor);
			instance_create(f.x + 16,f.y + 16,IDPDSpawn);
			thing = instance_create(f.x + 16,f.y + 16,PopupText);
			thing.mytext = "POPO";
		}
		if keyboard_check_pressed(vk_numpad9) {
			var dangle = random(1)*360;
			var f = instance_nearest(x + dcos(dangle)*64,y + dsin(dangle)*64,Floor);
			with TopCont
			{
				if darkness = 1
					darkness = 0;
				else
					darkness = 1;
			}
			thing = instance_create(f.x + 16,f.y + 16,PopupText);
			thing.mytext = "DARKNESS TOGGLE";
		}
		if keyboard_check_pressed(vk_numpad0) {
			if unkillable {
				thing = instance_create(x,y,PopupText)
				thing.mytext = "NOT UNKILLABLE!";
				unkillable = false;
				alarm[3] = 1;
				snd_play(sndStrongSpiritLost)
			} else {
				thing = instance_create(x,y,PopupText)
				thing.mytext = "UNKILLABLE!";
				unkillable = true;
				alarm[3] = 2;
				snd_play(sndStrongSpiritGain)
			}
		}
		if keyboard_check_pressed(ord("R")) {
		    thing = instance_create(x,y,PopupText)
			thing.mytext = "RADS!";
			rad = GetPlayerMaxRad()*2;
		}
		if keyboard_check_pressed(ord("T")) {
			if instance_exists(Portal) && scrIsGamemode(25)
			{
				subarea++;
				hard += 1.25;
				thing = instance_create(x,y,PopupText)
				thing.mytext = "SUBAREA++! "+string(subarea);
				if scrIsGamemode(42)
				{
					if subarea >= array_length(UberCont.customSurvivalArena)*(loops + 1)
					{
						thing = instance_create(x,y,PopupText)
						thing.mytext = "LOOP";
						loops++;
					}
				}
			}
			else if instance_exists(Portal)
			{
				scrNextLevel();
				instance_create(Player.x,Player.y,Portal);
				thing = instance_create(x,y,PopupText)
				thing.mytext = string(area) + "-" + string(subarea);
			}
			else
			{
				instance_create(Player.x,Player.y,Portal);
				thing = instance_create(x,y,PopupText)
				thing.mytext = "PORTAL!#" + string(area) + "-" + string(subarea);
			}
		}
		if (keyboard_check_pressed(ord("1")))
		    {
			    if(wep < 1) {
					wep = maxwep;
				} else {
					wep = wep - 1;
				}
				if bwep == 0
					bwep = wep;
				reload = 0;
				var type = wep_type[wep];
				ammo[type] = typ_amax[type];
				scrWeaponHold();
				thing = instance_create(x,y,PopupText)
				thing.mytext = "WEAPON "+string(wep)+"#"+string(wep_name[wep])+"!";
		    }
		if (keyboard_check_pressed(ord("2")))
		    {
			    if(wep == maxwep) {
					wep = 0;
				} else {
					wep = wep + 1;
				}
				if bwep == 0
					bwep = wep;
				reload = 0;
				var type = wep_type[wep];
				ammo[type] = typ_amax[type];
				scrWeaponHold();
				thing = instance_create(x,y,PopupText)
				thing.mytext = "WEAPON "+string(wep)+"#"+string(wep_name[wep])+"!";
		    }
		if (keyboard_check_pressed(ord("3")))
		    {
			    if(wep - 50 < 0) {
					wep = maxwep + wep - 50;
				} else {
					wep = wep - 50;
				}
				if bwep == 0
					bwep = wep;
				reload = 0;
				var type = wep_type[wep];
				ammo[type] = typ_amax[type];
				scrWeaponHold();
				thing = instance_create(x,y,PopupText)
				thing.mytext = "WEAPON "+string(wep)+"#"+string(wep_name[wep])+"!";
		    }
		if (keyboard_check_pressed(ord("4")))
		    {
			    if(wep + 50 > maxwep ) {
					wep = 50 + wep - maxwep;
				} else {
					wep = wep + 50;
				}
				if bwep == 0
					bwep = wep;
				reload = 0;
				var type = wep_type[wep];
				ammo[type] = typ_amax[type];
				scrWeaponHold();
				thing = instance_create(x,y,PopupText)
				thing.mytext = "WEAPON "+string(wep)+"#"+string(wep_name[wep])+"!";
		    }
		if (keyboard_check_pressed(ord("5")))
		    {
				ultramod --;
				ultramod = max(0,ultramod);
				thing = instance_create(x,y,PopupText)
				thing.mytext = "Ultramod -- "+string(ultramod);
		    }
		if (keyboard_check_pressed(ord("6")))
		    {
				ultramod ++;
				thing = instance_create(x,y,PopupText)
				thing.mytext = "Ultramod ++ "+string(ultramod);
		    }
		if (keyboard_check_pressed(ord("F")))
		    {
		    repeat(3)
		    instance_create(Player.x,Player.y,AmmoPickup);
			thing = instance_create(x,y,PopupText)
			thing.mytext = "AMMO!";
		    }
		if (keyboard_check_pressed(vk_tab))
		    {
		    repeat(3)
		    instance_create(Player.x,Player.y,HPPickup);
			thing = instance_create(x,y,PopupText)
			thing.mytext = "HEALTH!";
			
			instance_create(x,y,HealthChest);
			thing = instance_create(x,y,PopupText);
			thing.mytext = "MORE HEALTH!";
		    }
		if (keyboard_check_pressed(ord("H")))
		    {
			
			var dangle = random(1)*360;
			/*
		    
			*/
			hard++;
			thing = instance_create(x + dcos(dangle)*24,y + dsin(dangle)*24,PopupText);
			thing.mytext = "INCREASE TIER/DIFFICULTY! "+string(hard);
		    }
		if (keyboard_check_pressed(ord("Y")))
		    {
		    wepmod1++
			thing = instance_create(x,y,PopupText)
			thing.mytext = "WEAPON MOD "+string(wepmod1)+"!";
		    }
		if (keyboard_check_pressed(ord("L")))
		    {
			var dangle = random(1)*360;
			loops++
			thing = instance_create(x + dcos(dangle)*32,y + dsin(dangle)*32,PopupText);
			thing.mytext = "LOOPS++! "+string(loops);
		    }
		if (keyboard_check_pressed(ord("G")))
		{
			var dangle = random(1)*360;
			thing = instance_create(x + dcos(dangle)*32,y + dsin(dangle)*32,PopupText);
			thing.mytext = "WARPZONE";
			scrTurnIntoPortalArea();
		}
		if (keyboard_check_pressed(ord("J")))
		{
			var dangle = random(1)*360;
			thing = instance_create(x + dcos(dangle)*32,y + dsin(dangle)*32,PopupText);
			thing.mytext = "WEP";
			instance_create(x,y,WeaponChest);
			room_speed = UberCont.normalGameSpeed;
		}
		if (keyboard_check_pressed(ord("I")))
		    {
			var dangle = random(1)*360;
		    invertedportalcounter=1;
		    invertedportaldelay=5+random(30);
			thing = instance_create(x + dcos(dangle)*32,y + dsin(dangle)*32,PopupText);
			thing.mytext = "INVERTED PORTAL!";
		    }
		if (keyboard_check_pressed(ord("O")))
		    {
			var dangle = random(1)*360;
		    invertedportalcounter=1;
		    invertedportaldelay=5+random(30);
			thing = instance_create(x + dcos(dangle)*32,y + dsin(dangle)*32,You);
			thing.mytext = "YOU!?";
		    }
		if (keyboard_check_pressed(vk_delete))
		    {
			repeat(15) {
				var dangle = random(1)*360;
				var explosiondist = 40 + random(50);
				instance_create(x + dcos(dangle)*explosiondist,y + dsin(dangle)*explosiondist,SmallExplosion);
			}
			repeat(10) {
				var dangle = random(1)*360;
				var explosiondist = 64 + random(64);
				instance_create(x + dcos(dangle)*explosiondist,y + dsin(dangle)*explosiondist,Explosion);
				thing = instance_create(x + dcos(dangle)*explosiondist,y + dsin(dangle)*explosiondist,PopupText);
				thing.mytext = "EXPLOSIONS!";
			}
			repeat(15) {
				var dangle = random(1)*360;
				var explosiondist = 64 + random(80);
				instance_create(x + dcos(dangle)*explosiondist,y + dsin(dangle)*explosiondist,Explosion);
			}
			repeat(10) {
				var dangle = random(1)*360;
				var explosiondist = 80 + random(80);
				instance_create(x + dcos(dangle)*explosiondist,y + dsin(dangle)*explosiondist,SmallExplosion);
			}
			snd_play(sndExplosionXL,0.05);
			snd_play(sndExplosionL,0.05);
			snd_play(sndExplosion,0.05);
			snd_play(sndExplosionS,0.05);
		}
	//*/    
	}

	if bleed > 0 and my_health > 0
	{
		audio_stop_sound(sndChickenHeadlessLoop)
		snd_play(sndChickenRegenHead)
		bleed = 0
		if bskin=2
		{
			spr_idle = sprMutant9CIdle
			spr_hurt = sprMutant9CHurt
			spr_walk = sprMutant9CWalk
		}
		else if bskin=1
		{
			spr_idle = sprMutant9BIdle
			spr_hurt = sprMutant9BHurt
			spr_walk = sprMutant9BWalk
			if altUltra && ultra_got[35] {
				spr_idle = sprMutant9EIdle
				spr_hurt = sprMutant9EHurt
				spr_walk = sprMutant9EWalk
			}
		}
		else if bskin == 3
		{
			spr_idle = sprMutant9DIdle
			spr_hurt = sprMutant9DHurt
			spr_walk = sprMutant9DWalk
		}
		else if bskin == 4
		{
			spr_idle = sprMutant9EIdle
			spr_hurt = sprMutant9EHurt
			spr_walk = sprMutant9EWalk
		}
		else
		{
			spr_idle = sprMutant9Idle
			spr_hurt = sprMutant9Hurt
			spr_walk = sprMutant9Walk
			if altUltra && ultra_got[35] {
				spr_idle = sprMutant9DIdle
				spr_hurt = sprMutant9DHurt
				spr_walk = sprMutant9DWalk
			}
		}
		with myCorpse {
			//if sprite_index == sprMutant9HeadIdle || sprite_index == sprMutant9BHeadIdle || sprite_index == sprMutant9DHeadIdle || sprite_index == sprMutant9EHeadIdle
			instance_destroy();
		}
	}

	
	//SHOOTING!! AWW YEAH

	if !(instance_exists(CrystalShield))
	{
		IsShielding=false;
	}
	else if (CrystalShield.sprite_index!=CrystalShield.spr_disappear)
	{
		IsShielding=true;
	}
	else{
		IsShielding=false;
	}
	if( (!(IsShielding)||(ultra_got[7]==1))){
	if (race == 7 || (altUltra && ultra_got[55]) || (altUltra && ultra_got[23] && scrMeleeWeapons(wep))) && wep != 0 {
		//Roids always auto fire
		wep_auto[wep] = 1
		if race == 7 && bwep != 0
			wep_auto[bwep] = 1
	}


	if (KeyCont.key_fire[p] = 1 or keyfire = 1) and wep_auto[wep] = 0 and ((wep_type[wep] = 0 or wep_type[wep] = 1) or can_shoot == 1) and reload < 8//15 INPUT BUFFERING
		clicked = 1

	if (KeyCont.key_fire[p] = 1 or keyfire = 1)
	{
		if  ammo[wep_type[wep]] < wep_cost[wep] && wep_type[wep] != 0  && alarm[2] < 1//alarm = Fish Ultra B
		{
			/*
		if wep == 29|| wep==60 || wep==61 || wep==83 || wep==84 || wep==132//|| wep==109//ALL THE BLOOD WEAPONS!
		{//glove is not included because that shits just to buggy
		//BLOOD LAUNCHER,Pistol,Shotgun,rifle,triple,bulletshotty
		ammo[wep_type[wep]] += wep_cost[wep]
		sprite_index = spr_hurt
		image_index = 0
		my_health -= 1
		snd_play(snd_hurt, hurt_pitch_variation)
		Sleep(40)
		alarm[3]=0;//remove immunity from bloodglove
		}
		else*/
			scrEmpty()
		}
		rad = max(rad,0);
		if rad-wep_rad[wep] < 0 && alarm[2] < 1//alarm = Fish Ultra B
		{
			//not enough radiation
			clicked = 0
			scrEmptyRad();
			other.wkick = -2
		}
	}
	fired = false;
	if can_shoot == 1 and (flying == 0 || instance_exists(ThroneIISpiral)) and ((ammo[wep_type[wep]] >= wep_cost[wep] || wep_type[wep] == 0) and rad>=wep_rad[wep] || alarm[2]>0)//alarm = Fish Ultra B
	{
		if wep_auto[wep] = 0 and clicked = 1
		{

			if ultra_got[44] == 1 && instance_exists(Marker)
			{
				scrCrackShotFire();
			}
			else
			{
				with YungCuzDupe
					event_user(0);
				scrFire();
			}
    
		clicked = 0
		}
		if wep_auto[wep] = 1 and (KeyCont.key_fire[p] = 1 or KeyCont.key_fire[p] = 2 or keyfire > 0)
		{
		    
			if ultra_got[44] == 1 && instance_exists(Marker)
			{
				scrCrackShotFire();
			}
			else
			{
				with YungCuzDupe
					event_user(0);
				scrFire();
			}
		}
	}
}

	


	//crown of hatred
	if scrIsCrown(6)
	{
		if UberCont.normalGameSpeed == 60
			decay -= 0.5;
		else
			decay -= 1
	
		if decay <= 0 && alarm[3]<1
		{
			if my_health > 1
			{
				Sleep(30)
				my_health -= 1;
				exception = true;


				sprite_index = spr_hurt
				image_index = 0
				snd_play(snd_hurt, hurt_pitch_variation)

				scrRaddrop(20)//used to be 12

				decay = 300
			} else if ultra_got[62] && altUltra && armour > 1//Living armour
			{
				Sleep(30)
				armour -= 1;
				exception = true;


				sprite_index = spr_hurt
				image_index = 0
				snd_play(snd_hurt, hurt_pitch_variation)

				scrRaddrop(20)//used to be 12

				decay = 300
			}
		}
	}
}//End of gencont

//SWAP WEPS
if KeyCont.key_swap[p] = 1 and bwep != 0
{
	instance_create(x,y,WepSwap)
	scrSwapWeps()
	if ultra_got[68] && altUltra {
		snd_play(sndMorphStart);
		instance_create(UberCont.mouse__x,UberCont.mouse__y,Morph);
	}
	if ultra_got[27]{
		if altUltra
		{
			if !instance_exists(RoidsSuperSwap) && bwep != 0
			{
				snd_play(sndPunchSwap,0.1,true);
				var aim = point_direction(x,y,mouse_x,mouse_y);
				with instance_create(x+lengthdir_x(13+(skill_got[13]*3),aim+180),y+lengthdir_y(13+(skill_got[13]*3),aim+180),RoidsSuperSwap)
				{
					wepSpr = other.wep_sprt[other.bwep];
					motion_add(aim,1+(other.skill_got[13]*2))
					image_angle = aim;
					team = other.team
					angle = image_angle-(60 * other.flipDir);
					rot = 25 * other.flipDir;
				}
				flipDir *= -1;
			}
		}
		else //ROIDS MIRROR HANDS
		{
			if reload < 0
			{
				var pci = reload/wep_load[wep];
				pci = 1+pci;
				pci = pci-floor(pci);//Percentage of load that would be the reload
				reload -= reload*pci;
			}
			else
				reload *= 0.4;
			if breload < 0
			{
				var pci = breload/wep_load[bwep];
				pci = 1+pci;
				pci = pci-floor(pci);//Percentage of load that would be the reload
				breload -= breload*pci;
			}
			else
				breload *= 0.4;
		}
	}
	snd_play(wep_swap[wep])
	if (curse)
	{
		snd_play(sndSwapCursed);
	}
	if (scrCheckGold(wep_name[wep]))
	{
		snd_play(sndSwapGold);	
	}
	if ultra_got[27] && !altUltra
	{
	bwepangle=wepangle;
	}
}

var mr = GetPlayerMaxRad()
if (rad > mr)
{
	if level < maxlevel || scrIsGamemode(22)
	{
		//rad -= level*60
		rad -= mr;
		level += 1

		if level==7 && loops < 1 && race == 25 && (area < 4 || area == 105 || area == 110 || area == 106 || area == 103 || area == 102 || area == 101 || area == 10)
			scrUnlockBSkin(25,"FOR REACHING LEVEL 7#BEFORE THE LABS#AS MUTATION DOCTOR",0);

		repeat(level-6)
		instance_create(x,y,IDPDSpawn)
		/*
		if level == 20
		{
			scrUnlockGameMode(39,"FOR REACHING LEVEL 20",22);
		}*/
		if level == 10 && !reachedUltra
		{
			reachedUltra = true;
			snd_play_2d(sndExplosionXXL);
			instance_create(x,y,LevelUpUltra);
			BackCont.shake += 20;
			with instance_create(x,y,Flash)
			{
				alarm[1] = 6;
				alarm[0] = 2;
			}
			with enemy
			{
				my_health -= 10;
				if !audio_is_playing(snd_hurt)
					snd_play(snd_hurt,hurt_pitch_variation,true);
			}
		}
		else
		{
			snd_play_2d(sndLevelUp)
		}
		if level != 10
		{
			with instance_create(x,y,PopupText)
			{
				mytext = "LEVEL "+string(other.level)+"!"
			}
			instance_create(x,y,LevelUp);
			UberCont.hasLeveledUp = true;
		}
		skillpoints += 1
		if level > 40
			skillsChosen --;
	}
	else
	{
		rad = mr;
	}
}

//reload stuff per frame
//Do not halve any reload happening outside of this
prev60reload = reload;
prev60breload = breload;
prev60creload = creload;
var lowa = 0;
var lowb = 0;
var lowc = 0;
if skill_got[35]
{
	lowa = wep_load[wep]*-2;
	lowb = wep_load[bwep]*-2;
	lowc = wep_load[cwep]*-2;
}
//Can't reload while in loading shit, will automatically reload
if (!instance_exists(LevCont))
{
	if reload > lowa
	{
		reload -= 1
		if curse {
			reload -= 0.05;	
		}
		if ultra_got[29] && !altUltra
		{
			var t = wep_area[wep];
			if t < 1
				t = 19;
			t *= 0.01;
			reload -= t;
			
		}
		if race = 6
		{//YV fire rate boost
			reload -= 0.25//0.25
		}
		if ultra_got[21]//YV ULTRA A
		{
			reload -=0.4;
		}
		if ultra_got[23] && altUltra
		{
			if scrMeleeWeapons(wep)
			{
				reload -=0.44;
			}
		}
		//Weaponsmith one with the gun fire rate

		    if ultra_got[67]
		    {
		        //Ultra c one with the gun
		        if wep_type[wep] != 0 && !scrMeleeWeapons(wep)//if wep_type[wep]==0 // You are holding a melee weapon
		        {
		        reload -= 0.4;
		        }
		    }

		if race=25
		{
			accuracy=standartAccuracy;
		}
	
		if race=9 && skill_got[5]{
			if KeyCont.key_spec[p] = 1 or KeyCont.key_spec[p] = 2
			{
				reload -= 0.25; // 1 - (30 / room_speed)
			}
		}


		if ultra_got[102]//Humphry Ultra B Rapid facial hair growth
		{
			reload -= humphrySkill*0.001//0.0062//0.01//0.009 when cap is 100
		}
		if (ultra_got[63] && armour > 0)//VIKING COLD HEART
		{
			reload -= 0.2;
		}
	
		scr60fpsReload();
		if reload <= 0 && !can_shoot
		{
			can_shoot = 1
			with CloneShooter
				instance_destroy();
		
			if ammo[wep_type[wep]] < wep_cost[wep] and wep_type[wep] != 0
				scrEmpty()

			wepflip = -wepflip

			if wep_type[wep] = 0
				snd_play(sndMeleeFlip,0,true)
			else if wep_type[wep] = 2
			{
				repeat(wep_cost[wep])
				{
					with instance_create(x,y,Shell)
					{sprite_index = sprShotShell
					motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+other.right*100+random(40)-20,2+random(2))}
				}

				wkick = -1
				if wep = 8
				wkick = -2
				snd_play(sndShotReload,0,true)
			}
			else if wep_type[wep] = 3
				snd_play(sndCrossReload,0,true)
			else if wep_type[wep] = 4
				snd_play(sndNadeReload,0,true,false,2,false,false,0.6)
			else if string_copy(wep_name[wep],0,6) = "PLASMA"
			{
				if skill_got[17] = 1
				snd_play(sndPlasmaReloadUpg,0,true)
				else
				snd_play(sndPlasmaReload,0,true)
			}
			scrFlexibleElbowReload(wep);
		}
	}
	/*
	if skill_got[34]//FLEXIBLE ELBOWS
	{
		if (breload <= 0 || bwep == 0)
		{
			reload -= 0.29;
		}
		if (ultra_got[31] && (creload <= 0 || cwep == 0))
		{
			reload -= 0.28;
		}
	}
	*/
	scr60fpsReload();
	if (reload > lowa || breload > lowb || creload > lowc)
	{
		if scrIsHardMode()//HARD MODE
		{
			reload -= 0.1;
			breload -= 0.1;
			creload -= 0.1;
		}
		if altUltra && ultra_got[33]//Phoenix
		{
			reload -= phoenixrevives*0.1;
			breload -= phoenixrevives*0.05;
			creload -= phoenixrevives*0.05;
		}
		if ultra_got[7] && speed < 2//BUNKER
		{
			reload -= (0.45-speed*0.05);
			breload -= 0.1;
			creload -= 0.1;
		}
		if race == 7
			breload -= 1
		scr60fpsReload();
		if breload <= 0 && !bcan_shoot
		{
			bcan_shoot = 1

			if ultra_got[27] && !altUltra{
				var roidsWepangle;//damage control
				roidsWepangle=bwepangle;//steroids melee shit
				scrSwapWeps();

			}
			if (ultra_got[27]=0 || altUltra) && wep_type[bwep]=0//mirror hands the weird melee bug fix yo!
				bwepflip = -bwepflip


			if ammo[wep_type[bwep]] < wep_cost[bwep] and wep_type[bwep] != 0
				scrEmptyB()

			if wep_type[bwep] = 0 //&& ultra_got[27]=0//mirror hands melee bug fix part 2
				snd_play(sndMeleeFlip,0,true)
			if wep_type[bwep] = 3
				snd_play(sndCrossReload,0,true)
			if wep_type[wep] = 4
				snd_play(sndNadeReload,0,true,false,2,false,false,0.6)
			if wep_type[bwep] = 2
			{
			repeat(wep_cost[bwep])
			{with instance_create(x,y,Shell)
			{sprite_index = sprShotShell
			motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+other.right*100+random(40)-20,2+random(2))}}
			if ultra_got[27] && !altUltra
			{
			wkick = -1
			if wep = 8
			wkick = -2
			}
			else{
			bwkick = -1
			if bwep = 8
			bwkick = -2}
			snd_play(sndShotReload,0,true)
			}
			if ultra_got[27] && !altUltra{
				scrSwapWeps();
				bwepangle=roidsWepangle;//what a mess
			}
			scrFlexibleElbowReload(bwep);
		}
	
		if skill_got[22]
		{
			//nerves of steel g  STRESS
			var reduction = 0;
			if ultra_got[62] && altUltra//Living armour 
				reduction = (1-(armour/maxarmour))*0.68
			else if race == 25
			{
				reduction = (1-(my_health/maxhealth))*0.635
			}
			else
			{
				reduction = (1-(my_health/maxhealth))*0.68//*1//0.35 the original has 80% boost
			}
			if scrIsGamemode(24)//SHARP STRESS GAMEMODE
				reduction *= level;
			reduction = max(reduction,0);
			reload -= reduction
			breload -= reduction*0.5;
			creload -= reduction*0.5;
		}
		if skill_got[34] {
			reload -= 0.1;
			breload -= 0.1;
			creload -= 0.1;
			if race == 25
			{
				reload -= 0.035;
				breload -= 0.035;
				creload -= 0.035;
			}
		}
		if bskin == 2 && ultra_got[4]//FISH CAN GUN secret ultra
		{
			var t = wep_type[wep];
			var m = 1.2;
			var at = (ammo[t]/typ_amax[t])*m;
			if t != 0
				reload -= at;
			m = 0.5;
			t = wep_type[bwep];
			if t != 0
				at = ammo[t]/typ_amax[t]*m;
			breload -= at;
			t = wep_type[cwep];
			at = ammo[t]/typ_amax[t]*m;
			if t != 0
				creload -= at;
		
		}
		if ultra_got[24]// YV ultra D
		{
			breload -= 0.6325;
		}
		if ultra_got[21]//YV ULTRA A
		{
			breload -=0.1;//Small bonus
		}
		if skill_got[28] = 1
		{
			//rage
			var rageAccuracy;
			var reduction = rage*0.002;//With 500 max this caps at 100% reload speed
			reload -= reduction
			breload -= reduction*0.4;
			creload -= reduction*0.4;

			rageAccuracy = rage*0.0012//with 500 max this caps at 60%
			accuracy=standartAccuracy+rageAccuracy;//standartAccuracy will be changed by eagle eyes so this scales with that.
		}
		/*
		if skill_got[34]//FLEXIBLE ELBOWS
		{
			if race == 25
			{
				breload -= 0.25;
				creload -= 0.25;
			}
			else
			{
				breload -= 0.2;
				creload -= 0.2;
			}
		}
		*/
		if skill_got[35]//PUFFY CHEEKS
		{
			breload -= 0.1;
			creload -= 0.1;
			var crm = 0.4;
			if race == 25//Doctor puffy cheeks
				crm = 0.3;
	
			var cr = (prevreload - reload)*crm;
			if cr > 0 && reload < 0
			{
				reload = min(reload+cr,0)
			}
			cr = (prevbreload - breload)*crm;
			if cr > 0 && breload < 0
			{
				breload = min(breload+cr,0)
			}
			cr = (prevcreload - creload)*crm;
			if cr > 0 && creload < 0
			{
				creload = min(creload+cr,0)
			}
		}
		scr60fpsReload();
	}
	//PUFFY CHEEKS
	if skill_got[35]
	{
		if reload <= lowa*0.5 && queueshot < 1
		{
			queueshot++;
			scrPlayReloadSound(wep);
			scrFlexibleElbowReload(wep);
		} else if reload <= lowa && queueshot < 2
		{
			queueshot++;
			scrPlayReloadSound(wep);
			scrFlexibleElbowReload(wep);
		}
	
		if breload <= lowb*0.5 && bqueueshot < 1
		{
			bqueueshot++;
			scrPlayReloadSound(bwep);
			scrFlexibleElbowReload(bwep);
		} else if breload <= lowb && bqueueshot < 2
		{
			bqueueshot++;
			scrPlayReloadSound(bwep);
			scrFlexibleElbowReload(bwep);
		}
	
		if creload <= lowc*0.5 && cqueueshot < 1
		{
			cqueueshot++;
			scrPlayReloadSound(cwep);
		} else if creload <= lowc && cqueueshot < 2
		{
			cqueueshot++;
			scrPlayReloadSound(cwep);
			scrFlexibleElbowReload(cwep);
		}
	}
	//Can we fire again? Two times in a frame? Or even more if you go negative reload
	if (!IsShielding || ultra_got[7]==1) 
	and wep_auto[wep] = 1 and (KeyCont.key_fire[p] = 1 or KeyCont.key_fire[p] = 2 or keyfire > 0)
	{
		while can_shoot == 1 and (flying == 0 || instance_exists(ThroneIISpiral)) and ((ammo[wep_type[wep]] >= wep_cost[wep] || wep_type[wep] == 0) and rad>=wep_rad[wep] || alarm[2]>0)//alarm = Fish Ultra B
		{
			if ultra_got[44] == 1 && instance_exists(Marker)
			{
				scrCrackShotFire();
			}
			else
			{
				with YungCuzDupe
					event_user(0);
				scrFire();
			}
			if reload > 0
				can_shoot = 0;
		}
	}
	if race = 7
	{
		//Steroids fire again?
		scrPowers();
	}
}
prevreload = reload;
prevbreload = breload;
prevcreload = creload;
if lstCash < cash
{
	lstCash += 1;
}
if lsthealth < my_health
{
drawlowhp = 20
lsthealth += 1
}
else if lstCash > cash
{
	lstCash -= 0.5;	
}
if sprite_index != spr_hurt and lsthealth > my_health// && alarm[3] < 1
{
	if drawlowhp < 30 and my_health <= 4 && !audio_is_playing(snd_lowh)
		snd_play_2d(snd_lowh, 0, true,false,10)
	drawlowhp = 30
	lsthealth -= 0.5

}
if  ultra_got[40]=1//Ultra D
{
	if lsthealth > my_health
	{
		if canrebel = 1
		{
			canrebel = 0
			//REBEL DEFENCE PASSIVE
			var ang = random(360)
			var angstep = 360/14;
			repeat(14)
			{
				with instance_create(x,y,AllyBullet)
				{
					motion_add(ang,6)
					image_angle = direction
					team = other.team
				}
				ang += angstep;
			}
		}
	}
	else
		canrebel = 1
}
var tempMaxSpeed = 0;
if ultra_got[108] && place_meeting(x,y,HandTrail)
{
	tempMaxSpeed += 1;
}
if wep == 531//Coffee makes you faster
{
	tempMaxSpeed += 1;
}
outOfCombat = (!instance_exists(enemy) || instance_number(enemy) <= instance_number(IDPDVan)) && !instance_exists(becomenemy)
if instance_exists(SurvivalWave)
{
	with SurvivalWave {
		if alarm[0] > 0
			other.outOfCombat = false;
	}
}
if outOfCombat && !scrIsGamemode(25)
	tempMaxSpeed += 1;
	
maxSpeed += tempMaxSpeed;
//CAP SPEED
var por = instance_place(x,y,Portal);
if !visible || (por != noone && por.alarm[1] < 1 && por.sprite_index != sprPortalSpawn) || instance_exists(SpiralCont)
{
	speed = 0;
}
else if race == 23 && ultra_got[92] == 0
{
	//speed = clamp(speed,maxSpeed*0.8,maxSpeed);
	if toxicamount > 0
		speed *= 0.3;
	else
		speed = clamp(speed,maxSpeed*0.8,maxSpeed);
}
else if speed > maxSpeed
	speed = maxSpeed
maxSpeed -= tempMaxSpeed;

if roll = 1
{
speed = 6.3*max(1,(skill_got[2]*1.3))//xtra feet rolling
	if mask_index == mskPickupThroughWall
	{
		var msk = mask_index;
		mask_index = mskPlayer;
		if place_meeting(x,y,WallHitMe)
		{
			x = xprevious;
			y = yprevious;
		}
		mask_index = msk;
		instance_create(x,y,Dust);
	}
}
if ultra_got[59] && altUltra
{
	var msk = mask_index;
	mask_index = mskBigWepPickup;
	var floors = ds_list_create();
	var al = instance_place_list(x,y,Floor,floors,false)
	for (var j = 0; j < al; j++) {
		with floors[| j]
		{
			var corrosion = instance_place(x,y,Corrosion);
			if corrosion == noone
			{
				if object_index == FloorExplo
				{
					instance_create(x,y,CorrosionSmall)
				}
				else
				{
					instance_create(x,y,Corrosion)
				}
			}
			else
			{
				with corrosion
				{
					alarm[2] = 1;
					alarm[0] = 60;
				}
			}
		}
	}
	ds_list_destroy(floors);
	mask_index = msk;
}
if (!outOfCombat && !skill_got[2] && race!=18 && race != 15 and !instance_exists(LevCont) and !instance_exists(FloorMaker))
{
	var ground = instance_position(x,y,Floor);
	if ground != noone
	{
		var gs = ground.sprite_index;
		//lava and frost
		var isCold = ultra_got[94];
		var isHot = ultra_got[95];
		//SNOW & ICE TEST
		if (gs == sprFloor5B || gs == sprFloor107B) // Ice
		{
			friction = 0.1
			//Maybe melt it?
		}
		else if gs == sprFloor4B || gs == sprFloor115B //Spider webs
			friction = 1.8;
		else
			friction = 0.45
		if (gs == sprFloor111B)
			speed+=1;
		
		if isCold
		{
			if ground.sprite_index == sprFloor7Explo
			{
				with ground
				{
					alarm[1] = 0;
					snd_play(choose(sndFrostShot1,sndFrostShot2),0.02)
					sprite_index = sprFloor7BExplo;
					var ang = random(360);
					var am = 3;
					var angstep = 360/am;
					repeat(am)
					{
						with instance_create(x + 8,y + 8,IceFlame)
						{
							motion_add(ang,random(2)+2)
							team = 2
							ang += angstep;
						}
					}
				}
			}
			else if ground.sprite_index == sprFloorLava {
				with ground {
					alarm[1] = 0;
					sprite_index = sprFloorLavaB;
					snd_play(choose(sndFrostShot1,sndFrostShot2),0.02)
					var ang = random(360);
					var am = 6;
					var angstep = 360/am;
					repeat(am)
					{
						with instance_create(x + 16,y + 16,IceFlame)
						{
							motion_add(ang,random(2)+3)
							team = 2
							ang += angstep;
						}
					}
				}
			}
		}
		if isHot
		{
			if ground.sprite_index == sprFloor108Explo
			{
				with ground
				{
					alarm[1] = 0;
					snd_play(sndFlareExplode,0.02)
					sprite_index = sprFloor108BExplo;
					var ang = random(360);
					var am = 3;
					var angstep = 360/am;
					repeat(am)
					{
						with instance_create(x + 8,y + 8,Flame)
						{
							motion_add(ang,random(2)+2)
							team = 2
							ang += angstep;
						}
					}
				}
			}
			else if ground.sprite_index == sprInvertedFloorLava {
				with ground {
					alarm[1] = 0;
					sprite_index = sprInvertedFloorLavaB;
					snd_play(sndFlareExplode,0.02)
					var ang = random(360);
					var am = 6;
					var angstep = 360/am;
					repeat(am)
					{
						with instance_create(x + 16,y + 16,Flame)
						{
							motion_add(ang,random(2)+3)
							team = 2
							ang += angstep;
						}
					}
				}
			}
		}
		if ground.sprite_index == sprFloor7Explo || ground.sprite_index == sprFloorLava
		{
			if alarm[4] <= 0
				alarm[4] = 1;
    
			if UberCont.normalGameSpeed == 60
				hotfloor += 0.5;
			else
				hotfloor+=1;
		    if hotfloor>39//time before crisping
		    {
			    with instance_create(x,y,TrapFire){//burn!
			    team=1;}
			    hotfloor=0;//allright you've burned now continue
        
			    //GAMEMODE UNLOCKABLE WALL IS LAVA
			    scrUnlockGameMode(4,"FOR STANDING IN LAVA");
		    }
		}
		else if ground.sprite_index == sprFloor108Explo || ground.sprite_index == sprInvertedFloorLava
		{
			friction = 0.1
			//when player isn't frozen increase the time that determines when it should get frozeen
			if frozen<1
			{
				if UberCont.normalGameSpeed == 60
					getFrozen += 0.5;
				else
					getFrozen+=1;
			}
    
			if getFrozen>24 && alarm[3] < 1
			{
				my_health -= 1;
				snd_play_2d(snd_hurt);
				instance_create(x,y,FrozenPlayer);
				frozen=15;
				getFrozen=0;
			}
		}
		else
		{
			getFrozen=0;
			hotfloor=0
		}
	}
}


scr60fpsReload();
if reload > 0
	can_shoot = 0
else
{
	can_shoot = 1
	with CloneShooter
		instance_destroy();
}

//cap reloads
reload = max(reload,lowa);
breload = max(breload,lowb);
creload = max(creload,lowc);

if (instance_exists(enemy))
{
	var homeBoost = 0;

	if (ultra_got[42])//HUNTER ULTRA B Homing projectiles
		homeBoost += 2.5;
	if skill_got[19]
	{
		homeBoost += 0.7;
		if race == 25
			homeBoost += 0.1;
	}
	///homing projectiles mod
	var modHomeBoost = 0.24;
	if skill_got[30] == 1
		modHomeBoost += 0.14;
	if ultra_got[65]
		modHomeBoost += 0.14;

	if race == 7//Steroids
	{
		modHomeBoost -= 0.2;
		if bwepmod1 == 13
		homeBoost += modHomeBoost;
		if bwepmod2 == 13
			homeBoost += modHomeBoost;
		if bwepmod3 == 13
			homeBoost += modHomeBoost;
		if bwepmod4 == 13
			homeBoost += modHomeBoost;
		homeBoost = max(0,homeBoost-0.2);
	}
	if wepmod1 == 13
		homeBoost += modHomeBoost;
	if wepmod2 == 13
		homeBoost += modHomeBoost;
	if wepmod3 == 13
		homeBoost += modHomeBoost;
	if wepmod4 == 13
		homeBoost += modHomeBoost;

	if homeBoost > 0
	{
		var dt = 1;
		if UberCont.normalGameSpeed == 60
			dt = 0.5;
		var ogHomeBoost = homeBoost * dt;
	    with projectile
	    {
	        if (team == other.team && speed > 0)
	        {
		        if canBeMoved
		        {
		        
					var t = instance_nearest(x,y,enemy)
			        if collision_line(x,y,t.x,t.y,Wall,0,0) < 0// && point_distance(x,y,t.x,t.y) < 128
			        {
						homeBoost = ogHomeBoost;
						var d = point_direction(x,y,t.x,t.y)
						var ad = angle_difference(d,direction);
						homeBoost *= (1 + (speed * 0.006));
			            if (ad > 2)
			            {
							direction += homeBoost;
							image_angle += homeBoost;
			            }
			            else if (ad < -2)
			            {
							direction -= homeBoost;
							image_angle -= homeBoost;
			            }
			        }
			    }
	        }
	    }
	}
}

if (ultra_got[43] && !altUltra)//HUNTER ULTRA C Focused projectiles
{
    if instance_exists(Marker)
    {
	    with projectile
		{
			//if (x > __view_get( e__VW.XView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y > __view_get( e__VW.YView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ) 
			 //and ProjectileCanBeMoved())
			if speed > 0 && canBeMoved
			{
				var str = 2.0;
				if place_free(x+lengthdir_x(str,point_direction(x,y,Marker.x,Marker.y)),y)
					x += lengthdir_x(str,point_direction(x,y,Marker.x,Marker.y))
					if place_free(x,y+lengthdir_y(str,point_direction(x,y,Marker.x,Marker.y)))
						y += lengthdir_y(str,point_direction(x,y,Marker.x,Marker.y))

				image_angle=direction;

				if (direction<point_direction(x,y,Marker.x,Marker.y) )
			    {
					direction+=3;
					image_angle+=3;
			    }
			    else if (direction>point_direction(x,y,Marker.x,Marker.y) )
			    {
					direction-=3;
					image_angle-=3;
			    }
			}
		}
    }
}

///ELEMENTOR ultra D &strong spirit
if skill_got[25]//strong spirit
    {
    
    if ( strongspiritused=false && my_health >= maxhealth || ( strongspiritused=false && my_health > round(maxhealth*0.75) && race == 25 ) )
    {
    //strongspiritused=false;
    if strongspirit=false
    {
    snd_play(sndStrongSpiritGain);
    strongspiritregained++;
    
    //UNLOCK VIKING
    if strongspiritregained>3
		scrUnlockCharacter(16,"FOR REGAINING STRONG SPIRIT 4 TIMES")
    
    }
    
    strongspirit=true;
    
    
    }
    
    }


/* */
///Frozen
if frozen>0
{
speed=0;
x=xprevious;
y=yprevious;
frozen--;
}

/* */
///Superhot
if wep=201||wep=202
{

if speed<2
{
with projectile{

if speed>2 && canBeMoved{
speed*=0.1;}

}

with enemy
speed*=0.1;

}
else{
with projectile
{
if typ!=0&&canBeMoved{
    if speed<8
    {speed+=1;}
    else
    {speed=8;}
    }
}}

}


///extra feet dodging bonus
if skill_got[2] && !instance_exists(LevCont) && !outOfCombat
{
	if extrafeetalarm > 0
	{
		if UberCont.normalGameSpeed == 60
			extrafeetalarm -= 0.5;
		else
			extrafeetalarm--;
	}

	if extrafeetalarm == 11 && extrafeetdodged && alarm[3] < 1
	{
		closedodges ++;
		if race == 26 && closedodges >= 20
		{
			closedodges = -999;//Dont need this anymore
			scrUnlockBSkin(26,"FOR PERFORMING 20 CLOSE DODGES#USING EXTRA FEET#AS HUMPHRY",0);	
		}
		with instance_create(x+10,y+5,RedirectFX)
		{
			sprite_index = sprExtraFeetCloseDodge;	
		}
		if scrDrop(75,5) != noone
			snd_play(sndExtraFeetDodge);
		else
			snd_play(sndExtraFeetDodgeFail);
		
		var am = 3;
		if race == 25
			am ++;
		repeat(am)
			with instance_create(x,y,Rad)
			{
				motion_add(random(360),4)
			}
	}
	if instance_exists(projectile) && alarm[3] < 1
	{
		if extrafeetalarm < 1
		{
			var msk = mask_index;
			mask_index = mskPlayerDodge;
			var projectiles = ds_list_create();
			var al = instance_place_list(xprevious,yprevious,projectile,projectiles,false)
			for (var j = 0; j < al; j++) {
				with projectiles[| j]
				{
					if dodgeAble && team != other.team//NOT FROM PLAYA!? O_O
			        {                     
						other.extrafeetalarm=23;//after some time we check if you've dodged this
						other.extrafeetdodged=true;
			        }
				}
			}
			ds_list_destroy(projectiles);
			mask_index = msk;
		}
	}
}


/* */
///Delay before taking melee damage again


/* */
///time and unlock

if UberCont.normalGameSpeed == 60
	microseconds += 1.5;
else
	microseconds += 3;

if microseconds>60
{
seconds+=1;
microseconds=0;
}


/* */
///spawn inverted portal
    if (invertedportalcounter>invertedportaldelay)&&instance_exists(Floor)
    {
		var targetFloor;
		if !instance_exists(Portal)
		{
			targetFloor = instance_furthest(x,y,Floor);
		}
		else
		{
			targetFloor = instance_furthest(Portal.x,Portal.y,Floor);
		}
		var tries = 400;
		var msk = mask_index;
		mask_index = mskWallBreak;
		while ((place_meeting(targetFloor.x+16,targetFloor.y+16,prop) || place_meeting(targetFloor.x+16,targetFloor.y+16,chestprop) || place_meeting(x+16,y+16,Player)) && tries > 0)
		{
			tries--;
			with targetFloor
			{
				targetFloor = instance_nearest(x+irandom_range(128,-128),y+irandom_range(128,-128),Floor);
			}
		}
		mask_index = msk;
    with instance_create(targetFloor.x+16, targetFloor.y+16,Portal)
    {
		inverted=true;
		isPink = false;
		sprite_index = sprPortalSpawn;
		depth=0;
    }
    
    invertedportalcounter=0;
    }
    
    if invertedportalcounter>0
		invertedportalcounter++;


/* */
///Gamepad aiming
var h_point = gamepad_axis_value(0, gp_axisrh);
var v_point = gamepad_axis_value(0, gp_axisrv);

if ((h_point != 0) || (v_point != 0))
{
var dir = point_direction(0,0, h_point, v_point);
//var dif = angle_difference(pdir, image_angle);
//image_angle += median(-20, dif, 20);



var mox,moy;
var len,dir;
//if UberCont.opt_fulscrn=1
//len=point_distance(Player.x,Player.y,target.x,target.y)*4
//else{
len=point_distance(x,y,gp_axisrh,gp_axisrv)*0.011;
//len*=(window_get_height())*0.0037;
//}

//dir=point_direction(Player.x,Player.y,target.x,target.y);

mox=(window_get_x()+window_get_width()*0.5)+lengthdir_x(len,dir);
moy=(window_get_y()+window_get_height()*0.5)+lengthdir_y(len,dir);

if mox > window_get_x()+window_get_width()
mox = window_get_x()+window_get_width()-8;
if mox < window_get_x()
mox = window_get_x()+8;
if moy > window_get_y()+window_get_height()
moy = window_get_y()+window_get_height()-8;
if moy < window_get_y()
moy = window_get_y()+8;

display_mouse_set(mox,moy);

}

/* */
///Angel flying through walls
if race==18
{
	if !instance_exists(LevCont) && instance_exists(Wall)// && !instance_exists(Portal)
	{
		if flying > 0
	    {
		    flying--;
		    if flying<1
				mask_index = mskPlayer;
	    }
	
	    if instance_exists(Floor) && instance_exists(WallHitMe)
	    {
	     var ground = instance_nearest(x-8,y-8,Floor);
		 var o = 16;
		if ground.object_index == FloorExplo
			o = 8;
	     var wall = instance_nearest(x,y,WallHitMe);
     
	        if !place_meeting(x,y,Floor)&&point_distance(x,y,wall.x,wall.y)>16&&point_distance(x,y,ground.x,ground.y)>28//OUT OF BOUNDS
	        {
	        motion_add(direction+180,speed);
			if UberCont.normalGameSpeed == 60
			{
				motion_add(point_direction(x,y,ground.x+o,ground.y+o),0.45);
				motion_add(direction,speed*0.5);
			}
			else
				motion_add(point_direction(x,y,ground.x+o,ground.y+o),0.9);
	        //if point_distance(x,y,wall.x,wall.y)>17
	        //motion_add(direction,1);
	        }
        
		    //GET HURT when flying too long unless acent ultra D
		    if ( ( !place_meeting(x,y,Floor) || flying>0 || mask_index=mskPickupThroughWall || place_meeting(x,y,WallHitMe) ) && !instance_exists(LevCont) && !(ultra_got[72] && !altUltra) )//NOT ASCND ULTRA
		    {
			    //var wall = instance_nearest(x,y,Wall);
				if UberCont.normalGameSpeed == 60
					motion_add(point_direction(x,y,ground.x+o,ground.y+o),0.3);
				else
					motion_add(point_direction(x,y,ground.x+o,ground.y+o),0.6);
		    }
		    else
		    {
				flyduration=0;
		    }
		}
		flyduration ++;
	    if flyduration>flymax
	    {
			my_health--;
			flyduration=20;
	    snd_play(snd_hurt, hurt_pitch_variation);
	    image_index=0;
	    sprite_index=spr_hurt;
	    repeat(5+irandom(5) )
	    {with instance_create(x+random(16)-8,y+random(16)-8,Feather)
	    motion_add(random(360),5+random(10) );}
    

	    }
	    if flyduration = 15
	    {
	    snd_play(sndStatueDead);
	    }
	    if flyduration>10&&random(2)<1
	    {
	    instance_create(x+random(16)-8,y+random(8)-4,Feather);
	    //snd_play(sndStatueCharge);
	    if flyduration < 20
	    audio_sound_pitch(sndStatueCharge,1-flyduration*0.01)
	    else
	    audio_sound_pitch(sndStatueCharge,1-20*0.01)
    
	    if !audio_is_playing(sndStatueCharge)
	    audio_play_sound(sndStatueCharge,100,0)
	    }
	    if flyduration>25//&&random(2)<1
	    {with instance_create(x+random(16)-8,y+random(16)-8,Feather)
	    motion_add(random(360),5+random(10) );}
    
	}
	else
	{
		flying = 0;
		mask_index = mskPlayer;
	}
}


///moddelay
if moddelay > 0
{
	if is60fps
		moddelay -= 0.5;
	else
		moddelay--;
}
/* */
///Rogue  heat
if (RogueHeat==true)
{
    if ( instance_exists(enemy) && instance_number(enemy) < BackCont.enemiesInStartLevel * 0.8 )
    {
    instance_create(x,y,IDPDSpawn);
    RogueHeat=false
    }
}

/* */
//INSOMNIA TIMER !?
///Lets try aggro

if instance_exists(PlayerAlarms2) && PlayerAlarms2.alarm[1] < 1
{
	if loops > 0
	{
		var healingAmount = 0.1;
		var aggro = 1;
		if is60fps
		{
			healingAmount = 0.05;
			aggro = 0.5;
		}
		with enemy {
			if super {
				if alarm[1] > 3
					alarm[1] -= aggro;
				my_health = min(maxhealth,my_health + healingAmount);
				speed *= 1.15;
			}
		}
	}
	if scrIsCrown(27)//Crown of disco
	{
		with enemy
		{
			if alarm[1]>8 && alarm[1] < 12
				alarm[1]=8;
		}
	}
	else if scrIsCrown(10) //Crown of difficulty
	{
		var am = 1.15
		var s = 1.125
		//var s = 1.15;
		if is60fps
		{
			am = 0.575;
			s = 1.0625;
			//s = 0.575
		}
		with enemy
		{
			if alarm[1] > 3 && alarm[1] < 25
			{
				alarm[1] -= am;
			}
			speed *= s;
		}
	}
}
wave += 0.4;//Looping animations
tailWave += 0.4;
if instance_exists(ElementorWall) {
	var wl = instance_place(x+hspeed+lengthdir_x(1,direction),y+vspeed+lengthdir_y(1,direction),ElementorWall);
	if wl != noone
	{
		with wl
			instance_destroy();
	}
}
//Hammer head
if hammerheadcounter > 0
{
	var msk = mask_index;
	mask_index = mskWallBreak;
	if place_meeting(x,y,Wall)
	{
		nearWall = true;
		mask_index = msk;
		if place_meeting(x+hspeed,y+vspeed,Wall)
		{
			if is60fps
				hammerheadtimer += 0.5;
			else
				hammerheadtimer += 1;

			alarm[5]=12;//timer before hammerhead continuation stops
			
			if hammerheadtimer > 5 || instance_exists(SheepStorm)
			{
				hammerheadcounter --;
				var debrisAmount = 2;
				var debrisMultiply = 1.5;
				if (hammerheadcounter > 0)
				{
					snd_play(sndHammerHeadProc);
					scrDrop(4,2);
				}
				else
				{
					snd_play(sndHammerHeadEnd);
					scrDrop(35,12);
					nearWall = false;
					debrisAmount += 2;
					debrisMultiply += 1;
				}
				instance_create(x+hspeed,y+vspeed,WallBreakHammerHead);
				//More debris
				repeat(debrisAmount)
				with instance_create(x+8+random(8)-4,y+8+random(8)-4,Debris)
					speed *= debrisMultiply;
				
				scrRaddrop(1);
			}
		}
	}
	else
		nearWall = false;
	
	mask_index = msk;
}
//COLLISION
var hitWall = false;
if(race != 18)
{
	var h = sign(hspeed);
	if place_meeting(x+hspeed+h,y,WallHitMe)
	{
		//x -= hspeed;
		var hi = 0;
		var maxh = hspeed + 2;
		while(!place_meeting(x+h,y,WallHitMe) && hi < maxh)
		{
			x += h;
			hi ++;
		}
		hspeed = 0;
		hitWall = true;
	}
	var v = sign(vspeed);
	if place_meeting(x,y+vspeed+v,WallHitMe)
	{
		//y -= vspeed;
		var vi = 0;
		var maxv = hspeed + 2;
		while(!place_meeting(x,y+v,WallHitMe) && vi < maxv)
		{
			y += v;
			vi ++;
		}
		vspeed = 0;
		hitWall = true;
	}
}
else if place_meeting(x,y,WallHitMe)
{	
	hitWall = true;
	flying = 2;
	mask_index = mskPickupThroughWall;
}
if hitWall && sprite_index != spr_hurt && alarm[3] < 1 && hammerheadcounter < 1 && scrIsGamemode(4)
{	
	my_health -= 2;
	snd_play_2d(snd_hurt_actual, hurt_pitch_variation);
	sprite_index = spr_hurt;
	image_index = 0;
	var ang = direction;
	snd_play(sndFlare);
	repeat(6)
	{
		with instance_create(xprevious,yprevious,Flame)
		{
			team = other.team;
			motion_add(ang,4);
		}
		ang += 60;
	}
	instance_create(x,y,WallBreak);
}
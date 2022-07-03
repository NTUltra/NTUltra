/// @description main
if UberCont.opt_gamemode == 29 || cheatyinfiniteammo //Infinite ammo
	alarm[2] = 2;
if unkillable
	alarm[1] = 2;
if !instance_exists(GenCont) and !instance_exists(LevCont) and visible = 1
{
	if roll = 0
	{if KeyCont.key_west[p] = 2 or KeyCont.key_west[p] = 1
	hspeed -= 3
	if KeyCont.key_east[p] = 2 or KeyCont.key_east[p] = 1
	hspeed += 3
	if KeyCont.key_nort[p] = 2 or KeyCont.key_nort[p] = 1
	vspeed -= 3
	if KeyCont.key_sout[p] = 2 or KeyCont.key_sout[p] = 1
	vspeed += 3


	if race == 23 && ultra_got[92] == 0
	speed = clamp(speed,maxspeed*0.8,maxspeed);

	if alarm[4]>0//boiling veins
	{
	instance_create(x+random(12)-6,y+random(12)-6,Smoke);
	}
	var thing;
	if UberCont.public==0 && !keyboard_check(vk_control) && !keyboard_check(vk_shift){
	//hacks
		if keyboard_check_pressed(ord("V")) {
			var dangle = random(1)*360;
			var f = instance_nearest(x + dcos(dangle)*128,y + dsin(dangle)*64,Floor);
			//screen_save("explain"+string(scrn)+".png");
			//scrn++;
			instance_create(f.x + 16,f.y + 16,BigWallBreak)
			instance_create(f.x + 16,f.y + 16,UltraChest)
			thing = instance_create(f.x + 16,f.y + 16,PopupText);
			thing.mytext = "UltraChest";
		}
		if keyboard_check_pressed(ord("C")) {
			var dangle = random(1)*360;
			var f = instance_nearest(x + dcos(dangle)*128,y + dsin(dangle)*64,Floor);
		    curse = !curse;
			thing = instance_create(f.x + 16,f.y + 16,PopupText);
			thing.mytext = "CURSE TOGGLE";
		}
		if keyboard_check_pressed(ord("B")) {
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
				alarm[1] = 1;
				snd_play(sndStrongSpiritLost)
			} else {
				thing = instance_create(x,y,PopupText)
				thing.mytext = "UNKILLABLE!";
				unkillable = true;
				alarm[1] = 2;
				snd_play(sndStrongSpiritGain)
			}
		}
		if keyboard_check_pressed(ord("R")) {
		    thing = instance_create(x,y,PopupText)
			thing.mytext = "RADS!";
			rad = GetPlayerMaxRad()*2;
		}
		if keyboard_check_pressed(ord("T")) {
			if instance_exists(Portal) && UberCont.opt_gamemode == 25
			{
				subarea++;
				hard += 1.25;
				thing = instance_create(x,y,PopupText)
				thing.mytext = "SUBAREA++! "+string(subarea);
			}
			else
			{
				instance_create(Player.x,Player.y,Portal);
				thing = instance_create(x,y,PopupText)
				thing.mytext = "PORTAL!";
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
		    }
		if (keyboard_check_pressed(ord("H")))
		    {
			
			var dangle = random(1)*360;
			/*
		    instance_create(x + dcos(dangle)*24,y + dsin(dangle)*24,HealthChest);
			thing = instance_create(x + dcos(dangle)*24,y + dsin(dangle)*24,PopupText);
			thing.mytext = "MORE HEALTH!";
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
		    with instance_create(x + dcos(dangle)*32,y + dsin(dangle)*32,WeaponChest)
			curse = 1;
			thing = instance_create(x + dcos(dangle)*32,y + dsin(dangle)*32,PopupText);
			thing.mytext = "WEAPON CHEST!";
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

	if speed = 0
	{if sprite_index != spr_hurt
	sprite_index = spr_idle}
	else
	{if sprite_index != spr_hurt
	sprite_index = spr_walk}
	if sprite_index = spr_hurt
	{	
		hurtTime++;
		if (image_index > 2 && hurtTime > hurtDuration)
		{
			sprite_index = spr_idle
			hurtTime = 0;
		}
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
		angle += 50*right*max(1,(skill_got[2]*1.3))

		if speed = 0
		{if sprite_index != spr_hurt
		sprite_index = spr_idle}
		else
		{if sprite_index != spr_hurt
		sprite_index = spr_walk}
		if sprite_index = spr_hurt
		{if image_index > 2
		sprite_index = spr_idle}

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
	}
	else
	{
	spr_idle = sprMutant9Idle
	spr_hurt = sprMutant9Hurt
	spr_walk = sprMutant9Walk}
	with Corpse{
	if other.bskin=2
	sprite_index = mskPickupThroughWall;//invisible basicly
	else if other.bskin=1
	sprite_index = sprMutant9BHeadIdle
	else
	sprite_index = sprMutant9HeadIdle
	instance_destroy()}
	}

	
	//SHOOTING!! AWW YEAH

	if !(instance_exists(CrystalShield))
	{
		IsShielding=false;
	}
	else if (CrystalShield.sprite_index!=sprShieldDisappear)
	{
		IsShielding=true;
	}
	else{
		IsShielding=false;
	}
	if( (!(IsShielding)||(ultra_got[7]==1)) && (UberCont.opt_gamemode!=12||instance_exists(Marker)) ){
	if race = 7 || (altUltra && ultra_got[23] && scrMeleeWeapons(wep)){//Roids always auto fire
	wep_auto[wep] = 1 wep_auto[bwep] = 1}


	if (KeyCont.key_fire[p] = 1 or keyfire = 1) and wep_auto[wep] = 0 and ((wep_type[wep] = 0 or wep_type[wep] = 1) or can_shoot = 1) and reload < 15
		clicked = 1

	if (KeyCont.key_fire[p] = 1 or keyfire = 1)
	{
		if  ammo[wep_type[wep]] < wep_cost[wep] && wep_type[wep] != 0  && alarm[2] < 1//alarm = Fish Ultra B
		{
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
		else
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

	if can_shoot = 1 and flying == 0 and ((ammo[wep_type[wep]] >= wep_cost[wep] || wep_type[wep] == 0) and rad>=wep_rad[wep] || alarm[2]>0)//alarm = Fish Ultra B
	{
		if wep_auto[wep] = 0 and clicked = 1
		{

			if ultra_got[44] == 1 && instance_exists(Marker)
			{
				scrCrackShotFire();
			}
			else
			{
				scrFire();
				with YungCuzDupe
					event_user(0);
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
				scrFire();
				with YungCuzDupe
					event_user(0);
			}
		}
	}
}

	


	//crown of hatred
	if crown == 6
	{
	decay -= 1
	if decay <= 0 and my_health > 1 && alarm[3]<1
	{
	Sleep(30)
	my_health -= 1;
	exception = true;


	sprite_index = spr_hurt
	image_index = 0
	snd_play(snd_hurt, hurt_pitch_variation)

	scrRaddrop(20)//used to be 12

	decay = 300
	}
	}
}//End of gencont

//SWAP WEPS
if KeyCont.key_swap[p] = 1 and bwep != 0
{
	instance_create(x,y,WepSwap)
	scrSwapWeps()

	if ultra_got[27]//ROIDS MIRROR HANDS
	{
		if reload < 0
		{
			var pci = reload/wep_load[wep];
			pci = 1+pci;
			pci = pci-floor(pci);//Percentage of load that would be the reload
			reload -= reload*pci*m;
		}
		else
			reload *= 0.4;
		if breload < 0
		{
			var pci = breload/wep_load[bwep];
			pci = 1+pci;
			pci = pci-floor(pci);//Percentage of load that would be the reload
			breload -= breload*pci*m;
		}
		else
			breload *= 0.4;
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
	if ultra_got[27]
	{
	bwepangle=wepangle;
	}
}

var mr =GetPlayerMaxRad()
if (rad > mr)
{
	if level < maxlevel || UberCont.opt_gamemode == 22
	{
	
	//rad -= level*60
	rad -= mr;
	level += 1

	if level==7 && loops < 1 && race = 25 && (area < 4 || area == 105 || area == 110 || area == 106 || area == 103 || area == 102 || area == 101 || area == 10)
		scrUnlockBSkin(25,"FOR REACHING LEVEL 7#BEFORE THE LABS#AS MUTATION DOCTOR",0);

	repeat(level-6)
	instance_create(x,y,IDPDSpawn)
	
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
		instance_create(x,y,LevelUp)
	}
	skillpoints += 1
	if level > 40
		skillsChosen --;
	

	}
	else
	{
	rad = mr;
	if ultra_got[83]
	scrUnlockBSkin(21,"FOR GAINING THE MAXIMUM AMOUNT#OF RADS AS HORROR",0);
	}
}

//reload stuff
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
if (!instance_exists(LevCont) && !instance_exists(GenCont))
{
	if reload > lowa
	{
		reload -= 1
	
		if race = 6
		{//YV fire rate boost
			reload -= 0.25//0.25
		}
		if ultra_got[21]//YV ULTRA A
		{
			reload -=0.41;
		}
		if ultra_got[23] && altUltra
		{
			if scrMeleeWeapons(wep)
			{
				reload -=0.43;
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
			if KeyCont.key_spec[p] = 1 or KeyCont.key_spec[p] = 2 && !(instance_exists(GenCont))
			{
				reload -= 0.25; // 1 - (30 / room_speed)
			}
		}


		if ultra_got[102]//Humphry Ultra B Rapid facial hair growth
		{
			reload -= HumphrySkill*0.0062//0.0055//0.01//0.009 when cap is 100
		}
		if (ultra_got[63] && armour > 0)//VIKING COLD HEART
		{
			reload -= 0.3;
		}
	

		if reload <= 0 && !can_shoot
		{
			can_shoot = 1
		
			if ammo[wep_type[wep]] < wep_cost[wep] and wep_type[wep] != 0
				scrEmpty()

			wepflip = -wepflip

			if wep_type[wep] = 0
			snd_play(sndMeleeFlip,0,true)
			if wep_type[wep] = 3
			snd_play(sndCrossReload,0,true)
			if wep_type[wep] = 4
			snd_play(sndNadeReload,0,true,false,2,false,false,0.6)
			if string_copy(wep_name[wep],0,6) = "PLASMA"
			{
			if skill_got[17] = 1
			snd_play(sndPlasmaReloadUpg,0,true)
			else
			snd_play(sndPlasmaReload,0,true)
			}
			if wep_type[wep] = 2
			{
			repeat(wep_cost[wep])
			{with instance_create(x,y,Shell)
			{sprite_index = sprShotShell
			motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+other.right*100+random(40)-20,2+random(2))}}

			wkick = -1
			if wep = 8
			wkick = -2
			snd_play(sndShotReload,0,true)
			}
		}
	}
	if skill_got[34]//FLEXIBLE ELBOWS
	{
		if (breload <= 0 || bwep == 0)
		{
			reload -= 0.29;
		}
		if (ultra_got[32] && (creload <= 0 || cwep == 0))
		{
			reload -= 0.28;
		}
	}
	if (reload > lowa || breload > lowb || creload > lowc)
	{
		if race == 7
			breload -= 1
		if breload <= 0 && !bcan_shoot
		{
			bcan_shoot = 1

			if ultra_got[27]{
				var roidsWepangle;//damage control
				roidsWepangle=bwepangle;//steroids melee shit
				scrSwapWeps();

			}
			if ultra_got[27]=0 && wep_type[bwep]=0//mirror hands the weird melee bug fix yo!
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
			if ultra_got[27]
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
			if ultra_got[27]{
				scrSwapWeps();
				bwepangle=roidsWepangle;//what a mess
			}
		}
	
		if skill_got[22] = 1
		{
			//nerves of steel g  STRESS
			var reduction = 0;
			if race = 25
			{
				reduction = (1-(my_health/maxhealth))*0.62
			}
			else
			{
				reduction = (1-(my_health/maxhealth))*0.68//*1//0.35 the original has 80% boost
			}
			if UberCont.opt_gamemode == 24//SHARP STRESS GAMEMODE
				reduction *= level;
			reduction = max(reduction,0);
			reload -= reduction
			breload -= reduction*0.5;
			creload -= reduction*0.5;
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
			var reduction = rage*0.0054;
			reload -= reduction//0.01//0.009 when cap is 100
			breload -= reduction*0.4;
			creload -= reduction*0.4;

			rageAccuracy = rage*0.0013//0.0011// caps at 0.10 increase when cap = 100
			accuracy=standartAccuracy+rageAccuracy;//standartAccuracy will be changed by eagle eyes so this scales with that.
		}
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
		if skill_got[35]//PUFFY CHEEKS
		{
			var crm = 0.6;
			if race == 25//Doctor puffy cheeks
				crm = 0.5;
	
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
	}
	//PUFFY CHEEKS
	if skill_got[35]
	{
		if reload <= lowa*0.5 && queueshot < 1
		{
			queueshot++;
			scrPlayReloadSound(wep);
		} else if reload <= lowa && queueshot < 2
		{
			queueshot++;
			scrPlayReloadSound(wep);
		}
	
		if breload <= lowb*0.5 && bqueueshot < 1
		{
			bqueueshot++;
			scrPlayReloadSound(bwep);
		} else if breload <= lowb && bqueueshot < 2
		{
			bqueueshot++;
			scrPlayReloadSound(bwep);
		}
	
		if creload <= lowc*0.5 && cqueueshot < 1
		{
			cqueueshot++;
			scrPlayReloadSound(cwep);
		} else if creload <= lowc && cqueueshot < 2
		{
			cqueueshot++;
			scrPlayReloadSound(cwep);
		}
	}
	//Can we fire again? Two times in a frame? Or even more if you go negative reload
	if (!IsShielding || ultra_got[7]==1) 
	and (UberCont.opt_gamemode!=12||instance_exists(Marker))
	and wep_auto[wep] = 1 and (KeyCont.key_fire[p] = 1 or KeyCont.key_fire[p] = 2 or keyfire > 0)
	{
		while can_shoot = 1 and flying == 0 and ((ammo[wep_type[wep]] >= wep_cost[wep] || wep_type[wep] == 0) and rad>=wep_rad[wep] || alarm[2]>0)//alarm = Fish Ultra B
		{
			if ultra_got[44] == 1 && instance_exists(Marker)
			{
				scrCrackShotFire();
			}
			else
			{
				scrFire();
				with YungCuzDupe
					event_user(0);
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

if lsthealth < my_health
{
drawlowhp = 20
lsthealth += 1
}
if sprite_index != spr_hurt and lsthealth > my_health
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
ang = random(360)
{
repeat(14)
{
with instance_create(x,y,AllyBullet)
{
motion_add(other.ang,5)
image_angle = direction
team = other.team
}
ang += 360/14
}
}
}
}
else
canrebel = 1
}
if wep == 531//Coffee makes you faster
{
	maxspeed += 1;	
}
var outofcombat = instance_number(enemy) <= instance_number(IDPDVan) && !instance_exists(becomenemy)
if outofcombat
	maxspeed += 1;
if speed > maxspeed
	speed = maxspeed
if outofcombat
	maxspeed -= 1;
if wep == 531
{
	maxspeed -= 1;
}

if roll = 1
{
speed = 6.3*max(1,(skill_got[2]*1.3))//xtra feet rolling
	if mask_index == mskPickupThroughWall
	{
		var msk = mask_index;
		mask_index = mskPlayer;
		if place_meeting(x,y,Wall)
		{
			x = xprevious;
			y = yprevious;
		}
		mask_index = msk;
		instance_create(x,y,Dust);
	}
}

if ((area = 5 || area = 107) and !instance_exists(GenCont) and !instance_exists(LevCont) and !instance_exists(FloorMaker))
{
//SNOW & ICE TEST
if ((instance_nearest(x-16,y-16,Floor).styleb == 1)&&(skill_got[2]==0&&race!=18&&race!=24)) // EXTRA FEET TEST
friction = 0.1
else
friction = 0.45
}
else if (area == 4 || area == 115) and !instance_exists(GenCont) and !instance_exists(LevCont) and !instance_exists(FloorMaker)
{
//SPIDERWEBS
if ((instance_nearest(x-16,y-16,Floor).styleb == 1)&&(skill_got[2]==0&&race!=18&&race!=24))//EXTRA FEET TEST
friction = 2
else
friction = 0.45
}
else if area = 111 and !instance_exists(GenCont) and !instance_exists(LevCont) and !instance_exists(FloorMaker)
{
//INVERTED SPIDERWEBS
if ((instance_nearest(x-16,y-16,Floor).styleb == 1)&&(skill_got[2]==0&&race!=18&&race!=24))//EXTRA FEET TEST
speed+=1;
}


if reload > 0
	can_shoot = 0
else
	can_shoot = 1

//cap reloads
reload = max(reload,lowa);
breload = max(breload,lowb);
creload = max(creload,lowc);


var homeBoost = 0;

if (ultra_got[42]==1)//HUNTER ULTRA B Homing projectiles
	homeBoost += 4;
if skill_got[19] == 1
{
	homeBoost += 1.2;
	if race == 25
		homeBoost += 0.2;
}
///homing projectiles mod
var modHomeBoost = 0.6;
if skill_got[30] == 1
	modHomeBoost += 0.34;
if ultra_got[65]
	modHomeBoost += 0.4;

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
    with projectile
    {
        if (team == other.team && speed > 0)
        {
	        if ProjectileCanBeMoved()
	        {
		        if instance_exists(enemy)
		        {
					var t = instance_nearest(x,y,enemy)
		            if collision_line(x,y,t.x,t.y,Wall,0,0) < 0// && point_distance(x,y,t.x,t.y) < 128
		            {
						var d = point_direction(x,y,t.x,t.y)
						var ad = angle_difference(d,direction);
		                if (ad > 2)
		                {
							direction+=homeBoost;
							image_angle+=homeBoost;
		                }
		                else if (ad < -2)
		                {
							direction-=homeBoost;
							image_angle-=homeBoost;
		                }
		            }
		        }
	        }
        }
    }
}

if (ultra_got[43]==1)//HUNTER ULTRA C Focused projectiles
{
    if instance_exists(Marker)
    {
	    with projectile
		{
			//if (x > __view_get( e__VW.XView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y > __view_get( e__VW.YView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ) 
			 //and ProjectileCanBeMoved())
			if speed > 0 && ProjectileCanBeMoved()
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
    
    if ( strongspiritused=false && my_health >= maxhealth || ( strongspiritused=false && my_health > round(maxhealth*0.75) && race = 25 ) )
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
if instance_exists(enemy){    
if ultra_got[96]//ELEMENTOR lightning ultra
{
if random(100)<2&&point_distance(x,y,instance_nearest(x,y,enemy).x,instance_nearest(x,y,enemy).y)<300{//constant sparks annoy me so only if enemy is close
snd_play(choose(sndSpark1,sndSpark2));
    repeat(irandom_range(1,5))
    {
    with instance_create(x,y,Lightning)
{image_angle = random(360);
team = other.team
ammo = irandom_range(4,18)
event_perform(ev_alarm,0)
visible = 0
with instance_create(x,y,LightningSpawn)
image_angle = other.image_angle}
    }
    }

}}
if ultra_got[16]{
	with meltingd
	{
		my_health = 0;
		//instance_destroy();
	}
}

/* */
///lava and frost
if area=7&&race!=18&&race!=24&&skill_got[14]==0//angel & elementor boiling veins
{

    if collision_point(x,y,FloorLava,0,1) || collision_point(x,y,FloorExplo,0,1)
    {
    if alarm[4]<=0
    alarm[4]=4;
    
    hotfloor+=1;
        if hotfloor>43//time before crisping
        {
        with instance_create(x,y,TrapFire){//burn!
        team=1;}
        hotfloor=0;//allright you've burned now continue
        
        //GAMEMODE UNLOCKABLE WALL IS LAVA
        scrUnlockGameMode(4,"FOR STANDING IN LAVA");
        
        
        }
    }
else
{
hotfloor=0;//calm da fuk down
}

}
if area=108&&race!=18&&race!=24//angel & elementor don't bother with this stuff
{

    if place_meeting(x,y,FloorLava) || place_meeting(x,y,FloorExplo)
    {
    if skill_got[2]==0
    friction = 0.1
    
    //when player isn't frozen increase the time that determines when it should get frozeen
    if frozen<1
		getFrozen++;
    
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
    friction = 0.45
    getFrozen=0;
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

if speed>2 &&object_index!=Flame&&object_index!=TrapFire&&object_index!=HotDrakeFlameCannon&&object_index!=HotDrakeSplitBall&&object_index!=Bolt&&object_index!=Splinter&&object_index!=UltraBolt{
speed*=0.1;}

}

with enemy
speed*=0.1;

}
else{
with projectile
{
if typ!=0&&object_index!=Flame&&object_index!=TrapFire&&object_index!=HotDrakeFlameCannon&&object_index!=HotDrakeSplitBall&&object_index!=Bolt&&object_index!=Splinter&&object_index!=UltraBolt{
    if speed<8
    {speed+=1;}
    else
    {speed=8;}
    }
}}

}


///extra feet dodging bonus
if skill_got[2]
{
	if extrafeetalarm>0
		extrafeetalarm--;

	if extrafeetalarm == 1 && extrafeetdodged
	{
		if race=25
		{
			with instance_create(x+10,y+5,RedirectFX)
			{
				sprite_index = sprExtraFeetCloseDodge;	
			}
			if scrDrop(80,0)
				snd_play(sndExtraFeetDodge);
			else
				snd_play(sndExtraFeetDodgeFail);
		}
		else
		{
			with instance_create(x+10,y+5,RedirectFX)
			{
				sprite_index = sprExtraFeetCloseDodge;	
			}
			if scrDrop(75,0)
				snd_play(sndExtraFeetDodge);
			else
				snd_play(sndExtraFeetDodgeFail);
		}
	}
	if instance_exists(projectile) && alarm[3] < 1
	{
		if extrafeetalarm < 1 
		{
		    if point_distance(x,y,projectile.x,projectile.y)<32//a close projectile is spotted
		    {
		        with projectile
		        {
			        if point_distance(x,y,other.x,other.y)<31 //&& !place_meeting(x,y,other) && !place_meeting(x+hspeed,y+vspeed,other)
					{//use close projectile
			            if team!=other.team//NOT FROM PLAYA!? O_O
			            {                     
							other.extrafeetalarm=13;//after this time we check if you've dodged this
							other.extrafeetdodged=true;
			            // change a variable here so that you cannot spawn even more items yo?
			            }
			        }
				}
		    }
		}
	}
}


/* */
///Delay before taking melee damage again
if meleeimmunity>0
meleeimmunity--;

/* */
///time and unlock

microseconds+=2;

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

if ((h_point != 0) || (v_point != 0))//&&!instance_exists(GenCont)&&!instance_exists(LevCont)&&UberCont.isPaused=0
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
if race=18
{
    if instance_exists(Floor) && instance_exists(Wall)
    {
    if flying>0
    {
    

    flying--;
    if flying<1
		mask_index=mskPlayer;
    }
    
     var ground = instance_nearest(x,y,Floor);
     var wall = instance_nearest(x,y,Wall);
     
        if !place_meeting(x,y,Floor)&&point_distance(x,y,wall.x,wall.y)>16&&point_distance(x,y,ground.x,ground.y)>28//OUT OF BOUNDS
        {
        motion_add(direction+180,speed);
        motion_add(point_direction(x,y,ground.x+16,ground.y+16),0.9);
        //if point_distance(x,y,wall.x,wall.y)>17
        //motion_add(direction,1);
        }
        
    }
    //GET HURT when flying too long unless acent ultra D
    if ( ( !place_meeting(x,y,Floor) || flying>0 || mask_index=mskPickupThroughWall || place_meeting(x,y,Wall) )  && !instance_exists(GenCont) && !instance_exists(LevCont) && ultra_got[72]==0 )//NOT ASCND ULTRA
    {
    //var wall = instance_nearest(x,y,Wall);
    var ground = instance_nearest(x,y,Floor);
    motion_add(point_direction(x,y,ground.x+16,ground.y+16),0.6);

    
    flyduration++
    }
    else
    {
    flyduration=0;
    //flypush=0;
    
    }
    if flyduration>flymax
    {my_health--;
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
    
if ultra_got[71]//tranquility
{
tranquilitydelay--;

if tranquilitydelay <=0
tranquilitydelay=0;
}
    
}



/* */
///Humphry thronebutt
if race = 26
{
	if HumphryLoss
	{
		if skill_got[5]
		{
			HumphryTBcount++;
		    HumphrySkill-= 1.25;
    
		    if HumphryTBcount>=8
		    {
		    if my_health<maxhealth
		    {
			    instance_create(x,y,HealFX)
    
			    snd_play(sndHealthPickup);
    
			    my_health++;
		    }
		    HumphryTBcount=0;
		    }
		}
		else
		{
			HumphrySkill-= 2;
		}
		if HumphrySkill<1
	    {
		    HumphrySkill=0
		    HumphryLoss = false;
	    }
	}
}


/* */
///Elementor fire ultra

if ultra_got[95]
{
with instance_create(x,y,Flame)
{motion_add(other.direction+180+random(60)-30,0.4+random(2.5))
team = other.team
depth=-1;}

}

/* */
///moddelay
if moddelay>0
moddelay--;

/* */
///Rogue  heat
if (RogueHeat==true)
{
    if ( instance_number(enemy) < BackCont.enemiesInStartLevel * 0.8 )
    {
    instance_create(x,y,IDPDSpawn);
    RogueHeat=false
    }
}

/* */
///Lets try aggro
if crown = 18//Crown of disco
{
	with enemy
	{
		if alarm[1]>8
			alarm[1]=8;
	}
}
if crown == 10 //Crown of difficulty
{
	with enemy
	{
		if alarm[1] > 1 && alarm[1] < 10
			alarm[1] = 1;
	}
}	
wave += 0.4;//Looping animations

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
			
			hammerheadtimer += 1;

			alarm[5]=12;//timer before hammerhead continuation stops
			
			if hammerheadtimer > 8 || instance_exists(SheepStorm)
			{
				hammerheadcounter --;
				var debrisAmount = 4;
				var debrisMultiply = 2;
				if (hammerheadcounter > 0)
				{
					snd_play(sndHammerHeadProc);
					scrDrop(1,0.5);
				}
				else
				{
					snd_play(sndHammerHeadEnd);
					scrDrop(20,10);
					nearWall = false;
					debrisAmount += 2;
					debrisMultiply += 2;
				}
				instance_create(x,y,WallBreak);
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
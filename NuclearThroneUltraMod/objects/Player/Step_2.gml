/// @description WepPickup
if (instance_exists(WepPickup) || instance_exists(ThrowWep)) && !instance_exists(GenCont) && !instance_exists(LevCont)  && !instance_exists(SpiralCont){

	targetPickup = instance_nearest(x,y,WepPickup);
	var prange = 36;
	if ultra_got[66] && altUltra
		prange = 48;
	if targetPickup == noone || point_distance(x,y,targetPickup.x,targetPickup.y) >= prange
		targetPickup = instance_nearest(x,y,ThrowWep);
	
	if targetPickup != noone && point_distance(x,y,targetPickup.x,targetPickup.y) < prange  && targetPickup.visible && targetPickup.alarm[1] < 1
	{
		with UberCont
		{
			if (!wep_found[other.race, other.targetPickup.wep]) {
				wep_found[other.race,other.targetPickup.wep] = true;
				any_wep_found[other.targetPickup.wep] = true;
				var saveFileString;
				saveFileString="ntultra"+string(version)+".sav";
				ini_open(saveFileString);
					ini_write_real("STATS","wep_found"+string(other.race)+"-"+string(other.targetPickup.wep),1);
					ini_write_real("STATS","any_wep_found"+string(other.targetPickup.wep),1);
				ini_close();
			}
		}
		var isGold = false;
		if targetPickup.wep == 239//ROCKET GLOVE GM UNLOCK
			scrUnlockGameMode(13,"FOR FINDING A ROCKET GLOVE")
		if targetPickup.wep == 315//ROCKET GLOVE GM UNLOCK
			scrUnlockCharacter(20,"FOR FINDING AND STEALING#THE MONEY GUN")
		//UNLOCK GOLDEN WEAPONf
		if scrCheckGold(wep_name[targetPickup.wep])
		{
			isGold = true;
			scrUnlockGoldWeapon(targetPickup.wep);
		}
		//first get ammo
		if targetPickup.ammo > 0 and (wep_type[targetPickup.wep] != 0 || (ultra_got[68] && !altUltra))
		{
			ammoMultiple = 2;
			if ultra_got[68] && !altUltra
			{
				ammoMultiple = 4;
				if wep_type[targetPickup.wep] == 0
					ammoMultiple = 0;
				var allammotypes=5;
				repeat(5)
				{
					ammo[allammotypes] += typ_ammo[allammotypes]
					if ammo[allammotypes] > typ_amax[allammotypes]
						ammo[allammotypes] = typ_amax[allammotypes]
					if (UberCont.opt_ammoicon)
					{
						dir = instance_create(x,y,PopupText);
						dir.sprt = sprAmmoIconsPickup
						dir.ii = allammotypes-1;
						dir.mytext = "+"+string(typ_ammo[allammotypes]);
						if ammo[allammotypes] = typ_amax[allammotypes]
							dir.mytext = "MAX";
					}
					else
					{
						dir = instance_create(x,y,PopupText)
						dir.mytext = "+"+string(typ_ammo[allammotypes])+" "+string(typ_name[allammotypes])
						if ammo[allammotypes] = typ_amax[allammotypes]
							dir.mytext = "MAX "+string(typ_name[allammotypes])
					}
					allammotypes--;
				}
				snd_play(sndAmmoPickup);
				var num = 3;
				if skill_got[9]//Second stomache
				{
					num = 6;
					snd_play(sndHealthPickupUpg);
					with instance_create(x,y,HealFX)
					{
						sprite_index = sprHealBigFX;
					}
				}
				else
				{
					snd_play(sndHealthPickup);
					instance_create(x,y,HealFX);
				}
				if my_health < maxhealth
					my_health += clamp(my_health+num,my_health,maxhealth);
				if UberCont.opt_ammoicon
				{
					dir = instance_create(x,y,PopupText)
					dir.sprt = sprHPIconPickup;
					dir.mytext = "+"+string(num)
					if my_health = maxhealth
						dir.mytext = "MAX"
					else if my_health > maxhealth
						dir.mytext = "OVER MAX"
				}
				else
				{
					dir = instance_create(x,y,PopupText)
					dir.mytext = "+"+string(num)+" HP"
					if my_health = maxhealth
						dir.mytext = "MAX HP"
					else if my_health > maxhealth
						dir.mytext = "OVER MAX HP"
				}
			
				scrRaddrop(60);
			}
			if scrIsCrown(20) && ammoMultiple > 0//Crown of protection
			{
				ammoMultiple -= 2;
				if (canCrownOfProtection)
				{
					scrArmourPickup(1);
				}
				canCrownOfProtection = !canCrownOfProtection;
			}
			
			if ammoMultiple > 0{
				ammo[wep_type[targetPickup.wep]] += typ_ammo[targetPickup.wep_type[targetPickup.wep]]*ammoMultiple
				if ammo[wep_type[targetPickup.wep]] > typ_amax[targetPickup.wep_type[targetPickup.wep]] && !ultra_got[26]
					ammo[wep_type[targetPickup.wep]] = typ_amax[targetPickup.wep_type[targetPickup.wep]]
				snd_play(sndAmmoPickup,0,true);
				if (UberCont.opt_ammoicon)
				{
					dir = instance_create(x,y,PopupText);
					dir.sprt = sprAmmoIconsPickup
					dir.ii = targetPickup.wep_type[targetPickup.wep]-1;
					dir.mytext = "+"+string(typ_ammo[wep_type[targetPickup.wep]]*ammoMultiple);
					if ammo[wep_type[targetPickup.wep]] == typ_amax[targetPickup.wep_type[targetPickup.wep]]
						dir.mytext = "MAX";
				}
				else
				{
					dir = instance_create(x,y,PopupText)
					dir.mytext = "+"+string(typ_ammo[wep_type[targetPickup.wep]]*ammoMultiple)+" "+string(typ_name[wep_type[targetPickup.wep]])
					if ammo[wep_type[targetPickup.wep]] == typ_amax[targetPickup.wep_type[targetPickup.wep]]
						dir.mytext = "MAX "+string(typ_name[wep_type[targetPickup.wep]])
				}
			}
			targetPickup.ammo = 0
		}

		if KeyCont.key_pick[p] = 1 && targetPickup.visible == true
		{
			KeyCont.key_pick[p] = 2;
			if curse = 0 || targetPickup.curse == curse or bwep == 0 || (cwep == 0 && ultra_got[31])
			{
				if ultra_got[68] && !altUltra//Weapon smith scrapfinder
				{
					snd_play_2d(choose(sndSpark1,sndSpark2),0.1,true);
					var angl = random(360);
					var anglStep = 360 / 3;
					repeat(3)
					{
					with instance_create(x,y,Lightning)
					{image_angle = angl
					accuracy=0;
					team = other.team
					ammo = 16;
					event_perform(ev_alarm,0)
					with instance_create(x,y,LightningSpawn)
					image_angle = other.image_angle}
					angl += anglStep;
					}
				}
			instance_create(x,y,WepSwap);
			if !isGold
			{
				onlyusemegold = false;	
			}
			if !targetPickup.pickedup
				weaponspickedup+=1;

			if scrCheckGold(wep_name[targetPickup.wep])
			{
				snd_play(sndGoldPickup);
			}

			//GUN GAME
			if weaponspickedup>=50
				scrUnlockGameMode(11,"FOR PICKING UP 50 WEAPONS THIS RUN")

			//favourable BUILD GAMMODE
			if scrFavourableWeapons(targetPickup.wep)
			scrUnlockGameMode(2,"FOR PICKING UP A FAVOURABLE WEAPON")

			//SKINS
			if targetPickup.wep == 328 || targetPickup.wep == 633//BLACK SWORD
			scrUnlockBSkin(9,"FOR PICKING UP THE BLACK SWORD",0);

			if targetPickup.wep == 329 || targetPickup.wep == 634//Dark sword
			scrUnlockCSkin(9,"FOR TOUCHING DEATH ITSELF",0);

			if scrToxicWeapons(targetPickup.wep, wep_name[targetPickup.wep]) && !targetPickup.pickedup && race = 23
			{
			toxicweaponsfound++;
			if toxicweaponsfound>=2
			scrUnlockBSkin(23,"BY USING 2 DIFFERENT TOXIC WEAPONS#IN ONE RUN AS FROG",0)
			}

			snd_play(sndWeaponPickup)
			if bwep == 0
			{
				bcurse = curse
				isPermanentB = isPermanent;
				hasBeenEatenB = hasBeenEaten;
				if ultra_got[29] && altUltra && bwep == 0 && wep != 0//ROBOT EXCLUSIVE TASTE
				{
					maxhealth -= 4;
				}
				bwep = wep
				bwepmod1 = wepmod1;
				bwepmod2 = wepmod2;
				bwepmod3 = wepmod3;
				bwepmod4 = wepmod4;
			}
			else if cwep == 0 && ultra_got[31]//robot ultra third wep
			{
				ccurse = curse
				isPermanentC = isPermanent;
				hasBeenEatenC = hasBeenEaten;
				cwep = wep
				cwepmod1 = wepmod1;
				cwepmod2 = wepmod2;
				cwepmod3 = wepmod3;
				cwepmod4 = wepmod4;
			}
			else if wep != 0
			{
				var tx = targetPickup.x;
				var ty = targetPickup.y;
		
				if ultra_got[66] && altUltra
				{
					tx = x;
					ty = y;
					alarm[3] = max(alarm[3],4);
					snd_hurt = sndDamageNegate;
					scrGiveEuphoriaShield();
				}
				with instance_create(tx,ty,WepPickup)
				{
					pickedup=true;
					scrWeapons()
					wep = other.wep;
					name = wep_name[wep];
					type = wep_type[wep];
					curse = other.curse;
					isPermanent = other.isPermanent;
					hasBeenEaten = other.hasBeenEaten;
					wepmod1 = other.wepmod1;
					wepmod2 = other.wepmod2;
					wepmod3 = other.wepmod3;
					wepmod4 = other.wepmod4;
					//alarm[0] = 0; Can't heavy heart this? Let's try it this out first it seems fun
					sprite_index = wep_sprt[wep]
					ammo = 0
					if isPermanent
						persistent = true;
				}
			}
			if reload > 0{
				scrFlexibleElbowReload(wep);
			}
			wep = targetPickup.wep
			curse = targetPickup.curse
			if ultra_got[72] && !altUltra && curse != 0
			{
				snd_play_2d(sndUncurse);
				if scrIsCrown(14) {
					snd_play(sndHealthPickup);
					scrHeal(1,true);
				}
				curse = 0;
			}
			isPermanent = targetPickup.isPermanent;
			hasBeenEaten = targetPickup.hasBeenEaten;
			wepmod1 = targetPickup.wepmod1
			wepmod2 = targetPickup.wepmod2
			wepmod3 = targetPickup.wepmod3
			wepmod4 = targetPickup.wepmod4
			can_shoot = 1
			
			reload = min(reload,0)
			queueshot = 0;
			if skill_got[35]
			{
				var lowa = wep_load[wep]*-2;
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
			}

			if wep == 298//golden oops gun
			{
				steam_shutdown();
				game_end();
			}


			snd_play(wep_swap[wep])
			if (curse)
			{
				snd_play(sndSwapCursed);
			}
			if (scrCheckGold(wep_name[targetPickup.wep]))
			{
				snd_play(sndSwapGold);	
			}
			dir = instance_create(x,y,PopupText)
			dir.mytext = string(wep_name[wep])+"!"
			if array_length(wep_popup) > wep && is_string(wep_popup[wep]) {
				with instance_create(x,y,PopupText)
				{
					alarm[1] += 30;
					theColour = c_silver;
					mytext = other.wep_popup[other.wep];
				}
			}

			//Done picking up
			scrWeaponHold();
			with targetPickup
			{
				instance_destroy(id,false)
			}
			}
			if ( wep != 0 && bwep != 0 && cwep != 0 && scrMeleeWeapons(wep) && scrMeleeWeapons(bwep) && scrMeleeWeapons(cwep))
			{
				scrUnlockGameMode(31,"FOR HOLDING#THREE MELEE WEAPONS");
			}
		}


	} else
		targetPickup = noone;
}
else
	targetPickup = noone;

var tookHit = false;
if my_health < prevhealth
{
	tookHit = true;
	if !exception && loops > 0
	{
		instance_create(x,y,DropReducer);
	}
	//Insakill
	if !exception && alarm[3] < 1
	{
		noHit = 0;
		if scrIsGamemode(32) || ultra_got[109]
		{
			my_health = 0;
			prevhealth = 0;
		}
		else if ultra_got[40] && my_health <= 0 && instance_exists(Ally) && instance_number(Ally) > 1
		{
			with instance_nearest(x,y,Ally)
			{
				my_health = 0;
				with instance_nearest_notme(x,y,Ally)
				{
					my_health = 0;
				}
			}
			my_health = 1;
		}
		if phoenixrevives > 0
		{
			with instance_create(x,y,Flame)
			{
				motion_add(random(360),4);
				team = other.team
			}
		}
	}
}
if skill_got[22]//Stress Sharp teeth part
{
	if tookHit && alarm[10] < 1 && alarm[3] < 1//I been hit
	{
		alarm[10]=25;
		sharpteeth = prevhealth - my_health;
		var multiplier = 2.5;
		if race = 25
			multiplier = 3//Sharp teeth's damage!
		if scrIsGamemode(24) //SHARP STRESS GAMEMODE
			multiplier *= level;
		if scrIsCrown(18) //Crown of greed
			multiplier *= 2
		snd_play_2d(sndSharpTeeth);
		with enemy {
			if team != other.team && //x > __view_get( e__VW.XView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y > __view_get( e__VW.YView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
			point_distance(x,y,other.x,other.y) < 250
			{
				snd_play(snd_hurt, hurt_pitch_variation,true)
				Sleep(10)
				my_health -= other.sharpteeth*multiplier//Sharp teeth's damage!
				sprite_index = spr_hurt
				image_index = 0
				motion_add(
				point_direction(other.x,other.y,x,y),8);
				with instance_create(x,y,SharpTeeth)
					owner=other.id;
			}
		}
	}
}
//Extra feet consider failed dodge
if skill_got[2] && tookHit && !exception
{
	extrafeetalarm = 35;
	extrafeetdodged = false;
}
if skill_got[38] && tookHit && alarm[3] < 1 && alarm[1] < 1
{
	metabolism += 1;
	if metabolism > 2
	{
		metabolism = 0;
		my_health = prevhealth;
		audio_stop_sound(snd_hurt);
		snd_play_2d(sndMetabolism,0.1);
		//scrGiveEuphoriaShield();
		if race == 25//Doctor
			scrCollectAmmo(1.75);
		else
			scrCollectAmmo(1.5);
		tookHit = false;
	}
}

//Crown of Greed
if scrIsCrown(18) && !exception
{
	if tookHit && !instance_exists(GenCont) && !instance_exists(LevCont)
	{
		var dmgTaken = prevhealth-my_health;
		my_health -= dmgTaken;
	}
}
///tough shell
var damageReduced = 0;
if (skill_got[31])
{
	if (tookHit && hardshell == true )
	{
	var dmgTaken = prevhealth-my_health;
	    if (( dmgTaken > 4 ) && ( prevhealth-4 != 0 ) && race = 25  )
	    {
	    my_health+=2;
		damageReduced += 2;
	    hardshell=false;
	    }
	    else if (( dmgTaken > 1 ) && ( prevhealth-1 != 0 )  )
	    {
	    my_health+=1;
		damageReduced += 1;
	    hardshell=false;
	    }
		if damageReduced > 0
		{
			snd_play(sndHitRock);
			repeat(4)
			with instance_create(x,y,Debris)
			{
				speed *= 1.6;
			}
		}
	}

	if (sprite_index!=spr_hurt)
		hardshell=true;
}

/* */
///Rogue blast armour
if race=22
{
	blastArmourDelay --;
	if tookHit//&&sprite_index=spr_hurt
	{
		event_user(0);
	}
}
if race == 25 && tookHit
{
	repeat(2 + (prevhealth - my_health))
	{
		with instance_create(x+random(16)-8,y+random(16)-8,RavenFeather)
		{
			image_index = 1;
		}
	}
}
/* */
///imunity codes
if ultra_got[48]&&lag>0
{
if tookHit&&my_health!=maxhealth&&alarm[3]<1&&!exception
{lag-=1;


alarm[3] = max(alarm[3],14);//before your lag lowers again}
}
}

//if race=16 || race = 17 || race = 19 || race = 20 || race = 21//Viking and Gunsmith use armour and Skeleton and businesshog actually
//{
if armour > 0
{
	if tookHit && /*my_health != maxhealth && */alarm[3] < 1&& !exception
	{
		tookDamageThisArea = true;
		armour -= 1;
		sprite_index = spr_hurt;
		image_index = 0;
		canAnimateDuringImmune = 0;
		hurtTime = 0;
		snd_play(sndLostArmour);
		alarm[3] = max(alarm[3],8);//before your armour lowers again}
		if skill_got[28] == 1
		{
			//rage = 0;
			rage = max(floor(rage-50),0);
		}
		scrBlankArmour();
		if ultra_got[64]
			scrSerpentArmourStrike();
	}
	if armour > maxarmour
		armour = maxarmour;
}

//}
if alarm[3] > 0/*|| lag>0 *//*&&my_health!=maxhealth*/&& !exception
{
	if sprite_index == spr_hurt
	{
		if canAnimateDuringImmune > -1 && canAnimateDuringImmune < 3
		{
			if UberCont.normalGameSpeed == 60
				canAnimateDuringImmune += image_speed * 0.5;
			else
				canAnimateDuringImmune += image_speed;
		}
		else 
		{
			if speed > 0
				sprite_index = spr_walk;
			else
				sprite_index = spr_idle;
		}
	}
	if tookHit
	{
		my_health = prevhealth;
	}
}

if (tookHit)
{
	//Took a hit?
	if (skill_got[32] && isAlkaline/* && lag < 1 && armour < 1*/ && exception=false)//Alkaline Savila
	{
		var damageTaken = (prevhealth - my_health) + damageReduced;
		//Needs to be healable or lethal
		if ((damageTaken > 0 /*&& prevhealth < maxhealth) || (my_health <= 0 &&  armour < 1*/))
		{
			isAlkaline = false;
			var healTaken = 0;
			if my_health < maxhealth
			{
				healTaken = 1;
				if race == 25//Doctor buff
					healTaken += 1
				if (skill_got[9]) //Second stomache
				{
					healTaken += 1;
					with instance_create(x,y,HealFX)
					{
						sprite_index = sprHealBigFX;
						depth = other.depth - 1;	
					}
				}
				else
				{
					with instance_create(x,y,HealFX)
					{
						depth = other.depth - 1;	
					}
				}
				my_health = min(maxhealth,prevhealth+healTaken);
			}
			else
				my_health = prevhealth;
			
			with instance_create(x,y,SharpTeeth)
				owner=other.id;
			snd_play(sndAlkalineProc,0,true);
			var pt = instance_create(x,y,PopupText)
			if UberCont.opt_ammoicon
			{
				if my_health == maxhealth
					pt.mytext = "MAX";
				else if my_health > maxhealth
					pt.mytext = "OVER MAX"
				else
					pt.mytext = "+"+string(healTaken);
				
				pt.sprt = sprHPIconPickup;
			}
			else
			{
				if my_health = maxhealth
					pt.mytext = "MAX HP";
				else if my_health > maxhealth
					pt.mytext = "OVER MAX"
				else
					pt.mytext = "+"+string(healTaken)+" HP";
			}
			Sleep(50);
		}
	}
	if skill_got[12]//euphoria resistance?
	{
		if !instance_exists(GenCont)&&(!instance_exists(myShield) || myShield == -1)&&!instance_exists(LevCont)&&exception=false
		{
			if race=25
				alarm[3] = max(18,alarm[3]);
			else
				alarm[3] = max(alarm[3],16);//duration
			canAnimateDuringImmune = 0;
			snd_hurt = sndDamageNegate;
			instance_create(x,y,EuphoriaBlock);
			scrGiveEuphoriaShield();
		}
	}
}

/* */
///strong spirit justasheep
if(my_health <= 0 && maxhealth > 0)
{

    if skill_got[25]//strong spirit
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
	    }
    }
    if ultra_got[103] && humphrySkill >= 200 && (skill_got[25]=0||strongspiritused=true)//Humphry Protective mustache C
    {
	    humphrySkill=0;
		Sleep(50);
		BackCont.shake += 10;
		snd_play_2d(sndProtectiveMustache,0,true);
		alarm[3] += 15;
		snd_hurt = sndDamageNegate;
		scrGiveEuphoriaShield();
		with PlayerAlarms
			alarm[7] = 10;
	    my_health = 1;
    }
	//BOUNCY FAT
	if (skill_got[40] && my_health <= 0 && maxhealth > 0 && scrHasAmmo())
	{
		snd_play_2d(sndBounceFat);
		instance_create(x,y,BouncyFatFX);
		repeat(3)
		{
			with instance_create_depth(x,y,depth,Dust)
			{
				speed += 2.5;
				friction = 0.2;
				image_xscale += 0.2;
				image_yscale += 0.2;
				growspeed += 0.06;
				rot *= 1.5;
				sprite_index = sprBubble;
			}
		}
		BackCont.shake += 10;
		Sleep(50);
		my_health = 1;
		var al = 6;//weapon types total
		var takePercentage = 0.71; 
		if race == 25
			takePercentage = 0.67;
		var baseammo;
		baseammo[1] = 255 baseammo[2] = 55 baseammo[3] = 55 baseammo[4] = 55 baseammo[5] = 55;
		var lostAmmo = 0;
		for (var i = 1; i < al; i++) {
			if (ammo[i] < 0) {
				takePercentage += 0.03;
			}
		}
		for (var i = 1; i < al; i++) {
			var wasAbove = (ammo[i] > 0);
			var usePercentage = takePercentage;
			if i == wep_type[wep] || i == wep_type[bwep] {
				usePercentage -= 0.2;
			}
			if !wasAbove
				usePercentage -= 0.05;
			ammo[i] = floor(ammo[i] - (baseammo[i]*usePercentage));
			if wasAbove && ammo[i] <= 0 {
				lostAmmo++
			}
		}
		if lostAmmo > 0 {
			if ultra_got[70]
			{
				scrHeal(lostAmmo*2);
				snd_play_2d(sndHealthPickup);
			}
			if scrIsCrown(13)
			{
				repeat(lostAmmo)
					with Crown {
						event_user(0);	
					}
			}
		}
		if !scrHasAmmo()
		{
			scrEmpty();	
		}
	}
	if my_health <= 0 {
		if lastWishPrevent {
			BackCont.shake += 20;
			Sleep(100);
			my_health = max(1,round(maxhealth*0.5));
			if race == 25
				my_health += 3;
			lastWishPrevent = false;
			snd_hurt = sndDamageNegate;
			snd_play_2d(sndMutLastWish);
			scrGiveEuphoriaShield();
			alarm[3] += 23;
		}
	}
}



if my_health < prevhealth && exception=false// && alarm[3] < 1//I been hit
{
	tookDamageThisArea = true;
	///rage
	if skill_got[28] == 1
	{
		//rage = 0;
		rage = max(floor(rage-50),0);
	}
	if (race == 26 || copyPassive == 26) && humphrySkill > 0//Humphry
	{
		if skill_got[5]
			humphrySkill *= 0.75;
		else
			humphrySkill *= 0.7;
		with PlayerAlarms
			alarm[7] = max(alarm[7],10);
	}
}


// Audio
audio_listener_position(x, y, depth*10);

exception = false;
if rollIframe > 0
{
	if UberCont.normalGameSpeed == 60
		rollIframe -= 0.5;
	else
		rollIframe --;
	mask_index = mskPlayer;
	if place_meeting(x,y,WallHitMe)
	{
		move_outside_solid(direction+180,8);
		move_contact_solid(direction,max(1,min(maxSpeed,speed)))
		if !place_free(x+hspeed,y){hspeed /= 2
		if !place_free(x+hspeed,y) hspeed = 0}
		if !place_free(x,y+vspeed){vspeed /= 2
		if !place_free(x,y+vspeed)vspeed = 0}
		//speed  = 0;
	}
	if rollIframe > 0
	{
		mask_index = mskPickupThroughWall;	
		var hitEnems = ds_list_create();
		var al = collision_circle_list(x,y,22,enemy,false,false,hitEnems,false);
		for (var i = 0; i < al; i++) {
			scrContactDamageToEnemy(hitEnems[| i]);	
		}
	}
}

if my_health <= 0 && armour < 1
{
	my_health = 0
	if altUltra && ultra_got[33] && level > 1//PHOENIX secret chicken ultra
	{
		var gottenSkills = [];
		var si = 0;
		repeat(maxskill)
		{
			if skill_got[si]
			{
				array_push(gottenSkills,si);
			}
			si++;
		}
		//Its possible to have a skillpoint so leveled up but not have a skill to lose yet
		if array_length(gottenSkills) > 0
		{
			var chosenSkillToLose = gottenSkills[irandom(array_length(gottenSkills)-1)]
			scrLoseSkill(chosenSkillToLose);
			with instance_create(x,y,PopupText)
			{
				mytext = "LOST "+other.skill_name[chosenSkillToLose];
			}
		}
		else if skillpoints > 0
		{
			skillpoints --;
			level --;
		}
		else
			level --;
		phoenixrevives++;
		if phoenixrevives > 2
		{
			with PlayerAlarms2
			{
				alarm[2] = 1;	
			}
			if phoenixrevives == 5 || phoenixrevives == 12
				pSpeedBoost += 0.1
			if phoenixrevives == 7 || phoenixrevives == 8
				maxSpeed += 0.1;
			if phoenixrevives == 6 || phoenixrevives == 10
			{
				standartAccuracy -= 0.1;
				accuracy -= 0.1;
			}
			if phoenixrevives == 9
				maxhealth ++;
		}
		rad = 0;
		my_health = 1;
		prevhealth = 1;
		snd_play_2d(sndPhoenixChicken);
		snd_hurt = sndDamageNegate;
		scrGiveEuphoriaShield();
		alarm[3] = clamp(1 + phoenixrevives,alarm[3],30);
		snd_play(sndFlameCannonEnd,0.1,true);
		var ang = direction + 180;
		var am = min(44,23 + (phoenixrevives*2));
		var angstep = 360/am;
		repeat(am)
		{
			with instance_create(x,y,Flame)
			{
				motion_add(ang,min(16,random(2)+5 + other.phoenixrevives))
				team = other.team
				ang += angstep;
			}
		}
		Sleep(min(40,20 + (phoenixrevives*2)));
		BackCont.shake += min(50,20 + (phoenixrevives*2));
	}
	else if race = 9 and bleed < 150 and !(altUltra && ultra_got[33])
	{
		if bleed == 0
		{
			bleed = 1;
			maxhealth-=2;
			if maxhealth<0
			{maxhealth=0}

			snd_play(sndChickenLoseHead)
			snd_loop(sndChickenHeadlessLoop)
			repeat(12){
			with instance_create(x,y,BloodStreak){
			motion_add(random(360),2+random(3))
			image_angle = direction}}



			if bskin=2
			{
				spr_idle = sprMutant9CHeadlessIdle
				spr_hurt = sprMutant9CHeadlessHurt
				spr_walk = sprMutant9CHeadlessWalk
			}
			else {
				if altUltra && ultra_got[35]
				{
					spr_idle = sprMutant9DHeadlessIdle
					spr_hurt = sprMutant9DHeadlessHurt
					spr_walk = sprMutant9DHeadlessWalk
				}
				else
				{
					spr_idle = sprMutant9HeadlessIdle
					spr_hurt = sprMutant9HeadlessHurt
					spr_walk = sprMutant9HeadlessWalk
				}
			}

			myCorpse = instance_create(x,y,MovingCorpse)
			with myCorpse
			{
			mySize = 2
			mask_index = other.mask_index
			motion_add(other.direction,other.speed)
			speed += max(0,-other.my_health/5)
			if other.bskin=2
			sprite_index = mskPickupThroughWall;//invisible basicly
			else if other.bskin=1
			{
				sprite_index = sprMutant9BHeadIdle;
				if other.altUltra && other.ultra_got[35]
					sprite_index = sprMutant9EHeadIdle;
			}
			else if other.bskin == 3
			{
				sprite_index = sprMutant9DHeadIdle;
			}
			else if other.bskin == 4
			{
				sprite_index = sprMutant9EHeadIdle;
			}
			else
			{
				sprite_index = sprMutant9HeadIdle;
				if other.altUltra && other.ultra_got[35]
					sprite_index = sprMutant9DHeadIdle;
			}
			image_xscale = other.right
			if speed > 16
			speed = 16
			}

			Sleep(60)
		}

		if random(12) < 1{
		with instance_create(x,y-4,BloodStreak){
		motion_add(45+random(90),2+random(3))
		image_angle = direction}}

		if bleed > 100
		{
			with instance_create(x,y,BloodStreak){
			motion_add(random(360),2+random(3))
			image_angle = direction}
		}
		if !instance_exists(LevCont) && !instance_exists(GenCont) && !place_meeting(x,y,Portal) && !instance_exists(SpiralCont)
		{
			if UberCont.normalGameSpeed == 60
				bleed += 0.5;
			else
				bleed += 1;
		}
		my_health = 0
	}
	else
		instance_destroy();
		
}

if scrIsCrown(23)//Crown of speed
{
	var multi = 1.2;
	var add = 4;
	if UberCont.normalGameSpeed == 60
	{
		multi = 1.1;
		add = 2;
	}
	with enemy
	{
		if speed < 10 
		{
			if walk > 0
			{
				speed += 2;	
				speed *= 1.25;
			}
			else if speed > 2
			{
				speed *= 1.1
			}
		}
	}
}
if scrIsCrown(24)//Crown of sloth
{
	with enemy
	{
		speed *= 0.9;	
	}
}
if ultra_got[51] && altUltra
{
	with enemy
	{
		speed *= 0.8;
		if alarm[1] > 1
			alarm[1] += 0.3;
	}
}
if (!canHeal)
{
	if my_health > prevhealth
	{
		my_health = prevhealth;	
	}
}
if alarm[3] > 0
	snd_hurt = sndDamageNegate;
if scrIsCrown(29)
{
	var wantHealth = 0
	if wepmod1 != 0
		wantHealth += 1;
	if wepmod2 != 0 
		wantHealth += 1;
	if wepmod3 != 0
		wantHealth += 1;
	if wepmod4 != 0
		wantHealth += 1;
	if wantHealth != isPureHealthBoost
	{
		maxhealth += wantHealth - isPureHealthBoost;
		isPureHealthBoost += wantHealth - isPureHealthBoost;
	}
}

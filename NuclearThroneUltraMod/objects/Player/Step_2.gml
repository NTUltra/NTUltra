/// @description WepPickup
if instance_exists(WepPickup) && !instance_exists(GenCont) && !instance_exists(LevCont)  && !instance_exists(SpiralCont){

	targetPickup = instance_nearest(x,y,WepPickup);
	var prange = 36;
	if ultra_got[66] && altUltra
		prange = 48;
	if targetPickup != noone && point_distance(x,y,targetPickup.x,targetPickup.y) < prange  && targetPickup.visible
	{
		var isGold = false;
		if targetPickup.wep == 239//ROCKET GLOVE GM UNLOCK
				scrUnlockGameMode(13,"FOR FINDING A ROCKET GLOVE")
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
				if Player.ultra_got[62] && Player.altUltra //Living armour
				{
					scrArmourPickup(1);
				}
				else
				{
					my_health += 1;
					var num = 1;
					if skill_got[9]//Second stomache
					{
						num = 2;
						snd_play(sndHealthPickupUpg,0,true);
						with instance_create(x,y,HealFX)
						{
							sprite_index = sprHealBigFX;
						}
					}
					else
					{
						snd_play(sndHealthPickup,0,true);
						instance_create(x,y,HealFX);
					}
					if UberCont.opt_ammoicon
					{
						dir = instance_create(x,y,PopupText)
						dir.sprt = sprHPIconPickup;
						dir.mytext = "+"+string(num)
						if my_health > maxhealth
							dir.mytext += "#OVERHEAL!"
					}
					else
					{
						dir = instance_create(x,y,PopupText)
						dir.mytext = "+"+string(num)+" HP"
						if my_health > maxhealth
							dir.mytext += "#OVERHEAL!"
					}
				}
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
			if curse = 0 || targetPickup.curse == curse or bwep = 0 || (cwep = 0 && ultra_got[31])
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
					visible = 0
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

			//some one wep only unlocks that odont really count as unlockables
			if targetPickup.wep == 298//golden oops gun
			{
			with UberCont
			{
			oneweponly298=1
			scrSave();
			}
			}
			if targetPickup.wep == 315//moneygun
			{
				scrUnlockCharacter(20,"FOR STEALING THE MONEY GUN")
			with UberCont
			{
			oneweponly315=1
			scrSave();
			}
			}
			if targetPickup.wep == 329//dark sword
			{
			with UberCont
			{
			oneweponly329=1
			scrSave();
			}
			}
			if targetPickup.wep == 177//time thrower
			{
			with UberCont
			{
			oneweponly177=1
			scrSave();
			}
			}
			if targetPickup.wep == 192//time bomb
			{
			with UberCont
			{
			oneweponly192=1
			scrSave();
			}
			}
			if targetPickup.wep == 69//oops gun
			{
			with UberCont
			{
			oneweponly69=1
			scrSave();
			}
			}
			if targetPickup.wep == 75//idkwid
			{
			with UberCont
			{
			oneweponly75=1
			scrSave();
			}
			}
			if targetPickup.wep == 264//broken ster gun
			{
			with UberCont
			{
			oneweponly298=1
			scrSave();
			}
			}
			if targetPickup.wep == 328//black sword
			{
			with UberCont
			{
			oneweponly328=1
			scrSave();
			}
			}
			if targetPickup.wep == 231//guitar
			{
			with UberCont
			{
			oneweponly231=1
			scrSave();
			}
			}
			if targetPickup.wep == 263//electric guitar
			{
			with UberCont
			{
			oneweponly263=1
			scrSave();
			}
			}
			if targetPickup.wep == 214//viking great axe
			{
			with UberCont
			{
			oneweponly214=1
			scrSave();
			}
			}
			if targetPickup.wep == 316//hunter heavy sniper
			{
			with UberCont
			{
			oneweponly316=1
			scrSave();
			}
			}


			snd_play(sndWeaponPickup)
			if bwep = 0
			{
				bcurse = curse
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
			else if cwep = 0 && ultra_got[31]//robot ultra third wep
			{
				ccurse = curse
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
					alarm[3] = max(alarm[3],6);
					if myShield == -1 || !instance_exists(myShield)
					{
						myShield = instance_create(x,y,EuphoriaShield);
						with myShield
						{
							owner = other.id;
						}
					}
				}
				with instance_create(tx,ty,WepPickup)
				{
					pickedup=true;
					scrWeapons()
					wep = other.wep;
					name = wep_name[wep];
					type = wep_type[wep];
					curse = other.curse;
					wepmod1=other.wepmod1;
					wepmod2=other.wepmod2;
					wepmod3=other.wepmod3;
					wepmod4=other.wepmod4;
					//alarm[0] = 0; Can't heavy heart this? Let's try it this out first it seems fun
					sprite_index = wep_sprt[wep]
					ammo = 0
				}
			}

			wep = targetPickup.wep
			curse = targetPickup.curse
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
				} else if reload <= lowa && queueshot < 2
				{
					queueshot++;
					scrPlayReloadSound(wep);
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

			//Done picking up
			scrWeaponHold();
			with targetPickup
				instance_destroy()
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
	//Insakill
	if !exception && alarm[3] < 1
	{
		noHit = 0;
		if scrIsGamemode(32) || ultra_got[109]
		{
			my_health = 0;
			prevhealth = 0;
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
//Extra feet consider failed dodge
if skill_got[2] && tookHit && !exception
{
	extrafeetalarm = 30;
	extrafeetdodged = false;
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

/* */
///imunity codes
if ultra_got[48]&&lag>0
{
if tookHit&&my_health!=maxhealth&&alarm[3]<1&&!exception
{lag-=1;


alarm[3] = max(alarm[3],15);//before your lag lowers again}
resetPrevHealth = true;
}
}

if race=16 || race = 17 || race = 19 || race = 20 || race = 21//Viking and Gunsmith use armour and Skeleton and businesshog actually
{
if armour>0
{

	if tookHit&&my_health!=maxhealth&&alarm[3]<1&&!exception
	{armour-=1;


	snd_play(sndLostArmour);
	alarm[3]=max(alarm[3],5);//before your armour lowers again}
	resetPrevHealth = true;

	scrBlankArmour();



	}
if armour>maxarmour
armour=maxarmour;
}

}
if alarm[3] > 0/*|| lag>0 *//*&&my_health!=maxhealth*/&& !exception
{
	if tookHit
	{
		my_health = prevhealth;
	}
}



if skill_got[22]//Stress Sharp teeth part
{
if tookHit&&alarm[10]<1//I been hit
{
alarm[10]=30;
sharpteeth = prevhealth - my_health - damageReduced;
var multiplier = 2.5;
if race = 25
multiplier*=1.25//Sharp teeth's damage!
if scrIsGamemode(24) //SHARP STRESS GAMEMODE
	multiplier *= level;
snd_play_2d(sndSharpTeeth);
with enemy{
	if x > __view_get( e__VW.XView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y > __view_get( e__VW.YView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
	{
	//if sprite_index!=spr_hurt{
	snd_play(snd_hurt, hurt_pitch_variation,true)
	Sleep(10)
	my_health -= other.sharpteeth*multiplier//Sharp teeth's damage!
	sprite_index = spr_hurt
	image_index = 0
	motion_add(other.direction,6)



	with instance_create(x,y,SharpTeeth)
	owner=other.id;
	//}
	}
}

}
}
var resetPrevHealth = false;
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
			resetPrevHealth = true;
			
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
			alarm[3]=10;//duration of iframes
		}
	}
	if skill_got[12]//euphoria resistance?
	{
		if !instance_exists(GenCont)&&(!instance_exists(myShield) || myShield == -1)&&!instance_exists(LevCont)&&exception=false
		{
			resetPrevHealth = true;
			if race=25
				alarm[3]=30;
			else
				alarm[3]=26;//duration
			myShield = instance_create(x,y,EuphoriaShield);
			with myShield
			{
				owner = other.id;
			}
		}
	}
}

/* */
///strong spirit justasheep
if(my_health<=0 && maxhealth>0)
{

    if skill_got[25]//strong spirit
    {
    if strongspirit==true&&strongspiritused==false
    {
    snd_play(sndStrongSpiritLost);
    my_health=1;
	Sleep(50);
    alarm[1]=20;//invincibility 
    strongspiritused=true;
    strongspirit=false;
    }
    }
    if ultra_got[103] && humphrySkill >= 200 && (skill_got[25]=0||strongspiritused=true)//Humphry Protective mustache C
    {
    humphrySkill=0;
	snd_play_2d(sndProtectiveMustache,0,true);
	alarm[3] = max(alarm[3],20);
	if myShield == -1 || !instance_exists(myShield)
	{
		myShield = instance_create(x,y,EuphoriaShield);
		with myShield
		{
			owner = other.id;
		}
	}
	with PlayerAlarms
			alarm[7] = 20;
    my_health=1;
    alarm[1]=20;//invincibility 
    }
    
    if(alarm[1]>0)
    {
        my_health=1;
    }

}



if my_health < prevhealth && exception=false// && alarm[3] < 1//I been hit
{
	///rage
	if skill_got[28] == 1
	{
		//rage = 0;
		rage = max(floor(rage-50),0);
	}
	if race == 26 && humphrySkill > 0//Humphry
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
		my_health = maxhealth;
		prevhealth = maxhealth;
		snd_play_2d(sndPhoenixChicken);
		myShield = instance_create(x,y,EuphoriaShield)
		with myShield
		{
			owner = other.id
		}
		alarm[3] = 60 + (phoenixrevives*5);
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
	else if race = 9 and bleed < 150
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


			with instance_create(x,y,MovingCorpse)
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
	with enemy
	{
		speed *= 1.2;
	}
}
else if scrIsCrown(24)//Crown of sloth
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

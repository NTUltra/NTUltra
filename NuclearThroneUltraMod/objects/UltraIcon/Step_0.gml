if (UberCont.mouse__x < x+22 and UberCont.mouse__y < y+22 and UberCont.mouse__x > x-22 and UberCont.mouse__y > y-22)
{
	with UltraIcon
		selected = false;
	with SkillIcon
		selected = false;
		
	selected = true;
	with UberCont
	{
		selectedIndex = other.skillIndex;	
	}
}
if (selected && visible &&
((KeyCont.key_fire[p] == 1 || KeyCont.key_pick[p] == 1) && (!mouse_check_button_pressed(mb_left) || (UberCont.mouse__x < x+22 and UberCont.mouse__y < y+22 and UberCont.mouse__x > x-22 and UberCont.mouse__y > y-22)))
&& ((alarm[0]<1) ) || (exceptionclick && (alarm[0]<1)))
{
	KeyCont.key_fire[p] = 2;
	KeyCont.key_pick[p] = 2;
	if Player.ultra_got[0] == 1 && !Player.altUltra && (skill < 29 || skill > 32)
		Player.horrorEtaken = true;
	var regularprocedure=true;
	Player.ultra_got[skill] = 1
	Player.previousUltra = skill;
	Player.skillpoints -= 1

	if skill = 0
	{
		if Player.race == 21 && isAlternative
		{
			with Player
			{
				scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
				altUltra = true;
				scrUltras(true, false);
				cash = maxCash;
				inDebt = false;
				scrUnlockAltSkin(race, 0);
				spr_idle=sprMutant21DIdle;
				spr_walk=sprMutant21DWalk;
				spr_hurt=sprMutant21DHurt;
				spr_dead=sprMutant21DDead;
			}
		}
		else
		{
			Player.patience += 1;
			Player.skillpoints ++;
			Player.skillsChosen -= 1;
		}
	}
	else if skill == 1
	{
		with Player
		{
			skill_text[23] = "EXTRA CHESTS SPAWN#SEE CONTENTS OF WEAPON CHESTS#INCREASE CONFISCATE CHANCE#BY 25%##OPENING CHESTS#FULLY RELOADS YOUR WEAPONS"	
		}
	}
	else if skill == 9 && Player.race == 3 // Strange style
	{
		if isAlternative
		{
			with Player {
				scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
				altUltra = true;
				scrUltras(true, false);
				scrUnlockAltSkin(race, bskin);
				if bskin == 1 || bskin == 4
				{
					spr_idle=sprMutant3EIdle;
					spr_walk=sprMutant3EWalk;
					spr_hurt=sprMutant3EHurt;
					spr_dead=sprMutant3EDead;
				
				}
				else if bskin == 2 || bskin == 5
				{
					spr_idle=sprMutant3FIdle;
					spr_walk=sprMutant3FWalk;
					spr_hurt=sprMutant3FHurt;
					spr_dead=sprMutant3FDead;
				}
				else
				{
					spr_idle=sprMutant3DIdle;
					spr_walk=sprMutant3DWalk;
					spr_hurt=sprMutant3DHurt;
					spr_dead=sprMutant3DDead;
				}
			}
		}
	}
	else if skill == 10 && Player.race == 3 && isAlternative// Void style
	{
		with Player {
			scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
			altUltra = true;
			scrUltras(true, false);
		}
	}
	else if skill == 13 && isAlternative
	{
		with Player {
			scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
			altUltra = true;
			scrUltras(true, false);
			instance_create(x,y,DeathStare);
		}
	}
	else if skill == 19 && Player.race == 5 && isAlternative
	{
		with Player
		{
			scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
			altUltra = true;
			scrUltras(true, false);
			canKillKillKill = 3;
		}
	}
	else if skill == 20 && Player.race == 5 && isAlternative
	{
		with Player
		{
			scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
			altUltra = true;
			scrUltras(true, false);
			maxSpeed += 5.5;
		}
	}
	else if Player.race == 9 && skill == 33 && isAlternative
	{
		with Player
		{
			scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
			altUltra = true;
			scrUltras(true, false);
		}
	}
	else if skill == 43 && Player.race == 11 && isAlternative
	{
		with Player
		{
			scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
			altUltra = true;
			scrUltras(true, false);
		}
	}
	else if skill == 47 && Player.race == 12 && isAlternative
	{
		with Player
		{
			scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
			altUltra = true;
			scrUltras(true, false);
		}
	}
	else if skill == 50 && Player.race == 13 && isAlternative
	{
		with Player
		{
			scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
			altUltra = true;
			scrUltras(true, false);
			charpoints = 1;
		}
	}
	else if skill == 51 && Player.race == 13 && isAlternative
	{
		with Player
		{
			scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
			altUltra = true;
			sheepFakeouts = 3 + (skill_got[5] * 2);
			scrUltras(true, false);
			if skill_got[2]==1//extra feet
			{
				maxSpeed=4.5;
			}
			else
			{
				maxSpeed=4;
			}
		}
	}
	else if skill == 55 && Player.race == 14 && isAlternative
	{
		with Player
		{
			scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
			altUltra = true;
			scrUltras(true, false);
		}
	}
	else if skill == 59
	{
		if Player.race == 15 && isAlternative
		{
			with Player
			{
				scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
				altUltra = true;
				scrUltras(true, false);
			}
		}
		else
		{
			with Player {
				for (var i = 0; i < maxwep; i++) {
					if wep_type[i] != 0
					{
						if wep_type[i] = 1
						{
							wep_cost[i] *= 0.2;
							wep_rad[i] *= 0.2;
						}
						wep_type[i] = 5;
					}
				}
			}
		}
	}
	else if skill == 82
	{
		with BackCont
		{
			alarm[3]=60;	
		}
	}
	else if skill == 92 && Player.race == 23 && isAlternative
	{
		with Player
		{
			scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
			altUltra = true;
			scrUltras(true, false);
		}
	}
	else if skill == 93 && Player.race == 24 && isAlternative
	{
		with Player
		{
			scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
			altUltra = true;
			scrUltras(true, false);
		}
	}
	else if skill == 106 && Player.race == 27//Hands secret ultras
	{
		with Player
		{
			if bskin == 1 || (other.isAlternative && other.randomHand == 1 && !bskin == 1)
			{
				scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
				//Secret B skin ultra
				with Player {
					altUltra = true;
					scrUltras(true,false,1);
					spr_idle=sprMutant27BIdle;
					spr_walk=sprMutant27BWalk;
					spr_hurt=sprMutant27BHurt;
					spr_dead=sprMutant27BDead;
					bskin = 1;
				}
			}
			else if bskin == 2 || (other.isAlternative && other.randomHand == 2 && !bskin == 2)
			{
				scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
				with Player {
					altUltra = true;
					scrUltras(true,false,2);
					spr_idle=sprMutant27CIdle;
					spr_walk=sprMutant27CWalk;
					spr_hurt=sprMutant27CHurt;
					spr_dead=sprMutant27CDead;
					bskin = 2;
				}
			}	
		}
	}
	if skill == 2
	{
		scrUnlockGameMode(29,"FOR TAKING FISH'S ULTRA#GUN WARRANT");	
	}
	else if skill == 4
	{
		with Player
		{
			if race == 1 && other.isAlternative
			{
				scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
				scrWeaponAdjustCost(0.85);
				bskin = 2;
				spr_idle=sprMutant1CIdle;
				spr_walk=sprMutant1CWalk;
				spr_hurt=sprMutant1CHurt;
				spr_dead=sprMutant1CDead;
				altUltra = true;
				scrUltras(true, false);
			}
			else
				scrWeaponAdjustCost(0.95);
		}	
	}
	else if (skill == 6 && Player.race == 2 && isAlternative)
	{
		with Player {
			scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
			altUltra = true;
			scrUltras(true, false);
		}
	}
	else if (skill == 21 && Player.race == 6 && isAlternative)
	{
		debug("TAKING ALTGODS DONT DIE");
		with Player
		{
			scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
			altUltra = true;
			scrUltras(true, false);
		}
	}
	else if skill == 23 && Player.race == 6 && isAlternative
	{
		with Player
		{
			scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
			altUltra = true;
			scrUltras(true, false);
			if bskin == 0//YV secret skin
			{
				scrUnlockAltSkin(race, bskin);
				spr_idle=sprMutant6DIdle;
				spr_walk=sprMutant6DWalk;
				spr_hurt=sprMutant6DHurt;
				spr_dead=sprMutant6DDead;
			}
			else if bskin == 1//YV secret skin
			{
				scrUnlockAltSkin(race, bskin);
				spr_idle=sprMutant6EIdle;
				spr_walk=sprMutant6EWalk;
				spr_hurt=sprMutant6EHurt;
				spr_dead=sprMutant6EDead;
			}
		}
	}
	else if skill == 24 && Player.race == 6 && isAlternative
	{
		with Player
		{
			scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
			altUltra = true;scrUltras(true, false);
		}
	}
	else if skill == 27 && Player.race == 7 && isAlternative
	{
		with Player
		{
			scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
			altUltra = true;
			scrUltras(true, false);
		}
	}
	else if skill == 29 && Player.race == 8 && isAlternative
	{
		with Player
		{
			scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
			altUltra = true;
			scrUltras(true, false);
			if bwep == 0//ROBOT EXCLUSIVE TASTE
			{
				maxhealth += 4;
			}
		}
	}
	else if skill == 30 && Player.race == 8 && isAlternative
	{
		with Player
		{
			scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
			altUltra = true;
			curseBotTeleport = true;
			alarm[11] = 30;
			scrUltras(true, false);
		}
	}
	else if skill == 35 && Player.race == 9 && isAlternative//CHICKEN REVERSE TIME
	{
		with Player
		{
			scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
			altUltra = true;
			scrUltras(true, false);
			if bskin == 0 || bskin == 3
			{
				scrUnlockAltSkin(race, bskin);
				bskin = 3;
				spr_idle=sprMutant9DIdle;
				spr_walk=sprMutant9DWalk;
				spr_hurt=sprMutant9DHurt;
				spr_dead=sprMutant9DDead;
			}
			else if bskin == 1 || bskin == 4
			{
				scrUnlockAltSkin(race, bskin);
				bskin = 4;
				spr_idle=sprMutant9EIdle;
				spr_walk=sprMutant9EWalk;
				spr_hurt=sprMutant9EHurt;
				spr_dead=sprMutant9DDead;
			}
		}
	}
	else if skill == 39 && Player.race == 10 && isAlternative
	{
		with Player {
			scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
			altUltra = true;
			maxhealth += 50;
			my_health += 50;
			prevhealth = my_health;
			scrUltras(true, false);
			canHeal = false;
			scrUnlockAltSkin(race, bskin);
			if bskin == 0 || bskin == 3
			{
				spr_idle=sprMutant10EIdle;
				spr_walk=sprMutant10EWalk;
				spr_hurt=sprMutant10EHurt;
				spr_dead=sprMutant10EDead;
			}
			else if bskin == 1 || bskin == 4
			{
				spr_idle=sprMutant10FIdle;
				spr_walk=sprMutant10FWalk;
				spr_hurt=sprMutant10FHurt;
				spr_dead=sprMutant10FDead;
			} else if bskin == 2 || bskin == 5
			{
				spr_idle=sprMutant10GIdle;
				spr_walk=sprMutant10GWalk;
				spr_hurt=sprMutant10GHurt;
				spr_dead=sprMutant10GDead;
			}
		}
	}
	else if skill == 43 && !isAlternative
	{
		with Player {
			accuracy = 0.2;//Normal accuracy
			standartAccuracy = accuracy;
			if skill_got[19]
			{
				accuracy = 0;
				standartAccuracy = accuracy;
			}
		}
	}
	else if skill == 61
	{
		if Player.race == 16 && isAlternative
		{
			with Player
			{
				scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
				altUltra = true;
				scrUltras(true, false);
				scrUnlockAltSkin(race, 0);
				bskin = 4;
				spr_idle=sprMutant16DIdle;
				spr_walk=sprMutant16DWalk;
				spr_hurt=sprMutant16DHurt;
				spr_dead=sprMutant16DDead;
			}
		}
		else
		{
			with Player {
				disableAltUltra = true;	
			}
		}
	}
	else if skill == 72 && Player.race == 18 && isAlternative
	{
		with Player
		{
			scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
			altUltra = true;
			scrUltras(true, false);
		}
	}
	else if skill == 77 && Player.race == 20 && isAlternative
	{
		with Player
		{
			area = 104;
			with MusCont
			{
				audio_stop_sound(song);
				song = mus107;//Don't play this as we are sneaking
				amb = amb100;
				snd_loop(amb);
				audio_sound_gain(amb, max(0, UberCont.opt_ambvol), 0);
			}
			visitedCrib = true;
			altUltra = true;
			scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
			scrUltras(true, false);
		}
	}
	else if skill = 85//ROGUE SUPER PORTAL STRIKE
	{
		Player.rogueammomax=6;
		Player.rogueammo=6;
		if Player.skill_got[10] //back muscle
		{
			Player.rogueammomax=8;
			Player.rogueammo=8;
		}
	}
	else if skill == 87 
	{
		if Player.race == 22 && isAlternative
		{
			with Player
			{
				scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
				altUltra = true;
				scrUltras(true, false);
				rogueammomax --;
				rogueammo = min(rogueammomax,rogueammo);
				scrUnlockAltSkin(race, 0);
				spr_idle=sprMutant22DIdle;
				spr_walk=sprMutant22DWalk;
				spr_hurt=sprMutant22DHurt;
				spr_dead=sprMutant22DDead;
			}
		}
		else
		{
			with instance_create(x,y,WepPickup)
			{
				scrWeapons()
				wep = 720;
				SetSeed();
				name = wep_name[wep]
				ammo = 50
				curse = 0;
				type = wep_type[wep]
				sprite_index = wep_sprt[wep];
				persistent = true;
			}	
		}
	}
	else if skill == 88 //ROGUE ULTRA POPO
	{
		Player.rogueammo = 0;
		Player.rogueammomax = 0;
	}
	else if skill == 15
	{
		with Player
		{
			scrWeaponsAdjustCostPowerOverwhelming();
			maxlevel += 1;//higher level cap
		}
	}
	else if skill = 97 // MUTATION SMITH WEAPON MUTATOR BETTER WEAPON SPECIFIC MUTATIONS
	{

		with Player
		{
			if (race == 25 && other.isAlternative)
			{
				scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
				//Secret Beekeeper ultra
				altUltra = true;
				scrUltras(true, false);
			}
			else
			{
				disableAltUltra = true;
				if skill_got[13]//long arms
				{
					bettermelee = 0.4;
				}
				if skill_got[16]//RecycleGland
				{
					betterrecyclegland=15;
				}
				if skill_got[17]//LaserBrain
				{
					betterlaserbrain = 2;
				}
				if skill_got[21]//bolt marrow
				{
					betterboltmarrow = 10;
				}
				if skill_got[42]//Tail end
				{
					betterTail = 2;
				}
				with Player
				{
					var sk = [];
					array_copy(sk,0,skill_got,0,array_length(skill_got));
					scrSkills();
					skill_got = [];
					skill_got = sk;
				}
			}
		}

	}
	else if skill == 104
	{
		if Player.race == 26 && isAlternative
		{
			with Player
			{
				scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
				altUltra = true;
				scrUltras(true, false);
			}
		}
		else {
			with Player {
				disableAltUltra = true;	
			}
		}
	}
	else if skill = 5//CRYSTAL FORTRESS ULTRA A
	{
	Player.maxhealth += 6
	Player.my_health += 6
	}
	else if skill==3//FISH COMPANION ONLY PARTNER ONLY ULTRA GAMEMODE UNLOCK
	{
	scrUnlockGameMode(14,"FOR TAKING THIS ULTRA");
	}
	else if skill==13//Melting Ultra A Brain capacity UNLOCK GAMEMODE 1HP EQUALITY
	{
	scrUnlockGameMode(5,"FOR TAKING THIS ULTRA");
	}
	else if skill==14
	{//Melting Ultra B detachment
		if Player.maxhealth > 1
		{
			Player.maxhealth *= 0.5

			if (Player.my_health > Player.maxhealth){
				Player.my_health = max(Player.my_health*0.5,Player.maxhealth)}

			Player.maxhealth = ceil(Player.maxhealth);
			Player.my_health = ceil(Player.my_health);
			Player.exception = true;
		}
		Player.skillpoints += 3;//amounth of mutations
		Player.skillsChosen -= 3;
		if scrIsGamemode(30) && Player.level == 1
		{
			Player.skillsChosen = -3;
		}
		//Player.skillsChosen=0;//no ultras pls
	}
	else if skill==62
	{
		//ARMOUR UP viking
		with Player {
			//No health mutations
			if race == 16 && other.isAlternative
			{
				scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
				altUltra = true;
				//maxhealth = round(maxhealth*0.5);
				scrUltras(true, false);
				maxarmour += round(maxhealth*0.5);
				armour += round(maxhealth*0.5);
				maxhealth = 1;
				my_health = 1;
				prevhealth = 1;
				hudArmourSpace = 6;
			}
			else
			{
				disableAltUltra = true;
				if gotMinimumArmour
				{
					armour -= 1;
					maxarmour -= 1;
				}
				maxarmour = max(maxarmour + 2, 2);
				armour = clamp(armour + 2, 2, maxarmour);
			}
		}
	}
	else if skill==66
	{
		if Player.race == 17 && isAlternative
		{
			with Player
			{
				scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
				altUltra = true;
				scrUltras(true, false);
			}
		}
		else
		{
			//Gunsmith armoursmith
		    with Player {
				disableAltUltra = true;
				maxarmour = max(maxarmour + 3, 3);
				armour = clamp(armour + 3, 3, maxarmour);
				if gotMinimumArmour
				{
					maxarmour -= 1;
					gotMinimumArmour = false;
				}
		    }
		}
	}
	else if skill == 68 && Player.race == 17
	{
		with Player {
			if other.isAlternative
			{
				scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
				altUltra = true;
				scrUltras(true, false);
			}
			else
			{
				disableAltUltra = true;	
			}
		}
	}
	else if skill==78//business hog more options armour
	{
	    with Player
	    {
			if gotMinimumArmour
			{
				maxarmour -= 1;
			}
			maxarmour = max(maxarmour + 2, 2);
			armour = max(armour,0);
	    }
	}
	else if skill == 73//REDEMPTION Skeleton Ultra A
	{

		with GenCont
		race=Player.race;
		var newPlayer = instance_create(x,y,Player);
		with Player
		{
			if id != newPlayer.id
			{
				instance_destroy(id,false);
				with newPlayer//Data to keep
				{
					race = other.race
					crown = other.crown
					lastarea = other.lastarea;
					area = other.area//other.lastarea;
					loops = other.loops;
					hard = other.hard;
					kills = other.kills;
					subarea=other.subarea;
					ultra_got[73]=1;//you picked redemption
					skillpoints=max(0,other.level-2);
					level=other.level;

					wep=other.wep
					bwep=other.bwep

					wepmod1=other.wepmod1
					wepmod2=other.wepmod2
					wepmod3=other.wepmod3
					wepmod4=other.wepmod4

					bwepmod1=other.bwepmod1
					bwepmod2=other.bwepmod2
					bwepmod3=other.bwepmod3
					bwepmod4=other.bwepmod4
			
					cwepmod1=other.cwepmod1
					cwepmod2=other.cwepmod2
					cwepmod3=other.cwepmod3
					cwepmod4=other.cwepmod4

					//give the ammos
					ammo[1] = typ_amax[1];
					ammo[2] = typ_amax[2];
					ammo[3] = typ_amax[3];
					ammo[4] = typ_amax[4];
					ammo[5] = typ_amax[5];
					//event_perform(ev_other,ev_room_end);
			
					maxSpeed += 0.4;//Normal speed
					accuracy = 1;//Normal accuracy
					standartAccuracy = accuracy;
				}
			}
		}

		with Corpse
			instance_destroy();

	}
	else if skill == 74//Reminisce secret skeleton Ultra B
	{
		if Player.race == 19
		{
			if isAlternative
			{
				with Player
				{
					scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
					altUltra = true;
					scrUltras(true, false);
				}
			}
			else
			{
				with Player {
					disableAltUltra = true;	
				}
			}
		}
	}
	else if skill == 76//skelly ultra D
	{
	    if Player.ultimategamble==false && !isAlternative//skeleton lives
	    {
		    with Player
		    {
				var currentLives = array_length(livesRegain);
				var si = currentLives;
			    skeletonlives += 2;
				repeat(2)
				{
					livesRegain[si] = 3;
					si++;
				}
				if array_length(livesRegain) > 2
					scrUnlockBSkin(19,"FOR HAVING THREE LIVES",0);
			    ultimategamble=false;
				maxSpeed += 0.4;//Normal speed
				accuracy = 1;//Normal accuracy
				standartAccuracy = accuracy;
				if skill_got[19] //eagle eyes
				{
					scrApplyEagleEyes();
				}
		    }
    
	    }
	    else//ULTIMATE GAMBLE
	    {
	    if true || random(4+Player.skill_got[5])<1//Better odds with thronebutt
	    {//you will die now
    
			with GenCont
				race=Player.race;
    
		    with Player
		    {
				reincarnate = true;
				instance_destroy();
				with instance_create(x,y,Player)//Data to keep
				{
					scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
					bskin = other.bskin
					race = other.race
					crown = other.crown
					lastarea = other.lastarea;
					area = other.area//other.lastarea;
					loops = other.loops;
					hard = other.hard;
					kills = other.kills;
					subarea=other.subarea;
					boostLevel = max(other.boostLevel,other.level);
					lastwishused = false;
					//skeletonlives=other.skeletonlives;

					wep=other.wep
					bwep=other.bwep
					cwep = other.cwep;

					wepmod1=other.wepmod1
					wepmod2=other.wepmod2
					wepmod3=other.wepmod3
					wepmod4=other.wepmod4

					bwepmod1=other.bwepmod1
					bwepmod2=other.bwepmod2
					bwepmod3=other.bwepmod3
					bwepmod4=other.bwepmod4
		
					cwepmod1=other.cwepmod1
					cwepmod2=other.cwepmod2
					cwepmod3=other.cwepmod3
					cwepmod4=other.cwepmod4

					//give the ammos
					ammo[1] = typ_amax[1];
					ammo[2] = typ_amax[2];
					ammo[3] = typ_amax[3];
					ammo[4] = typ_amax[4];
					ammo[5] = typ_amax[5];
				
					snd_play_2d(snd_dead,0,true);
					scrWeaponHold();
					//event_perform(ev_other,ev_room_end);
				}
			}
		    with Corpse
				instance_destroy();
	    }
	    else//pick out ultras
	    {
	    ultimategamble=2;
		with Player
		{
			scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
			scrUltras(true, false);
		}
	    //with instance_create(view_xview+view_wview/2,view_yview+view_hview-24,SkillIcon)
	    //skill = choose(//choose(other.skill1,other.skill2,other.skill3,other.skill4);
	    //
	    //Player.skillpoints=2;
	    }
    
	    }
	}
	else if skill == 80//GOLD DIGGER
	{
		with Player {
			for (var i = 0; i < maxwep; i++) {
				if wep_type[i] != 0 && scrCheckGold(wep_name[wep])
				{
					wep_cost[i] = wep_cost[i]*0.8;
					wep_rad[i] = wep_rad[i]*0.8;
				}
			}
		}
	}
	else if skill == 109
	{
		with Player
		{
			snd_dead = sndStupidHurt;
		}
	}

	with SkillIcon
	instance_destroy()

	with UltraIcon
	instance_destroy()

	if ultimategamble>0//RANDOM ULTRAS HERE WE GO
	{
	    do{ 
	    skill1 = scrRandomUltraSelection();
	    }
	    until (Player.ultra_got[skill1] = 0)
    
	    do{ 
	    skill2 = scrRandomUltraSelection();
    
	    }
	    until (skill2 != skill1 and Player.ultra_got[skill2] = 0)
    
	    do
	    {
	    skill3 = scrRandomUltraSelection();
	    }
	    until (skill3 != skill1 and skill3 != skill2 and Player.ultra_got[skill3] = 0)
    
	    do
	    {
	    skill4 = scrRandomUltraSelection();
	    }
	    until (skill4 != skill1 and skill4 != skill2 and skill4 != skill3 and Player.ultra_got[skill4] = 0)


	if !scrIsCrown(8)
	{

	//HORROR ULTRA E
	if Player.ultra_got[0] && !Player.altUltra
	{
	    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-112,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,SkillIcon)
	    skill = 27//patience
	}


	with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-72,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,UltraIcon)
	{skill = other.skill1
	ultimategamble=other.ultimategamble-1;}
	with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-24,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,UltraIcon)
	{skill = other.skill2
	ultimategamble=other.ultimategamble-1;}
	with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+24,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,UltraIcon)
	{skill = other.skill3
	ultimategamble=other.ultimategamble-1;}
	with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+72,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,UltraIcon)
	{skill = other.skill4
	ultimategamble=other.ultimategamble-1;}

	}
	else
	{
	//CROWN OF DESTINYYYYYYY
	if Player.race=21
	{
	//HORROR ULTRA E
	if Player.ultra_got[0] && !Player.altUltra
	{
	    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-32,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,SkillIcon)
	    skill = 27//patience
	}

	with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,UltraIcon)
	skill = other.skill1

	with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+32,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,UltraIcon)
	{skill = other.skill2
	ultimategamble=other.ultimategamble-1;}


	}
	else
	{
	with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,UltraIcon)
	skill = choose(other.skill1,other.skill2,other.skill3,other.skill4);
	}

	}    

    
    
    

	/*with instance_create(view_xview+view_wview/2,view_yview+view_hview-24,UltraIcon)
	{
	    skill = choose(
	    choose(1,2,3,5,11,14,15,16,21,23,25,26,28,29,34,40),//choose(other.skill1,other.skill2,other.skill3,other.skill4);
	    choose(41,42,48,50,52,56,57,58,59,62,65,67,68,69,71)
	    )
	}*/
	Player.skillpoints++;
	if Player.altUltra
		Player.unlockAlternativeUltras = true;
	regularprocedure=false;
	/*
	1CONFISCATE
	2GUNWARRANT
	3BUDDY COP
	5 FORTRESS
	11BRAINSTYLE
	14DETACHMENT
	15POWER OVERWHELMING
	16DOOMED
	21IM A GUN GOD
	23MAKE IT RAIN
	25AMBIDEXTUROUS
	26GET LOADED
	28STRONG FIRE
	29REFINED TASTE???
	34NINJA
	40DEFENSE??
	41SAFE DISTANCE
	42NEVER MISS
	48LAG
	50JUST A SHEEP
	52FLUFFY
	56BLASPHEMY
	57NEUTRON
	58PROTON
	59ELECTRON
	62 ARMOUR UP
	65WEAPON MODDER
	67ONE WITH THE GUN
	68SCRAP FINDER
	69PROTECTOR
	71TRANQUILITY
	73REDEMPTION NO
	74DAMNATION NO
	37PERSONAL GUARD
	77PROSPERITY
	80GOLD DIGGER
	81STALKER
	82ANOMALY
	83MELTDOWN
	87NEW CAPTAIN
	88ULTRA POPO
	89DISTANCE
	92POTENCY
	95BURNING HOT
	96THUNDER BOMB
	100NARCOTICS

	*/

	}


	if regularprocedure{

	with LevCont
	instance_destroy()

	}

	if Player.skillpoints > 0 || Player.charpoints > 0
	{
		if regularprocedure
		instance_create(x,y,LevCont)
	}
	else if !instance_exists(GenCont)
	{
		with instance_create(x,y,GenCont)
		race = Player.race
	}

	snd_play_2d(sndMut);
	instance_destroy();

		//if skill <= UberCont.maxultra
		with UberCont
		{
			if isValidGamemodeToUnlock()
			{
				if (Player.altUltra || Player.ultimategamble == 1) && scrTranslateUltraToSecretStat(other.skill,Player.bskin) != -1
				{
					ctot_secret_ultra_taken[scrTranslateUltraToSecretStat(other.skill,Player.bskin)] += 1;
				}
				else
				{
					ctot_ultra_taken[other.skill] += 1;
				}
				var difTaken = 0;
				for (var i = 0; i < maxultra + 1; i++) {
					if (ctot_ultra_taken[i] > 0)
					{
						difTaken ++;	
					}
				}
				for (var i = 0; i < maxsecretultra + 1; i++) {
					if (ctot_secret_ultra_taken[i] > 0)
					{
						difTaken ++;	
					}
				}
				if difTaken > 19
				{
					scrUnlockGameMode(30,"FOR TAKING#20 DIFFERENT#ULTRA MUTATIONS");	
				}
				scrSave();//Don't necesserily have to save here
			}
		}
	
		with UberCont {
		if (isLeaderboardGamemode) {
			//if (scrIsWeeklyScoreHigher(Player.kills)) {
				runScore[8] = Player.altUltra;
				runScore[14] = getUltraMutation();
				runScore[15] = scrGetAllMutations();
			//}
		}
		else if (scrIsGamemode(27)) // && !instance_exists(StartDaily))
		{
			runScore[8] = Player.altUltra;
			runScore[14] = getUltraMutation();
			runScore[15] = scrGetAllMutations();
		}
		else if (scrIsGamemode(26)) // && !instance_exists(StartDaily))
		{
			runScore[6] = Player.altUltra;
			runScore[12] = getUltraMutation();
			runScore[13] = scrGetAllMutations();
		}
	}
	if Player.race == 24
	{
		//New look
		with ElementorHead
		{
			event_user(0);	
		}
	}
}

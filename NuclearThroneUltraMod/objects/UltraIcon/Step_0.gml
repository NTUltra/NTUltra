if ( KeyCont.key_fire[p] = 1 and (UberCont.mouse__x < x+22 and UberCont.mouse__y < y+22 and UberCont.mouse__x > x-22 and UberCont.mouse__y > y-22) && (alarm[0]<1) ) || (exceptionclick && (alarm[0]<1))
{
	KeyCont.key_fire[p] = 0;
	if Player.ultra_got[0] == 1 && !Player.altUltra && (skill < 29 || skill > 32)
		Player.horrorEtaken = true;
	var regularprocedure=true;
	Player.ultra_got[skill] = 1
	Player.previousUltra = skill;
	Player.skillpoints -= 1

	if skill = 0
	{
		if Player.race == 21 && scrCheckGold(Player.wep_name[Player.wep]) || scrCheckGold(Player.wep_name[Player.bwep]) || Player.unlockAlternativeUltras
		{
			with Player
			{
				scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
				altUltra = true;
				ultra_name[0] = "CASH FLOW"
				ultra_text[0] = "REPLACE BEAM WITH CASH FLOW#CASH FLOW USES CASH INSTEAD OF RADS#GET 100 CASH EVERY AREA#CASH MAXIMUM IS 500#KILLS GENERATE CASH#(UPGRADES TO BEAM STILL APPLY)##YOU CAN KEEP USING ACTIVE#EVEN WHILE IN DEBT#BUT ACTIVE WILL BE LOCKED UNTIL#OUT OF DEBT AT THE START OF AN AREA"
				ultra_tips[0] = "C.R.E.A.M."
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
		if scrHasEyesMutations() || Player.unlockAlternativeUltras
		{
			with Player {
				scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
				altUltra = true;
				ultra_name[9] = "STRANGE STYLE"
				ultra_text[9] = "STRONGER TELEKINESIS#TELEKINESIS PULLS EVERYTHING TOWARDS YOUR CROSSHAIR"
				ultra_tips[9] = "something strange"
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
	else if skill == 13 &&  Player.race == 4 && (Player.maxhealth == 1 || Player.unlockAlternativeUltras)
	{
		with Player {
			scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
			altUltra = true;
			ultra_name[13] = "DEATH STARE"
			ultra_text[13] = "LOOKING AT ENEMIES SLOWLY KILLS THEM#ENEMIES ARE SCARED OF YOU"
			ultra_tips[13] = "the face of death"
			instance_create(x,y,DeathStare);
		}
	}
	else if skill == 20 && Player.race == 5 && (scrIsCrown(23) && Player.skill_got[2] || Player.unlockAlternativeUltras)
	{
		with Player
		{
			scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
			altUltra = true;
			ultra_name[20] = "SONIC SPEED"
			ultra_text[20] = "YOU CAN MOVE EXTREMELY FAST!#ACCELERATING OR DECCELERATING QUICKLY#CREATES A SONIC BOOM"
			ultra_tips[20] = "SONIC BOOM!"
			maxSpeed += 6;
		}
	}
	else if Player.race == 9 && skill == 33 && (scrHasFireWeapon() || Player.unlockAlternativeUltras)
	{
		with Player
		{
			scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
			altUltra = true;
			ultra_name[33] = "PHOENIX"
			ultra_text[33] = "WHILE YOU ARE ABOVE LEVEL 1#PREVENT THE LOSS OF YOUR HEAD#INSTEAD, REGAIN ALL YOUR HP#LOSE A LEVEL AND A RANDOM MUTATION##EVERYTIME YOUR DEATH IS PREVENTED#YOU PERMANENTLY BECOME STRONGER#AND YOU LEVEL UP SLOWER"
			ultra_tips[33] = "rise and rise again"
		}
	}
	else if skill == 43 && Player.race == 11 && (Player.skill_got[19] && Player.skill_got[17] || Player.unlockAlternativeUltras)
	{
		with Player
		{
			scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
			altUltra = true;
			ultra_name[43] = "SNIPER EYE"
			ultra_text[43] = "REPLACE YOUR ACTIVE WITH A SNIPER EYE#THE EYE BREAKS WALLS#PIERCES, STUNS AND DAMAGES ENEMIES#DAMAGE INCREASES EACH PIERCE#MORE POWERFUL#THE LONGER YOU WAIT BETWEEN SHOTS#POWER SCALES FASTER#IF YOU HAVE THRONE BUTT"
			ultra_tips[43] = "proper eyesight"
		}
	}
	else if skill == 47 && Player.race == 12 && (((Player.skill_got[36] && Player.skill_got[3]) || scrCheckUltra(Player.wep_name[Player.wep]) || scrCheckUltra(Player.wep_name[Player.bwep])) || Player.unlockAlternativeUltras)
	{
		with Player
		{
			scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
			altUltra = true;
			ultra_name[47] = "GREEN TEAM"
			ultra_text[47] = "SPAWNING BUDDIES COSTS RADS#INSTEAD OF MAX HP#BUDDIES DROP MORE RESOURCES"
			ultra_tips[47] = "pay up"
		}
	}
	else if skill == 50 && Player.race == 13 && (scrHasASecretCrown() || Player.unlockAlternativeUltras)
	{
		with Player
		{
			scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
			altUltra = true;
			ultra_name[50] = "CODENAME S.A.S. : SECRET AGENT SHEEP"
			ultra_text[50] = "ENEMIES THAT DON'T KNOW YOU'RE THERE#TAKE 10X DAMAGE##EACH AREA#TAKE ON THE APPEARANCE#OF ANY CHARACTER#ENABLING YOU TO USE THEIR ACTIVE##SECRET GATEWAYS APPEAR#IN THE CROWN VAULT#CONNECTING SEVERAL AREAS"
			ultra_tips[50] = "S.A.S."//Probably busted with unlockables but yea
			charpoints = 1;
		}
	}
	else if skill == 51 && Player.race == 13 && (!Player.skill_got[2] && !Player.skill_got[8] || Player.unlockAlternativeUltras)
	{
		with Player
		{
			scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
			altUltra = true;
			sheepFakeouts = 3 + (skill_got[5] * 2);
			ultra_name[51] = "HYPNOTIZE"
			ultra_text[51] = "ENEMIES REACT AND MOVE SLOWER##ACTIVE CHANGES INTO HYPNOSIS#HYPNOSIS RE-ACTIVATES YOUR PASSIVE#CAN BE USED 3 TIMES EACH AREA#THRONE BUTT INCREASES USES TO 5"
			ultra_tips[51] = "no one expects a sheep to carry a gun"
		}
	}
	else if skill == 55 && Player.race == 14 && ((Player.skill_got[13] || Player.skill_got[34] || Player.skill_got[20]) && !Player.skill_got[5] || Player.unlockAlternativeUltras)
	{
		with Player
		{
			scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
			altUltra = true;
			ultra_name[55] = "INCONSISTENT INCOMPATABILITY"
			ultra_text[55] = "ALL WEAPONS ARE FULLY AUTOMATIC#YOU NO LONGER THROW WEAPONS#INSTEAD YOUR ACTIVE FIRES YOUR WEAPON#FROM THE ORIGIN OF YOUR CROSSHAIR";
			ultra_tips[55] = "how does it do that"
		}
	}
	else if skill == 59 && Player.race == 15 && (!Player.skill_got[17] && (scrIsCrown(4) || scrIsCrown(28)) || Player.unlockAlternativeUltras)
	{
		with Player
		{
			scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
			altUltra = true;
			ultra_name[59] = "PATH OF DESTRUCTION"
			ultra_text[59] = "EVERYWHERE YOU GO#YOU LEAVE BEHIND A TRAIL OF#DAMAGING GOOP##PICKUPS FADE FASTER#FADED PICKUPS REROLL INTO OTHER PICKUPS#PICKUPS CAN FADE/REROLL TWICE"
			ultra_tips[59] = "always positive"
		}
	}
	else if skill == 82
	{
		with BackCont
		{
			alarm[3]=60;	
		}
	}
	else if skill == 92 && Player.race == 23 && ( Player.wep_type[Player.wep] == 3 && Player.wep_type[Player.bwep] == 3 || Player.unlockAlternativeUltras)
	{
		with Player
		{
			scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
			altUltra = true;
			ultra_name[92] = "SPIKE BALL"
			ultra_text[92] = "NORMAL CONTROLS#EMIT SPLINTERS INSTEAD OF GASS#ALL SPLINTERS ARE GASSEOUS"
			ultra_tips[92] = "porkupine"
		}
	}
	else if skill == 96 && Player.race == 24 && ((Player.patience > 0 || Player.guarenteedReroll > 0) || Player.unlockAlternativeUltras)
	{
		with Player
		{
			scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
			altUltra = true;
			ultra_name[96] = "AIR LORD"
			ultra_text[96] = "YOUR ACTIVE CHANGES INTO#WIND PUSH#WIND PUSHES PROJECTILES AND ENEMIES#ENEMIES HITTING A WALL TAKE MORE DAMAGE#THRONE BUTT MAKES THE WIND STRONGER"
			ultra_tips[96] = "blow"
		}
	}
	else if skill == 106 && Player.race == 27//Hands secret ultras
	{
		with Player
		{
			if bskin == 1 || (Player.unlockAlternativeUltras && other.randomHand == 1 && !bskin == 1)
			{
				scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
				//Secret B skin ultra
				ultra_name[106] = "HOT HANDS!"
				ultra_text[106] = "FIERY HANDS#MORE FIRE DAMAGE#HOMING FIRE#EVEN MORE FIRE DAMAGE#WHILE IN INVERTED AREAS#INVERTED PORTALS#(OVER) HEAL YOU FOR 5 HP"
				ultra_tips[106] = "secret b-skin ultra mutation"
				with Player {
					altUltra = true;
					spr_idle=sprMutant27BIdle;
					spr_walk=sprMutant27BWalk;
					spr_hurt=sprMutant27BHurt;
					spr_dead=sprMutant27BDead;
					bskin = 1;
				}
			}
			else if bskin == 2 || (Player.unlockAlternativeUltras && other.randomHand == 2 && !bskin == 2)
			{
				scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
				//Secret C skin ultra
				ultra_name[106] = "BOOM HANDS!"
				ultra_text[106] = "EXPLOSIVE HANDS#HAND IS SLOWER#NORMAL HAND SPEED IN INVERTED AREAS#INVERTED PORTALS#(OVER) HEAL YOU FOR 5 HP"
				ultra_tips[106] = "secret c-skin ultra mutation"
				with Player {
					altUltra = true;
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
			if Player.race == 1 && (bskin == 2 || Player.unlockAlternativeUltras)
			{
				scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
				scrWeaponAdjustCost(0.85);
				bskin = 2;
				spr_idle=sprMutant1CIdle;
				spr_walk=sprMutant1CWalk;
				spr_hurt=sprMutant1CHurt;
				spr_dead=sprMutant1CDead;
				altUltra = true;
			}
			else
				scrWeaponAdjustCost(0.95);
		}	
	}
	else if skill == 6 && Player.race == 2 && (Player.curse || Player.bcurse || Player.unlockAlternativeUltras)
	{
		with Player {
			scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
			altUltra = true;
			ultra_name[6] = "CURSED"
			ultra_text[6] = "TELEPORT AFTER SHIELDING#SHIELDING FIRES LASERS"
			ultra_tips[6] = "cursed crystal"
		}
	}
	else if skill == 23 && Player.race == 6 && (scrMeleeWeapons(Player.wep) && scrMeleeWeapons(Player.bwep) || Player.unlockAlternativeUltras)
	{
		with Player
		{
			scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
			altUltra = true;
			ultra_name[23] = "BLASPHEMY"
			ultra_text[23] = "CAN NO LONGER POP POP GUNS#43% HIGHER MELEE SWING RATE#MELEE IS FULLY AUTOMATIC#CAN POP POP MELEE"
			ultra_tips[23] = "why would you forsake us gun god?"
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
	else if skill == 27 && Player.race == 7 && (Player.wep == Player.bwep || Player.unlockAlternativeUltras)
	{
		with Player
		{
			scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
			altUltra = true;
			ultra_name[27] = "PUNCHSWAP"
			ultra_text[27] = "SWAPPING MAKES YOU SWING WITH YOUR WEAPON#SWINGS DEFLECT PROJECTILES AND DEALS DAMAGE"
			ultra_tips[27] = "GET KNOCKED OUT"
		}
	}
	else if skill == 29 && Player.race == 8 && (Player.spr_idle == sprMutant8DIdle || Player.unlockAlternativeUltras)
	{
		with Player
		{
			scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
			altUltra = true;
			ultra_name[29] = "EXCLUSIVE TASTE"
			ultra_text[29] = "HOLDING ONLY ONE WEAPON WILL:#INCREASE DAMAGE DEALT TO ENEMIES BY 25%#RETURN 10% AMMO UPON FIRING#+15% FIRERATE AND +4 MAX HP##AUTO EAT WEAPONS LEFT IN THE LEVEL";
			ultra_tips[29] = "gold tastes good"
			if bwep == 0//ROBOT EXCLUSIVE TASTE
			{
				maxhealth += 4;
			}
		}
	}
	else if skill == 35 && Player.race == 9 && ((scrIsCrown(12) || scrIsCrown(34)) || Player.unlockAlternativeUltras)//CHICKEN REVERSE TIME
	{
		with Player
		{
			scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
			altUltra = true;
			ultra_name[35] = "SUCOF"
			ultra_text[35] = "EMIT SESREVER EVICA"//ACTIVE REVERSES TIME
			ultra_tips[35] = "reverse time"
			if bskin == 0 || bskin == 3
			{
				scrUnlockAltSkin(race, bskin);
				spr_idle=sprMutant9DIdle;
				spr_walk=sprMutant9DWalk;
				spr_hurt=sprMutant9DHurt;
				spr_dead=sprMutant9DDead;
			}
			else if bskin == 1 || bskin == 4
			{
				scrUnlockAltSkin(race, bskin);
				spr_idle=sprMutant9EIdle;
				spr_walk=sprMutant9EWalk;
				spr_hurt=sprMutant9EHurt;
				spr_dead=sprMutant9DDead;
			}
		}
	}
	else if skill == 39 && Player.race == 10 && (scrCheckUltra(Player.wep_name[Player.wep]) || scrCheckUltra(Player.wep_name[Player.bwep]) ||
	(!Player.skill_got[32] && !Player.skill_got[7] && !Player.skill_got[9]&& !Player.skill_got[36]) || Player.unlockAlternativeUltras)
	{
		with Player {
			scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
			altUltra = true;
			maxhealth += 40;
			my_health += 40;
			prevhealth = my_health;
			ultra_name[39] = "BIG REBEL"
			ultra_text[39] = "+40 MAX HP!#YOU CAN'T HEAL#EVERY LOOP RESET HP TO FULL#ALLIES COST AMMO"
			ultra_tips[39] = "she is a maniac!"
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
	else if skill == 61 && Player.race == 16 && (scrKrakenWeapons(Player.wep) || scrKrakenWeapons(Player.bwep) || Player.unlockAlternativeUltras)
	{
		with Player
		{
			scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
			altUltra = true;
			ultra_name[61] = "CAPTAIN OF THE KRAKEN"
			ultra_text[61] = "KRAKEN WEAPONS DEAL MORE DAMAGE#TENTACLES ARE LONGER#KRAKEN WEAPONS COST 20% LESS AMMO"
			ultra_tips[61] = "from the sea she came"
			scrUnlockAltSkin(race, 0);
			spr_idle=sprMutant16DIdle;
			spr_walk=sprMutant16DWalk;
			spr_hurt=sprMutant16DHurt;
			spr_dead=sprMutant16DDead;
		}
	}
	else if skill == 72 && Player.race == 18 && ((Player.maxhealth < 8 && !scrIsGamemode(9)) || (scrIsGamemode(9) && Player.maxhealth < 8 + UberCont.casualModeHPIncrease) || scrIsCrown(32) || Player.unlockAlternativeUltras)
	{
		with Player
		{
			scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
			altUltra = true;
			ultra_name[72] = "MIRROR"
			ultra_text[72] = "ACTIVE NO LONGER HEALS#ACTIVE COST IS ALWAYS REDUCED#(AS IF YOU ARE ON MAX HP)#ALSO DEFLECT ON YOUR RETICLE"
			ultra_tips[72] = "right back at ya"
		}
	}
	else if skill == 77 && Player.race == 20 && (Player.skill_got[0] || Player.unlockAlternativeUltras)
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
				audio_sound_gain(amb, max(0, sqrt(UberCont.opt_ambvol)), 0);
			}
			visitedCrib = true;
			altUltra = true;
			scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
			ultra_name[77] = "HOARDING THIEF"
			ultra_text[77] = "GO TO YV'S CRIB#YOUR SHOP BECOMES A WEAPON WHEEL#SELECT A SLOT TO STORE#YOUR PRIMARY WEAPON#WEAPON CAN BE TAKEN OUT AT ANY TIME#THRONE BUTT DOUBLES INVENTORY SIZE"
			ultra_tips[77] = "tax evasion"
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
	else if skill == 87 && Player.race == 22 && (scrHasAnEmptyLife() || Player.unlockAlternativeUltras)
	{
		with Player
		{
			scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
			altUltra = true;
			ultra_name[87] = "IMMORTAL POLICE"
			ultra_text[87] = "REPLACE PORTAL STRIKE WITH REVIVE#REVIVE USES PORTAL STRIKE AMMO#LOWER MAXIMUM PORTALSTRIKE AMMO BY 1#THRONE BUTT REVIVES YOU AT FULL HP#INSTEAD OF 1HP#PICKING UP PORTAL STRIKE AMMO#TRIGGERS BLAST ARMOUR"
			ultra_tips[87] = "rogue freak"
			rogueammomax --;
			rogueammo = min(rogueammomax,rogueammo);
			scrUnlockAltSkin(race, 0);
			spr_idle=sprMutant22DIdle;
			spr_walk=sprMutant22DWalk;
			spr_hurt=sprMutant22DHurt;
			spr_dead=sprMutant22DDead;
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
			if (race == 25 && (!skill_got[13] && !skill_got[16] && !skill_got[17] && !skill_got[15] && !skill_got[14] || unlockAlternativeUltras))
			{
				scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
				//Secret Beekeeper ultra
				altUltra = true;
				ultra_name[97] = "BEEKEEPER"
				ultra_text[97] = "SOME RADIATION SPAWNS SWARM BOLTS"
				ultra_tips[97] = "retired to a farm"
			}
			else
			{
				if skill_got[13]//long arms
				{
					bettermelee=0.4;
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
			}
		}

	}
	else if skill == 104 && Player.race == 26 && (scrHasDirector() || Player.unlockAlternativeUltras)
	{
		with Player
		{
			scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
			altUltra = true;
			ultra_name[104] = "GRUMPY LECTURE"
			ultra_text[104] = "ACTIVE COSTS 50 SKILL TO USE#INSTEAD OF UNEQUIPPED AMMO#ACTIVE DEFLECTS & DESTROYS#ALL ENEMY PROJECTILES"
			ultra_tips[104] = "teach them a lesson!"
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
			if race == 16 && (unlockAlternativeUltras || (race == 16 &&!skill_got[7] && !skill_got[36] && !skill_got[32] && !skill_got[31]))
			{
				scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
				altUltra = true;
				//maxhealth = round(maxhealth*0.5);
				ultra_name[62] = "LIVING ARMOUR"
				ultra_text[62] = "REPLACE ALL YOUR HEALTH WITH ARMOUR##HEALTH DROPS BECOME ARMOUR DROPS##(SECOND STOMACH DOUBLES ARMOUR#FROM ARMOUR DROPS)"
				ultra_tips[62] = "iron woman"
				maxarmour += maxhealth;
				armour += maxhealth;
				maxhealth = 1;
				my_health = 1;
				hudArmourSpace = 6;
			}
			else
			{
				if maxarmour < 1//skelly business hog
				{
					armour=0;
					maxarmour=0;
				}
				armour+=2;
				maxarmour+=2;
			}
		}
	}
	else if skill==66
	{
		if Player.race == 17 && (Player.bwep == 0 || Player.unlockAlternativeUltras)
		{
			with Player
			{
				scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
				altUltra = true;
				ultra_name[66] = "QUICK SWAPPER"
				ultra_text[66] = "INCREASE WEAPON PICKUP RANGE##YOU DROP WEAPONS AT YOUR FEET##DROPPING A WEAPON#MAKES YOU IMMUNE FOR A SHORT DURATION##PORTALS SPIT OUT A NEW RANDOM WEAPON#UPON ENTERING AN AREA"
				ultra_tips[66] = "slide swapping!"
			}
		}
		else
		{
			//Gunsmith armoursmith
		    with Player {
				maxarmour=3;
				armour=2;
		    }
		}
	}
	else if skill == 68 && Player.race == 17
	{
		with Player {
			if (unlockAlternativeUltras || scrHasMorphMod() || scrHasMorphWeapon())
			{
				scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
				altUltra = true;
				ultra_name[68] = "ENGINUITY"
				ultra_text[68] = "YOUR ACTIVE BECOMES:#CHANGE YOUR WEAPON#INTO ONE OF THE SAME TIER#YOU CAN GO THROUGH#ALL AVAILABLE WEAPONS##WHENEVER YOU CHANGE OR SWAP WEAPONS#SPAWN MORPH ON YOUR CROSSHAIR"
				ultra_tips[68] = "moldable weapons"
			}
		}
	}
	else if skill==78//business hog more options armour
	{
	    with Player
	    {
	    maxarmour=2;
	    armour=0;
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
		if Player.race == 19 && (scrHasBloodWeapon() || Player.unlockAlternativeUltras)
		{
			with Player
			{
				scrUnlockGameMode(22,"FOR TAKING A#SECRET ULTRA MUTATION",28);
				altUltra = true;
				ultra_name[74] = "REMINISCE"
				ultra_text[74] = "REPLACE ACTIVE WITH BLOOD SPLATTER#YOU SPAWN BLOOD TOWARDS NEARBY CORPSES#BLOOD CAN DESTROY ALL TYPES OF PROJECTILES##THRONEBUTT INCREASES AMOUNT OF BLOOD"
				ultra_tips[74] = "i used to have skin and warm blood"
			}
		}
	}
	else if skill == 76//skelly ultra D
	{
	    if Player.ultimategamble==false && !Player.unlockAlternativeUltras//skeleton lives
	    {
		    with Player
		    {
				var currentLives = array_length(livesRegain);
				var si = currentLives;
			    skeletonlives += 3;
				repeat(3)
				{
					livesRegain[si] = 3;
					si++;
				}
				if array_length(livesRegain) > 3
					scrUnlockBSkin(19,"FOR HAVING FOUR LIVES",0);
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
	    if random(4+Player.skill_got[5])<1//Better odds with thronebutt
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
			altUltra = true;
			ultra_name[76] = "THE ULTIMATE GAMBLE"
		    ultra_text[76] = "50% CHANCE TO DIE OR TO GET#TWO RANDOM ULTRA MUTATIONS#FROM ANOTHER CHARACTER#DOESN'T INCLUDE THINGS YOU CAN'T USE#(such as plant's snare related ultras)"
		    ultra_tips[76] = "that went well!"
		}
	    //with instance_create(view_xview+view_wview/2,view_yview+view_hview-24,SkillIcon)
	    //skill = choose(//choose(other.skill1,other.skill2,other.skill3,other.skill4);
	    //
	    //Player.skillpoints=2;
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


	if Player.crown!=8
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
	else
	{
	with instance_create(x,y,GenCont)
	race = Player.race
	}

	snd_play_2d(sndMut);
	instance_destroy();

		//if skill <= UberCont.maxultra
		with UberCont
		{
			debug("other.skill ", other.skill);
			if Player.altUltra && scrTranslateUltraToSecretStat(other.skill,Player.bskin) != -1 || other.skill == 109
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
			for (var i = 0; i < maxsecretultra; i++) {
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
	
		with UberCont {
		if (isWeekly) {
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

if ( KeyCont.key_fire[p] = 1 and (UberCont.mouse__x < x+22 and UberCont.mouse__y < y+22 and UberCont.mouse__x > x-22 and UberCont.mouse__y > y-22) && (alarm[0]<1) ) || (exceptionclick && (alarm[0]<1))
{
	if Player.ultra_got[0] == 1 && !Player.altUltra && (skill < 29 || skill > 32)
		Player.horrorEtaken = true;
var regularprocedure=true;
Player.ultra_got[skill] = 1
Player.skillpoints -= 1

if skill = 0
{
	if scrCheckGold(Player.wep_name[Player.wep]) || scrCheckGold(Player.wep_name[Player.bwep])
	{
		with Player
		{
			altUltra = true;
			ultra_name[0] = "CASH FLOW"
			ultra_text[0] = "REPLACE BEAM WITH CASH FLOW#CASH FLOW USES CASH INSTEAD OF RADS#GET 100 CASH EVERY AREA#CASH MAXIMUM IS 500#KILLS GENERATE CASH#(UPGRADES TO BEAM STILL APPLY)"
			ultra_tips[0] = "C.R.E.A.M."
			cash = maxCash;
			inDebt = false;
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
else if skill == 9 // Strange style
{
	if scrHasEyesMutations()
	{
		with Player {
			altUltra = true;
			ultra_name[9] = "STRANGE STYLE"
			ultra_text[9] = "STRONGER TELEKINESIS#TELEKINESIS PULLS EVERYTHING TOWARDS YOUR CROSSHAIR"
			ultra_tips[9] = "something strange"
			if bskin == 1
			{
				spr_idle=sprMutant3DIdle;
				spr_walk=sprMutant3DWalk;
				spr_hurt=sprMutant3DHurt;
				spr_dead=sprMutant3DDead;
			}
			else if bskin == 2
			{
				spr_idle=sprMutant3EIdle;
				spr_walk=sprMutant3EWalk;
				spr_hurt=sprMutant3EHurt;
				spr_dead=sprMutant3EDead;
			}
			else
			{
				spr_idle=sprMutant3FIdle;
				spr_walk=sprMutant3FWalk;
				spr_hurt=sprMutant3FHurt;
				spr_dead=sprMutant3FDead;
			}
		}
	}
}
else if skill == 13 && Player.maxhealth == 1
{
	with Player {
		altUltra = true;
		ultra_name[13] = "DEATH STARE"
		ultra_text[13] = "LOOKING AT ENEMIES SLOWLY KILLS THEM#ENEMIES ARE SCARED OF YOU"
		ultra_tips[13] = "the face of death"
		instance_create(x,y,DeathStare);
	}
}
else if skill == 20 && Player.crown == 23 && Player.skill_got[2]
{
	with Player
	{
		altUltra = true;
		ultra_name[20] = "SONIC SPEED"
		ultra_text[20] = "YOU CAN MOVE EXTREMELY FAST!#ACCELERATING OR DECCELERATING QUICKLY#CREATES A SONIC BOOM"
		ultra_tips[20] = "SONIC BOOM!"
		maxSpeed += 6;
	}
}
else if skill == 92 && Player.wep_type[Player.wep] == 3 && Player.wep_type[Player.bwep] == 3
{
	with Player
	{
		altUltra = true;
		ultra_name[92] = "SPIKE BALL"
		ultra_text[92] = "NORMAL CONTROLS#EMIT SPLINTERS INSTEAD OF GASS#ALL SPLINTERS ARE GASSEOUS"
		ultra_tips[92] = "porkupine"
	}
}
else if skill == 106//Hands secret ultras
{
	with Player
	{
		if bskin == 1
		{
			//Secret B skin ultra
			ultra_name[106] = "HOT HANDS!"
			ultra_text[106] = "FIERY HANDS#MORE FIRE DAMAGE#HOMING FIRE#EVEN MORE FIRE DAMAGE#WHILE IN INVERTED AREAS#INVERTED PORTALS#(OVER) HEAL YOU FOR 5 HP"
			ultra_tips[106] = "secret b-skin ultra mutation"
		}
		else if bskin == 2
		{
			//Secret C skin ultra
			ultra_name[106] = "BOOM HANDS!"
			ultra_text[106] = "EXPLOSIVE HANDS#HAND IS SLOWER#NORMAL HAND SPEED IN INVERTED AREAS#INVERTED PORTALS#(OVER) HEAL YOU FOR 5 HP"
			ultra_tips[106] = "secret c-skin ultra mutation"
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
		if bskin == 2
			scrWeaponAdjustCost(0.85);
		else
			scrWeaponAdjustCost(0.95);
	}	
}
else if skill == 6 && (Player.curse || Player.bcurse)
{
	with Player {
		altUltra = true;
		ultra_name[6] = "CURSED"
		ultra_text[6] = "TELEPORT AFTER SHIELDING#SHIELDING FIRES LASERS"
		ultra_tips[6] = "cursed crystal"
	}
}
else if skill == 23 && Player.race == 6 && scrMeleeWeapons(Player.wep) && scrMeleeWeapons(Player.bwep)
{
	with Player
	{
		altUltra = true;
		ultra_name[23] = "BLASPHEMY"
		ultra_text[23] = "CAN NO LONGER POP POP GUNS#43% HIGHER MELEE SWING RATE#MELEE IS FULLY AUTOMATIC#CAN POP POP MELEE"
		ultra_tips[23] = "why would you forsake us gun god?"
		if bskin == 0//YV secret skin
		{
			spr_idle=sprMutant6DIdle;
			spr_walk=sprMutant6DWalk;
			spr_hurt=sprMutant6DHurt;
			spr_dead=sprMutant6DDead;
		}
		else if bskin == 1//YV secret skin
		{
			spr_idle=sprMutant6EIdle;
			spr_walk=sprMutant6EWalk;
			spr_hurt=sprMutant6EHurt;
			spr_dead=sprMutant6EDead;
		}
	}
}
else if skill == 27 && (Player.wep == Player.bwep)
{
	with Player
	{
		altUltra = true;
		ultra_name[27] = "PUNCHSWAP"
		ultra_text[27] = "SWAPPING MAKES YOU SWING WITH YOUR WEAPON#SWINGS DEFLECT PROJECTILES AND DEALS DAMAGE"
		ultra_tips[27] = "GET KNOCKED OUT"
	}
}
else if skill == 29 && Player.spr_idle == sprMutant8DIdle
{
	with Player
	{
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
else if skill == 35 && Player.crown == 12//CHICKEN REVERSE TIME
{
	with Player
	{
		altUltra = true;
		ultra_name[35] = "SUCOF"
		ultra_text[35] = "EMIT SESREVER EVICA"//ACTIVE REVERSES TIME
		ultra_tips[35] = "reverse time"
		if bskin == 0
		{
			spr_idle=sprMutant9DIdle;
			spr_walk=sprMutant9DWalk;
			spr_hurt=sprMutant9DHurt;
			spr_dead=sprMutant9DDead;
		}
		else if bskin == 1
		{
			spr_idle=sprMutant9EIdle;
			spr_walk=sprMutant9EWalk;
			spr_hurt=sprMutant9EHurt;
			spr_dead=sprMutant9DDead;
		}
	}
}
else if skill == 39 && (scrCheckUltra(Player.wep_name[Player.wep]) || scrCheckUltra(Player.wep_name[Player.bwep]))
{
	with Player {
		altUltra = true;
		maxhealth += 40;
		my_health += 40;
		prevhealth = my_health;
		ultra_name[39] = "BIG REBEL"
		ultra_text[39] = "+40 MAX HP!#YOU CAN'T HEAL#EVERY LOOP RESET HP TO FULL#ALLIES COST AMMO"
		ultra_tips[39] = "she is a maniac!"
		canHeal = false;
		if bskin == 0
		{
			spr_idle=sprMutant10EIdle;
			spr_walk=sprMutant10EWalk;
			spr_hurt=sprMutant10EHurt;
			spr_dead=sprMutant10EDead;
		}
		else if bskin == 1
		{
			spr_idle=sprMutant10FIdle;
			spr_walk=sprMutant10FWalk;
			spr_hurt=sprMutant10FHurt;
			spr_dead=sprMutant10FDead;
		} else if bskin == 2
		{
			spr_idle=sprMutant10GIdle;
			spr_walk=sprMutant10GWalk;
			spr_hurt=sprMutant10GHurt;
			spr_dead=sprMutant10GDead;
		}
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
else if skill == 87 && Player.skeletonlives > 0
{
	with Player
	{
		altUltra = true;
		ultra_name[87] = "IMMORTAL POLICE"
		ultra_text[87] = "REPLACE PORTAL STRIKE WITH REVIVE#REVIVE USES PORTAL STRIKE AMMO#LOWER MAXIMUM PORTALSTRIKE AMMO BY 1#THRONEBUTT REVIVES YOU AT FULL HP#INSTEAD OF 1HP#PICKING UP PORTAL STRIKE AMMO#TRIGGERS BLAST ARMOUR"
		ultra_tips[87] = "rogue freak"
		rogueammomax --;
		rogueammo = min(rogueammomax,rogueammo);
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
if skill_got[13]//long arms
{

bettermelee=1.5;

}
if skill_got[16]//RecycleGland
{
betterrecyclegland=15;
}
if skill_got[17]//LaserBrain
{
betterlaserbrain=2;
}
if skill_got[21]//bolt marrow
{
betterboltmarrow = 10;
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
	Player.skillpoints += 4;//amounth of mutations
	Player.skillsChosen -= 4;
	if UberCont.opt_gamemode == 30 && Player.level == 1
	{
		Player.skillsChosen = -4;	
	}
	//Player.skillsChosen=0;//no ultras pls
}
else if skill==62
{
	//ARMOUR UP viking

with Player{
	if maxarmour < 1//skelly business hog
	{
		armour=0;
		maxarmour=0;
	}
armour+=2;
maxarmour+=2;
}
}
else if skill==66
{
	if Player.bwep == 0
	{
		with Player
		{
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
			maxarmour=2;
			armour=2;
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
else if skill == 76//skelly ultra D
{
    if Player.ultimategamble==false//skeleton lives
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
    //with instance_create(view_xview+view_wview/2,view_yview+view_hview-24,SkillIcon)
    //skill = choose(//choose(other.skill1,other.skill2,other.skill3,other.skill4);
    //
    //Player.skillpoints=2;
    }
    
    }
}


with SkillIcon
instance_destroy()

with UltraIcon
instance_destroy()

if skill = 75||ultimategamble>0//RANDOM ULTRAS HERE WE GO
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

if Player.skillpoints > 0
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

	if skill <= UberCont.maxultra
	with UberCont
	{
		ctot_ultra_taken[other.skill] += 1;
		var difTaken = 0;
		for (var i = 0; i < maxultra + 1; i++) {
		    // code here
			if (ctot_ultra_taken[i] > 0)
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

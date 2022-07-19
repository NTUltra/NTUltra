if ( KeyCont.key_fire[p] = 1 and (UberCont.mouse__x < x+22 and UberCont.mouse__y < y+22 and UberCont.mouse__x > x-22 and UberCont.mouse__y > y-22) && (alarm[0]<1) ) || (exceptionclick && (alarm[0]<1))
{
	if Player.ultra_got[0] == 1 && (skill < 29 || skill > 32)
		Player.horrorEtaken = true;
var regularprocedure=true;
Player.ultra_got[skill] = 1
Player.skillpoints -= 1

if skill = 0
{
Player.patience += 1;
Player.skillpoints ++;
Player.skillsChosen -= 1;
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
else if skill == 23 && Player.race == 6 && scrMeleeWeapons(Player.wep) && scrMeleeWeapons(Player.bwep)
{
	with Player
	{
		altUltra = true;
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
else if skill == 29 && Player.spr_idle == sprMutant8DIdle
{
	with Player
	{
		altUltra = true;
		if bwep == 0//ROBOT EXCLUSIVE TASTE
		{
			maxhealth += 4;
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
if skill = 97 // MUTATION SMITH WEAPON MUTATOR BETTER WEAPON SPECIFIC MUTATIONS
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


if skill = 5//CRYSTAL FORTRESS ULTRA A
{
Player.maxhealth += 6
Player.my_health += 6
}

if skill==3//FISH COMPANION ONLY PARTNER ONLY ULTRA GAMEMODE UNLOCK
{
scrUnlockGameMode(14,"FOR TAKING THIS ULTRA");
}

if skill==13//Melting Ultra A Brain capacity UNLOCK GAMEMODE 1HP EQUALITY
{
scrUnlockGameMode(5,"FOR TAKING THIS ULTRA");
}

if skill==14
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

//ARMOUR UP viking
if skill==62
{
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

//Gunsmith armoursmith
if skill==66
{
    with Player{
    maxarmour=2;
    armour=2;
    }
}

if skill==78//business hog more options armour
{
    with Player
    {
    maxarmour=2;
    armour=0;
    }
}


if skill == 73//REDEMPTION Skeleton Ultra A
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
			
			maxspeed += 0.4;//Normal speed
			accuracy = 1;//Normal accuracy
			standartAccuracy = accuracy;
		}
	}
}

with Corpse
instance_destroy();

}


if skill == 76//skelly ultra D
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
			maxspeed += 0.4;//Normal speed
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
if Player.ultra_got[0]
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
if Player.ultra_got[0]
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

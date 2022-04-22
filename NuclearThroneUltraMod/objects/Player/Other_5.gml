/// @description Black sword? and UNLOCKABLES
if UberCont.opt_gamemode == 23 && !instance_exists(Menu) && instance_number(Player) == 1//Random character!
{
	var iWillBecome = 0;
	do 
	{
		iWillBecome = ceil(random(racemax));
	} until (UberCont.race_have[iWillBecome] = 1 && iWillBecome != 0);
	instance_destroy(id,false);
	with instance_create(x,y,RaceCopier)
	{
		race = iWillBecome;
	}
	with instance_create(x,y,Player)
	{
		//Copy it all!
		ultimategamble=other.ultimategamble;
		skeletonlives=other.skeletonlives
		race = iWillBecome;
		crown = other.crown
		lastarea = other.lastarea;
		area = other.area
		subarea=other.subarea;
		loops = other.loops;
		hard = other.hard;
		kills = other.kills;
		subarea=other.subarea;
		level = other.level;
		rad = other.rad;
		visible=true;
		snd_play(snd_wrld, 0, false, false);
		wep = other.wep;
		bwep = other.bwep;
		cwep = other.cwep;
		ammo = other.ammo;
		curse=other.curse;
	    bcurse=other.bcurse;
	    ccurse=other.ccurse;
		var dir = 0;
		repeat(maxskill+1)
		{skill_got[dir] = other.skill_got[dir]
		dir += 1}
		dir = 0
		repeat(maxultra+1)
		{ultra_got[dir] = other.ultra_got[dir]
		dir += 1}
	}
}

if area = 1 && instance_exists(WepPickup)
{
with WepPickup
{
if wep = 46
other.canblacksword=true
}
}
///next level what procedure
/*
if ( loops mod 2 == 0  && loops>1)
{//check if loop is above loop 1 and an even number 2 4 6 8
scrNextLevelInverted();//even
} 
else
{
scrNextLevel();//odd
}
*/
scrNextLevel();
///at the end of a level stuff

if patience>0||ultra_got[0]=1
{
skillpoints+=patience;
skillsChosen-=patience;
patience=0;
}

invertedportalcounter=0;


if hard > UberCont.cbst_diff[race]
UberCont.cbst_diff[race] = hard

//Health manipulation!
if race=16
{
	if skill_got[5]
		freeArmourStrike = true;
    armour++;
	if ultra_got[62]//Viking armour up ultra
	    armour++;
}

if race==10//Rebel pasive
{
	//(maxhealth-my_health)/2
	if my_health<maxhealth
		my_health += round((maxhealth-my_health)*0.5);
}
else if race=12//yung cuz reset max HP
{
	if skill_got[1]{//rhino skin
		maxhealth=12;
	}
	else{
		maxhealth=8;
	}
	if skill_got[33]//Glass arm cannon
		maxhealth-=2;
	
}
if ultra_got[40] = 1 || ultra_got[47] {//Rebel Ultra D YUNG CUZ ULTRA C
	my_health=max(my_health,maxhealth);
}

//CROWN OF LIFE
if crown = 2
{
	if my_health >= maxhealth
	{
		my_health = max(my_health,maxhealth);
		my_health += 2;
	}
	else
	{
		my_health = max(my_health,maxhealth);
	}
	/*
	var toHeal = maxhealth - min(my_health,maxhealth);
	//my_health = maxhealth;
	var overheal = (maxhealth - toHeal) * 0.25;
	my_health = max(maxhealth,my_health + overheal);
	*/
}

//NOCHEST SHIT
if (instance_exists(WeaponChest) or instance_exists(BigWeaponChest) && area != 100 && !restarted)// and !(area = 1 and subarea = 1)
{
	nochest += 1
}

if crown == 15
{
	if ultra_got[31]
	{
		if ccurse == 0
		{
			cwep = 0;	
		}
	}
	else
	{
		if bcurse == 0
		{
			bwep = 0;	
		}
	}
}
if race=14//PANDA
{
    if level!=1 && ultra_got[56]=0 && wep_area[wep] != -1
    {
    
        //primary
        if wep!=0
		{
		    var dir= 0;
		    var prevwep;
        
		    prevwep=wep;
        
		    //handling golden weapons
		    if string_copy(wep_name[prevwep],0,4) = "GOLD"&&loops<1
			{
				prevwep=9//minigun tier 6
				scrUnlockBSkin(14,"FOR CONVERTING A GOLDEN WEAPON",0)
			}
        
		    if ultra_got[55]
		    {
		    do {wep = round(random(maxwep-1)+1);dir+=1;
		    if dir >999
		    wep=prevwep;}
		    until ( ( (wep_area[wep] = wep_area[prevwep]) || (wep_area[wep] = wep_area[prevwep+1]) || (wep_area[wep] = wep_area[prevwep+2]) )||(dir>1000)  && (wep_area[wep] != -1) )
		    }
		    else{
		    do {wep = round(random(maxwep-1)+1);dir++;
		    if dir >999
		    wep=prevwep;}
		    until ( (wep_area[wep] = wep_area[prevwep])||(dir>1000) && (wep_area[wep] != -1) )
		    }
        
		    //hold it properly now
			scrWeaponHold();
        
        }
        //dont start empty handed
        if ( ammo[wep_type[wep]] < typ_ammo[wep_type[wep]]*3 )//if ammo below three times an ammo drop
        {ammo[wep_type[wep]]=typ_ammo[wep_type[wep]]*3;}
    }
}

if crown==10
hard+=0.5;


if UberCont.opt_gamemode=10//random levels
{
area=choose(1,2,3,4,5,6,7,8,9,10,choose(105,102,103,106,107,101,100,108,109,110,113,114,115,118,117),choose(105,102,103,106,107,101,100,108,109,110,113,114,115,118,117),
choose(105,102,103,106,107,101,100,108,109,110,113,114,115,118,117));

if rnglevelloop=18
{loops+=1;
rnglevelloop=0;}
rnglevelloop+=1;
subarea=choose(1,2,3);
}

if race==21
{
audio_stop_sound(sndHorrorLoopTB);
audio_stop_sound(sndHorrorLoop);
horrorcharge=origincharge;
}
oasis=false;

///looping!
debug("now try to loop",area);
if looping && area != 104
{
if scrCheckLoopAll()
	scrUnlockCSkin(1,"FOR LOOPING WITH EVERY CHARACTER",0);
	
if race = 11 && weaponspickedup<1
scrUnlockBSkin(11,"FOR LOOPING#WITHOUT PICKING UP A WEAPON#AS HUNTER",0);

//SKINNS
if race =3 && skill_got[19]
scrUnlockCSkin(3,"FOR LOOPING WITH EAGLE EYES#AS EYES",0);

if race = 4 && skill_got[1]=0 && skill_got[25]=0
scrUnlockBSkin(4,"FOR LOOPING WITHOUT#RHINO SKIN AND STRONG SPIRIT#AS MELTING",0);

if loops>1 && race = 4
scrUnlockCSkin(4,"FOR REACHING LOOP 3#AS MELTING ON 1HP EQUALITY",5);

if UberCont.opt_gamemode=14
scrUnlockBSkin(1,"FOR LOOPING ON GAMEMODE:#FISH'S PARTNER ONLY",14);

if race = 14 && fired=false
scrUnlockCSkin(14,"FOR LOOPING BY ONLY THROWING WEAPONS#AND NOT USING THEM",0)

looping=false;
    //if !instance_exists(Crown)
    //instance_create(x,y,Crown)
    UberCont.ctot_loop[race] += 1
    loops += 1
    if (ultra_got[75] == 1)
	{
		ultra_got[75] = 0;
		skillpoints ++
		ultraNow = true;
		skillsChosen --;
	}
        if race==9//Chicken maxhealth regain on loop
        {
			var targetHealth = 8;
			if skill_got[1] == 1//Rhino skin
				targetHealth += 4;
			if skill_got[33] == 1//Glass arm cannon
				targetHealth -= 2;
			if UberCont.opt_gamemode == 9
				targetHealth += UberCont.casualModeHPIncrease;
            if maxhealth<targetHealth
            {
	            maxhealth = min(maxhealth + 2,targetHealth);
            }
        }
            
        if loops=2&&UberCont.opt_gamemode != 15//not no mutations gamemode
        {
        if ultra_got[15]
        maxlevel=13;
        else
        maxlevel=11;
        
        skillsChosen=0;
        }
    
    
    //uncurse some shit
    curse=0;
    bcurse=0;
    ccurse=0;
    
//drop VIKING GREAT AXE?
if race=16&&loops=1{
with instance_create(x,y,WepPickup)
{
	persistent=true;
	scrWeapons()
	wep =214
	name = wep_name[wep]
	ammo = 0
	type = wep_type[wep]
	curse = 0
	sprite_index = wep_sprt[wep]
}}
//DROP HUNTER HEAVY SNIPER
if race = 11 && loops=1
{

	with instance_create(x,y,WepPickup)
	{
		persistent = true;
		scrWeapons()
		wep =316
		name = wep_name[wep]
		ammo = 0
		type = wep_type[wep]
		curse = 0
		sprite_index = wep_sprt[wep]
	}

}

//DROP CHICKEN DARK SWORD
if (wep = 46 || bwep = 46 || cwep == 46) && loops=1
{

	with instance_create(x,y,WepPickup)
	{
	persistent=true;
	scrWeapons()
	wep =329
	name = wep_name[wep]
	ammo = 0
	type = wep_type[wep]
	curse = 0
	sprite_index = wep_sprt[wep]
	}
}
//Secret
if ((wep == 375 || bwep == 375 || cwep == 375) && isValidGamemodeToUnlock(0) && loops == 1)
{
	with UberCont
	{
		encrypted_data.secrets[0] = true;
		scrSaveEncrypted();
		with instance_create(x,y,UnlockPopup)
		{
			mytext="UNLOCKED SUPER SECRET#FOR BRINGING#THE INVERSION MAGNET#TO LOOP";
		}
	}
}
if ((wep == 231 || bwep == 231 || cwep == 231) && isValidGamemodeToUnlock(0) && race != 1 && loops > 0)
{
	with UberCont
	{
		encrypted_data.secrets[1] = true;
		scrSaveEncrypted();
		with instance_create(x,y,UnlockPopup)
		{
			mytext="YOU SHOULD NOT BE PLAYING GUITAR#HERE IS A SUPER SECRET#UNLOCK";
		}
	}
}

//DROP ULTRA ROGUE RIFLE
if (wep = 312 || bwep = 312|| cwep == 312) && loops=1
{

	with instance_create(x,y,WepPickup)
	{
	persistent=true;
	scrWeapons()
	wep = 427
	name = wep_name[wep]
	ammo = 0
	type = wep_type[wep]
	curse = 0
	sprite_index = wep_sprt[wep]
	}

}

//DROP BLACK SWORD
if loops=1 && canblacksword
{

with instance_create(x,y,WepPickup)
{
persistent=true;
scrWeapons()
wep =328
name = wep_name[wep]
ammo = 0
type = wep_type[wep]
curse = 0
sprite_index = wep_sprt[wep]
}

}

//DROP GUITAR?
if race=1
{
if loops=1{
with instance_create(x,y,WepPickup)
{
persistent=true;
scrWeapons()
wep =231
name = wep_name[wep]
ammo = 0
type = wep_type[wep]
curse = 0
sprite_index = wep_sprt[wep]
}}
if loops=2{
with instance_create(x,y,WepPickup)
{
persistent=true;
scrWeapons()
wep =263
name = wep_name[wep]
ammo = 0
type = wep_type[wep]
curse = 0
sprite_index = wep_sprt[wep]
}}

}

//GOLDEN FROG PISTOL
if race = 23
{

	if loops=1{
		with instance_create(x,y,WepPickup)
		{
			persistent=true;
			scrWeapons()
			wep =349
			name = wep_name[wep]
			ammo = 0
			type = wep_type[wep]
			curse = 0
			sprite_index = wep_sprt[wep]
		}
	}

}
    
    if loops > UberCont.cbst_loop[race]&&UberCont.opt_gamemode=0
    UberCont.cbst_loop[race] = loops//this doesn't get saved if gamemode is not normal mode
    
    if  UberCont.opt_gamemode!=10
    {
        if loops>1
        {
            if ( ( loops & 1 ) == 1 ) {
            area=1
            // it's odd
            } else{
            // it's even go inverted
            area=105
            } 
        }
        else
        area=1;
    }
    
subarea = 1
    
}


if restarted
	exit;
	

if movethislevel==false&&race=15 &&!instance_exists(MenuGen) &&!instance_exists(Menu) &&  !instance_exists(Vlambeer) && !instance_exists(CrownPickup)
{//ATOM TELEPORT ONLY GAMEMODE UNLOCK
scrUnlockGameMode(7,"FOR COMPLETING A LEVEL WITHOUT WALKING")
}
if race = 11 && bigbanditmarked=true && bigdogmarked=true &&
lillhuntermarked=true && bigmachinemarked=true &&
dragonmarked=true && chesirecatmarked=true
{//HUNTER MARK ONLY GM UNLOCK
scrUnlockGameMode(12,"FOR KILLING EVERY MAIN BOSS#WHILE MARKING THEM")
}

//SKINS
if ( firedthislevel=false && race = 10 && area < 100 && area != 10 && loops>0 )
scrUnlockBSkin(10,"FOR COMPLETING A MAIN AREA#ON LOOP#WITHOUT FIRING AS REBEL",0);

if ( firedthislevel=false && race = 13 && area <100 && area != 10 && ( area>3 || loops>0 )  )
scrUnlockCSkin(13,"FOR COMPLETING A MAIN AREA# AFTER THE SCRAPYARD#WITHOUT FIRING AS SHEEP",0);

if ( firedthislevel=false && race = 15 && area <100 && area != 10 && ( area>2 || loops>0 )  )
scrUnlockBSkin(15,"FOR COMPLETING A MAIN AREA# AFTER THE SEWERS#WITHOUT FIRING AS ATOM",0);

if ( firedthislevel=false && race = 21 && loops>0 )
scrUnlockCSkin(21,"FOR COMPLETING A MAIN AREA ON#USING ONLY THE BEAM",0);

if ( firedthislevel=false && race = 24 && area <100 && area != 10 && ( area>2 || loops>0 )  )
scrUnlockCSkin(24,"FOR COMPLETING A MAIN AREA# AFTER THE SEWERS#WITHOUT FIRING AS ELEMENTOR",0);

if ( missedthislevel=false && race = 26 && area <100 && area != 10 && ( area>3 || loops>0 )  )
scrUnlockBSkin(26,"FOR COMPLETING A MAIN AREA# AFTER THE SCRAPYARD#WITHOUT MISSING AS GOOD O'L HUMPHRY",0);

if (yungCuzCskin > 2)
{
	scrUnlockCSkin(12,"FOR COMPLETING 3 LEVELS IN A ROW#WITH 1 MAX HP",0);
}


if crown = 4 && area !=100 && race = 15
rushcrownlevels++;

if rushcrownlevels=5
scrUnlockCSkin(15,"FOR COMPLETING 5 AREAS IN A ROW#USING CROWN OF HASTE AS ATOM",0);

	StartHogInvestment();

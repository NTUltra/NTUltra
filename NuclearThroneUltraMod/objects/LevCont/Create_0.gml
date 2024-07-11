pick = 0
depth = -100;

canmove = 1
__view_set( e__VW.XView, 0, 0 )
__view_set( e__VW.YView, 0, 0 )
audio_stop_sound(sndFrogLoop);
audio_stop_sound(sndFrogLoopButt);
audio_stop_sound(sndFishRollUpgLoop);
scroll = 0;
scrollWidth = 0;
scrollSpeed = 24;
selectedIndex = -1;
with KeyCont
{
	key_fire[0] = 2;
	key_pick[0] = 2;	
}

with UberCont
{
	if (useSeed)
	{
		random_set_seed(seed+(UberCont.globalMutationsChosen * 3));
	}
}
if Player.getVision
{
	//ROYAL VISION
	var yy = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-28;
	with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,yy,SkillIcon)
	{
		doesntTakeSkillPoint = true;
		skill = maxskill + 1;
		skillIndex = 0;
	}
	exit;
}
if Player.refundPoints > 0
{
	var yy = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-28;
	with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,yy,SkillIcon)
	{
		isRefund = true;
		skill = UberCont.skillDeposit[array_length(UberCont.skillDeposit)-1];
		array_delete(UberCont.skillDeposit,-1,1);
		skillIndex = 0;
	}
	exit;
}
if Player.charpoints > 0
{
	scrRaces();
	var step = 21
	var xx = __view_get( e__VW.XView, 0 ) + (__view_get( e__VW.WView, 0 )*0.5) - (step*7) + 2;
	var xo = xx;
	var yy = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-60;
	var num = 0
	if !instance_exists(ElementorHeadMenu)
		instance_create(x,y,ElementorHeadMenu);
	repeat(racemax+1)
	{
		with instance_create(xx, yy, CharIcon)
		{
			char = num;
		}
		if num == 13
		{
			yy += 26;
			xx = xo;
		}
		xx += step;
		if num == racemax-1
		{
			xx = xo;
		}
		num += 1;
	}
	exit;
}
if Player.crownpoints > 0
{
	scrCrowns()
	dir = 0
	// Count visits with a given crown
	// If you still have that crown give option echo on random.
	if UberCont.canMultiCrown
	{
		with instance_create(__view_get( e__VW.XView, 0 )+14,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-49 - 33,CrownIcon)//24
		{
			depth = -998;
			//Replace option 1 with keep current set of crowns always
			crown = 1;
			keeper = true;
			crown_name[1] = "[MULTI-CROWN]"
			crown_text[1] = "KEEP CURRENT CROWN LOADOUT"
			crown_used[1] = 0
			crown_tips[1] = ""
			sprite_index = sprCrownSelectKeep;
		}
	}
	var yyy = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-49;//Top row
	var yyyy = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-16;//Lower row
	var unlockingSecondRow = false;
	if !UberCont.unlocked_more_crowns && isValidGamemodeToUnlock()
	{
		if scrIsInInvertedArea()
		{
			with UberCont
			{
				unlocked_more_crowns = true;
				scrSave();
			}
			with instance_create(x,y,UnlockingSecondRow) {
				lerpTimeIncrease *= 0.75;
				soundGoTime *= 0.75;
			}
			unlockingSecondRow = true;
		}
		else
		{
			yyy += 11;
		}
	}
	var rowCutoff = 12;
	repeat(crownmax+1)
	{
		if dir<rowCutoff
		{
			with instance_create(__view_get( e__VW.XView, 0 )+14+dir*26.5,yyy,CrownIcon)//24
			{
				crown = other.dir
				rowPosition = other.dir;
				if crown == 0 
				{
					if (scrIsCrown(8) && Player.tookDestiny && (!UberCont.canMultiCrown || scrIsCrown(24)))//Sloth
						crown = 8;
					else if (Player.wep_type[Player.wep] == 4 && 
					((Player.bwep == 0 || Player.wep_type[Player.bwep] == 4) || (Player.wep_type[Player.cwep] == 4))
					&& !scrIsGamemode(4) && !scrIsCrown(25))//Crown of freedom secret 2 explosive weps
						crown = 25;
					else if (Player.wep_type[Player.wep] == 5 && 
					((Player.bwep == 0 || Player.wep_type[Player.bwep] == 5) || (Player.wep_type[Player.cwep] == 5))
					&& !scrIsCrown(26))//Crown of energy
						crown = 26;
					else if (Player.consecutiveCrownVisits > 1 && !scrIsCrown(33))
					{
						crown = 33;
						Player.consecutiveCrownVisits = 0;
					}
					else if (scrIsCrown(22) && !scrIsCrown(32))//Luck to misfortune
						crown = 32
					else if (scrIsCrown(4) && !scrIsCrown(34))//Rush to Time
						crown = 34;
					else if (scrIsCrown(7) && !scrIsCrown(28) && !(scrIsGamemode(26) && UberCont.isLeaderboardGamemode))//Blood to Apocalypse
						crown = 28;
					else if ((Player.wepmod1 != 0 || Player.bwepmod1 != 0 || Player.cwepmod1 != 0) && !scrIsCrown(29))//Purity
						crown = 29;
					else if (scrIsCrown(27))//Disco
						crown = 27;
					else if (scrIsCrown(28))//Apocalypse
						crown = 28;
					else if (scrIsCrown(29))//Purity
						crown = 29;
					else if (scrIsCrown(32))//Misfortune
						crown = 32;
					else if (scrIsCrown(34))//Time
						crown = 34;
					else if (scrIsCrown(33))//Echo
						crown = 33;
					else if (scrIsCrown(25))//Freedom
						crown = 25;
					else if (scrIsCrown(26))//Energy
						crown = 26;
					else if (scrCanWeDisco() && !scrIsCrown(27))
						crown = 27;
				}
				else if crown == 8 && Player.tookDestiny && !(UberCont.canMultiCrown && scrIsCrown(8))//Crown of sloth secret
					crown = 24;
				else if crown == 11
				{
					if Player.crownvisits <= 0 && !scrIsGamemode(26) && !scrIsGamemode(27) && !scrIsGamemode(37)
					{
						//Crown of start
						crown_name[11] = "[CROWN OF FROG]"
						crown_text[11] = "START IN THE <g>SEWERS<g>"
						crown_used[11] = 0
						crown_tips[11] = "quick start"
						sprite_index = sprCrownSelectStart;
					}
					else
					{
						//Upgrade crown of reincarnation
						if Player.level > 9
							sprite_index = sprCrownOfReincarnationUpgraded;
					}
				}
				else if crown == 1 && UberCont.canMultiCrown
				{
					crown_name[1] = "[NONE]"
					crown_text[1] = "REMOVE ALL CROWNS"
				}
				if scrIsGamemode(27) || scrIsGamemode(37)
				{
					if crown == 7
					{
						crown = 30;
						if (scrIsCrown(30) || (scrIsCrown(31) && !UberCont.canMultiCrown))
						{
							crown = 31;
						}
					}
				}
			}
		}
		else if UberCont.unlocked_more_crowns || unlockingSecondRow
		{
			with instance_create(__view_get( e__VW.XView, 0 )+14+(dir-12)*26.5,yyyy,CrownIcon)//24
			{
				crown = other.dir;
				rowPosition = other.dir;
			}
		}
		dir += 1
	}
	if unlockingSecondRow
	{
		with CrownIcon
		{
			if rowPosition < rowCutoff
			{
				yOffset = 11;
			}
			else
			{
				yOffset = -22;
			}
		}
	}
	if (UberCont.canMultiCrown)
		with CrownIcon
		{
			if array_contains(Player.currentCrowns, crown)
				canReAdd = true;
		}
}
else
{
if Player.hogpoints > 1// && Player.area=105 && Player.subarea=1
{
	scrUnlockCSkin(20,"FOR SUCCESSFULLY USING#THE INVESTMENT ULTRA",0);
    scrUltras()
	if scrIsGamemode(32) {
		with Player {
			ultra_got[19] = 1;
			ultra_got[48] = 1;
			ultra_got[33] = 1;
			ultra_got[40] = 1;
			ultra_got[62] = 1;
			ultra_got[66] = 1;
			ultra_got[75] = 1;
			ultra_got[76] = 1;
			ultra_got[103] = 1;	
		}
	}
    scrBusinessHogInvestment();
    if scrIsGamemode(32) {
		with Player {
			ultra_got[19] = 0;
			ultra_got[48] = 0;
			ultra_got[33] = 0;
			ultra_got[40] = 0;
			ultra_got[62] = 0;
			ultra_got[66] = 0;
			ultra_got[75] = 0;
			ultra_got[76] = 0;
			ultra_got[103] = 0;	
		}
	}
    exit;
}
else if (Player.skillsChosen>7 || (Player.ultra_got[0] && !Player.altUltra && !Player.horrorEtaken && Player.skillpoints == 0
|| Player.ultraNow))&&(Player.ultra_got[75]==0)//ULTRA! Player.level>9 not skelly redemption ultra a Player.skillsChosen>7
{
	Player.ultraNow = false;
	if scrIsGamemode(32) {
		with Player {
			ultra_got[19] = 1;
			ultra_got[48] = 1;
			ultra_got[33] = 1;
			ultra_got[40] = 1;
			ultra_got[62] = 1;
			ultra_got[66] = 1;
			ultra_got[75] = 1;
			ultra_got[76] = 1;
			ultra_got[103] = 1;	
		}
	}
	//UNLOCK MUTATION DOCTOR/SMITH
	scrUnlockCharacter(25,"FOR GETTING AN ULTRA MUTATION");
	if Player.ultra_got[0] && !Player.altUltra && !Player.horrorEtaken && Player.skillpoints == 0//&&(Player.skillsChosen>7)
	{
		scrUltraEHorror();
	}
	else
	{
	    scrUltras()
	    skill1 = 1+((Player.race-1)*4);
	    skill2 = 2+((Player.race-1)*4);
	    skill3 = 3+((Player.race-1)*4);
	    skill4 = 4+((Player.race-1)*4);
	    //}
	    if Player.ultra_got[skill1] + Player.ultra_got[skill2] + Player.ultra_got[skill3] + Player.ultra_got[skill4] > 3
		{
			if ((Player.race == 21 && Player.ultra_got[0] && !Player.altUltra) || Player.race != 21)
			{
				skillsChosen = 0;
				instance_create(x,y,LevCont);
				instance_destroy();
			}
		}
		if scrIsGamemode(28)//ALL MUTATION CHOICES
		{
			instance_create(x,y,AllMutationsLeft);
			instance_create(x,y,AllMutationsRight);
			var xx = __view_get( e__VW.XView, 0 )+16;
			var yy = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-28;
			var step = 31;
			scrollWidth = step + (-(__view_get( e__VW.WView, 0 ))) - 8
			scroll = 0;
			var gotNoSkills = true;
			for (var i = 0; i <= Player.maxultra; i++) {
				if (Player.ultra_got[i] = 0)
				{
					with instance_create(xx,yy,UltraIcon)
					{
						skill = i;
					}
					xx += step;
					scrollWidth += step;
					gotNoSkills = false;
				}
			}
			if gotNoSkills
			{
				with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,yy,SkillIcon)
				{
					skillIndex = i;
					skill = i;
				}
			}
			var spd = scrollSpeed;
			do {
				with SkillIcon {
					x -= spd;
				}
				with UltraIcon {
					x -= spd;
				}
				scroll += spd;
			} until (scroll >= scrollWidth * 0.5)
		}
	    else if !scrIsCrown(8)
		{
		    if Player.race == 21//horror
		    {
			    if (Player.ultra_got[skill1] == 0)
			    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-64,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-28,UltraIcon)
			    skill = other.skill1
	
			    if (Player.ultra_got[skill2] == 0)
			    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-32,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-28,UltraIcon)
			    skill = other.skill2
	
			    if (Player.ultra_got[skill3] == 0)
			    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-28,UltraIcon)
			    skill = other.skill3
	
			    if (Player.ultra_got[skill4] == 0)
			    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+32,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-28,UltraIcon)
			    skill = other.skill4
	
			    if (Player.ultra_got[0] == 0)
			    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+64,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-28,UltraIcon)
			    skill = 0
    
		    }
		    else
		    {
				if (Player.ultra_got[skill1] == 0)
			    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-72,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-28,UltraIcon)
			    skill = other.skill1
    
				if (Player.ultra_got[skill2] == 0)
			    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-24,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-28,UltraIcon)
			    skill = other.skill2
    
				if (Player.ultra_got[skill3] == 0)
			    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+24,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-28,UltraIcon)
			    skill = other.skill3
    
				if (Player.ultra_got[skill4] == 0)
			    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+72,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-28,UltraIcon)
			    skill = other.skill4
			
				if Player.wep == 0 && Player.bwep == 0 && Player.race != 14 && !scrIsGamemode(14)//not fish only partner and not panda
				with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+120,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-28,UltraIcon)
			    skill = 109
		    }
		}
		else
		{
			//CROWN OF DESTINYYYYYYY
			if Player.race == 21//horror
			{
			do {
			chosenskill=choose(skill1,skill2,skill3,skill4)
			} until (Player.ultra_got[chosenskill] == 0)

			with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-24,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-28,UltraIcon)
			{
			skill = other.chosenskill}
 
			if (Player.ultra_got[skill1] + Player.ultra_got[skill2] + Player.ultra_got[skill3] + Player.ultra_got[skill4] > 1)
			{
				do{
				otherchosenskill=choose(skill1,skill2,skill3,skill4)
				}until (otherchosenskill!=chosenskill && Player.ultra_got[otherchosenskill] == 0 )

				with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+24,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-28,UltraIcon)
				skill = other.otherchosenskill
			}

			}
			else
			{
			with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-28,UltraIcon)
			skill = choose(other.skill1,other.skill2,other.skill3,other.skill4);
			}
		}
	}

	pick = 0//ehm not necessary
	canmove = 1
	if scrIsGamemode(32) {
		with Player {
			ultra_got[19] = 0;
			ultra_got[48] = 0;
			ultra_got[33] = 0;
			ultra_got[40] = 0;
			ultra_got[62] = 0;
			ultra_got[66] = 0;
			ultra_got[75] = 0;
			ultra_got[76] = 0;
			ultra_got[103] = 0;	
		}
	}
	exit;    
    
    }//end of the ultra code
    /*else if Player.ultra_got[73]{// Skelly ultra A redemption patience all da time
		//MUTATIONS
	    scrSkills()//maybe dont run this when ultra
		amountOfSkills = 5;
	    skills = array_create(amountOfSkills,maxskill+1);
		for (var i = 0; i < amountOfSkills; i++)
		{
			var newSkill = 0;
			if scrSkillLeft(skills)
			{
				do newSkill = ceil(random(maxskill))
					until (!Player.skill_got[newSkill] && !array_contains(skills,newSkill))
				skills[i] = newSkill;
			}
			else
			{
				skills[i] = maxskill + 1;
			}
		}
    }*/
	//Get a regular mutation
	if array_length(UberCont.skillDeposit) > 0
	{
		with Player
		{
			var al = array_length(UberCont.skillDeposit);
			for (var i = 0; i < al; i++)
			{
				skill_got[UberCont.skillDeposit[i]] = true;
			}
		}
	}
	//Power craving locked out when you dont have inverted areas
	if !UberCont.unlocked_alt_routes && !scrIsGamemode(26) && !scrIsGamemode(27) {
		skill_got[30] = 1;
	}
    if scrIsGamemode(32) {
		//No alkaline boiling veins and no strong spirit
		// One hit wonder
		with Player
		{
			skill_got[14] = 1;
			skill_got[25] = 1;
			skill_got[32] = 1;
			skill_got[18] = 1;
			skill_got[38] = 1;
			skill_got[40] = 1;
			skill_got[46] = 1;
			if race != 10 && race != 12 && race != 19
			{
				//not Rebel yung cuz, angel and skeleton
				//Disable rhino skin, bloodlust second stomach and tough shell
				//Bouncy fatt & Nerves of steel sharp stress
				skill_got[1] = 1;
				skill_got[7] = 1;
				skill_got[9] = 1;
				skill_got[31] = 1;
				skill_got[41] = 1;
				skill_got[22] = 1;
			}
			if race != 12
			{
				//YC
				skill_got[7] = 1;// Bloodlust
				skill_got[41] = 1;//Nerves of steel
				skill_got[22] = 1;//Sharp Stress
			}
		}
	}
	if scrIsGamemode(48) {//Marksman
		with Player
		{
			//AMMO REGEN MUTS & wepspes and other useless ones
			skill_got[6] =  1;
			skill_got[10] = 1;
			skill_got[13] = 1;
			skill_got[15] = 1;
			skill_got[16] = 1;
			skill_got[17] = 1;
			skill_got[21] = 1;
			skill_got[23] = 1;
			skill_got[40] = 1;
			skill_got[42] = 1;
		}
	}
    scrSkills()//maybe dont run this when ultra
    if (Player.guarenteedReroll > 0)//Fake pocession of patience
	{
		Player.skill_got[27] = 1;
	}
	//MUTATIONS
	scrSkills()//maybe dont run this when ultra
	amountOfSkills = 6;
	if scrIsCrown(8)
		amountOfSkills = 2;
	if Player.race == 21 || Player.phoenixrevives > 6//Horror
		amountOfSkills ++;
	skills = array_create(amountOfSkills,maxskill+1);
	for (var i = 0; i < amountOfSkills; i++)
	{
		var newSkill = 0;
		if scrSkillLeft(skills)
		{
			do newSkill = ceil(random(maxskill))
				until (!Player.skill_got[newSkill] && !array_contains(skills,newSkill))
			skills[i] = newSkill;
		}
		else
		{
			skills[i] = maxskill + 1;
		}
	}
    if !Player.skill_got[0] && Player.heavyheart > 2
    {
		skills[0] = 0;
		Player.heavyheart = 0;
    }

	if scrIsGamemode(28) || (instance_exists(Player) && Player.anyMutation > 0)//ALL MUTATION CHOICES
	{
		with Player
		{
			if anyMutation > 0
				anyMutation -= 1;	
		}
		var xx = __view_get( e__VW.XView, 0 )+16;
		var yy = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-28;
		var step = 31;
		scrollWidth = step + (-(__view_get( e__VW.WView, 0 ))) - 8
		scroll = 0;
		instance_create(x,y,AllMutationsLeft);
		instance_create(x,y,AllMutationsRight);
		var gotNoSkills = true;
		for (var i = 0; i <= maxskill; i++) {
			if (!Player.skill_got[i])
			{
				gotNoSkills = false;
				with instance_create(xx,yy,SkillIcon)
				{
					skillIndex = i;
					skill = i;
				}
				xx += step;
				scrollWidth += step;
			}
		}
		if gotNoSkills
		{
			if !scrIsGamemode(28)//This mode allows unlocks getting ultras easy is too powerfull
			{
				gotNoSkills = true;
				for (var i = 0; i <= Player.maxultra; i++) {
					if (Player.ultra_got[i] = 0)
					{
						with instance_create(xx,yy,UltraIcon)
						{
							skill = i;
						}
						xx += step;
						scrollWidth += step;
						gotNoSkills = false;
					}
				}
			}
			if gotNoSkills
			{
				with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,yy,SkillIcon)
				{
					skillIndex = i;
					skill = i;
				}
			}
		}
		var spd = scrollSpeed;
		do {
			with SkillIcon {
				x -= spd;
			}
			with UltraIcon {
				x -= spd;
			}
			scroll += spd;
		} until (scroll >= scrollWidth * 0.5)
		scrollWidth = max(scrollWidth,0);
	}
    else
    {
		var totalSkillsPositioning = amountOfSkills - 1;
		if Player.ultra_got[73] || (Player.guarenteedReroll > 0)//Melting ultra A patience
	    {
			totalSkillsPositioning ++;
		    with instance_create(0,0,SkillIcon)
			{
				totalSkills = totalSkillsPositioning;
				skillIndex = totalSkillsPositioning;
				skill = 27
				event_perform(ev_alarm,1);
			}
	    }
		for (var i = 0; i < amountOfSkills; i++)
		{
			with instance_create(0,0,SkillIcon)
			{
				totalSkills = totalSkillsPositioning;
				skillIndex = i;
				skill = other.skills[i];
				event_perform(ev_alarm,1);
			}
		}
	}
    if instance_exists(Player)//EXTRA WINGS JOKE!
    {
	    if Player.race=18
	    with SkillIcon
	    {
	        if skill=2//extra feet
	        {
	        sprite_index=sprExtraWings;
	        image_index=0;
	        }
	    }
	    if (scrIsGamemode(24))
		{
			with SkillIcon
				skill = 22;//SHARPSTRESS	
		}
    }
}
image_speed = 0;
alarm[1] = 15;
if array_length(UberCont.skillDeposit) > 0
{
	with Player
	{
		var al = array_length(UberCont.skillDeposit);
		for (var i = 0; i < al; i++)
		{
			skill_got[UberCont.skillDeposit[i]] = false;
		}
	}
}
//Power craving locked out when you dont have inverted areas
if !UberCont.unlocked_alt_routes && !scrIsGamemode(26) && !scrIsGamemode(27) {
	skill_got[30] = 0;
}
if scrIsGamemode(32) {
	// One hit wonder
	with Player
	{
		//No alkaline and no strong spirit
		strongspirit = false;
		strongspiritused = false;
		skill_got[5] = 0;
		skill_got[14] = 0;
		skill_got[25] = 0;
		skill_got[32] = 0;
		skill_got[18] = 0;
		skill_got[38] = 0;
		skill_got[40] = 0;
		skill_got[46] = 0;
		ultra_got[19] = 0;
		ultra_got[48] = 0;
		ultra_got[33] = 0;
		ultra_got[40] = 0;
		ultra_got[62] = 0;
		ultra_got[66] = 0;
		ultra_got[75] = 0;
		ultra_got[76] = 0;
		ultra_got[103] = 0;
		if race != 10 && race != 12 && race != 19
		{
			skill_got[1] = 0;
			skill_got[7] = 0;
			skill_got[9] = 0;
			skill_got[31] = 0;
			skill_got[41] = 0;
			skill_got[22] = 0;
		}
		if race != 12
		{
			//YC
			skill_got[7] = 0;// Bloodlust
			skill_got[41] = 0;//Nerves of steel
			skill_got[22] = 0;//Sharp Stress
		}
	}
}
if scrIsGamemode(48) {//Marksman
		with Player
		{
			//AMMO REGEN MUTS & wepspes and other useless ones
			skill_got[6] =  0;
			skill_got[10] = 0;
			skill_got[13] = 0;
			skill_got[15] = 0;
			skill_got[16] = 0;
			skill_got[17] = 0;
			skill_got[21] = 0;
			skill_got[23] = 0;
			skill_got[40] = 0;
			skill_got[42] = 0;
		}
	}
SetSeed();
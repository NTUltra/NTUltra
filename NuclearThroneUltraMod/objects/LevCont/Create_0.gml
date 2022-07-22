pick = 0
canmove = 1
skillscroll = 0;
holdExplainUltraModTimer = 0;
holdExplainWepModTimer = 0;
holdExplainMutation = 0;
holdExplainGamemode = 0;
__view_set( e__VW.XView, 0, 0 )
__view_set( e__VW.YView, 0, 0 )
wave = 0
if UberCont.useSeed && instance_exists(Player)
	random_set_seed(UberCont.seed+Player.lastarea+Player.lastsubarea+Player.skillpoints);

if Player.crownpoints > 0
{
scrCrowns()
dir = 0
repeat(crownmax+1)
{
if dir<12
{
	with instance_create(__view_get( e__VW.XView, 0 )+14+dir*26.5,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-50,CrownIcon)//24
	{
		crown = other.dir
		if crown == 0//Crown of freedom secret
			crown = 25;
		if crown == 8 && Player.tookDestiny//Crown of sloth secret
			crown = 24;
	}
}
else
{with instance_create(__view_get( e__VW.XView, 0 )+14+(dir-12)*26.5,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-16,CrownIcon)//24
crown = other.dir
}
dir += 1}
}
else
{
if Player.hogpoints > 1// && Player.area=105 && Player.subarea=1
{
	scrUnlockCSkin(20,"FOR SUCCESFULLY USING#THE INVESTMENT ULTRA",0);
    scrUltras()
    scrBusinessHogInvestment();
    
    exit;
}
else if (Player.skillsChosen>7 || (Player.ultra_got[0] && !Player.altUltra && !Player.horrorEtaken
|| Player.ultraNow))&&(Player.ultra_got[75]==0)//ULTRA! Player.level>9 not skelly redemption ultra a Player.skillsChosen>7
{
	Player.ultraNow = false;
	//UNLOCK MUTATION DOCTOR/SMITH
	scrUnlockCharacter(25,"FOR GETTING AN ULTRA MUTATION");

	if Player.ultra_got[0]=1 && !Player.altUltra && !Player.horrorEtaken//&&(Player.skillsChosen>7)
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
			if ((Player.race == 21 && Player.ultra_got[0] == 1 && !Player.altUltra) || Player.race != 21)
			{
				instance_create(x,y,LevCont);
				instance_destroy();
			}
		}
		if UberCont.opt_gamemode == 28 //ALL MUTATION CHOICES
		{
			var xx = __view_get( e__VW.XView, 0 )+16;
			var yy = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24;
			var step = 30;
			scrollWidth = (-(__view_get( e__VW.WView, 0 ))) - 8
			scroll = 0;
			for (var i = 0; i <= maxultra; i++) {
				if (Player.ultra_got[i] = 0)
				{
					with instance_create(xx,yy,UltraIcon)
					{
						skill = i;
					}
					xx += step;
					scrollWidth += step;
				}
				else
				{
					i++;
				}
			}
		}
	    else if Player.crown != 8
		{
		    if Player.race=21//horror
		    {
		    if (Player.ultra_got[skill1] == 0)
		    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-64,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,UltraIcon)
		    skill = other.skill1
	
		    if (Player.ultra_got[skill2] == 0)
		    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-32,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,UltraIcon)
		    skill = other.skill2
	
		    if (Player.ultra_got[skill3] == 0)
		    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,UltraIcon)
		    skill = other.skill3
	
		    if (Player.ultra_got[skill4] == 0)
		    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+32,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,UltraIcon)
		    skill = other.skill4
	
		    if (Player.ultra_got[0] == 0)
		    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+64,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,UltraIcon)
		    skill = 0
    
		    }
		    else
		    {
			if (Player.ultra_got[skill1] == 0)
		    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-72,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,UltraIcon)
		    skill = other.skill1
    
			if (Player.ultra_got[skill2] == 0)
		    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-24,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,UltraIcon)
		    skill = other.skill2
    
			if (Player.ultra_got[skill3] == 0)
		    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+24,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,UltraIcon)
		    skill = other.skill3
    
			if (Player.ultra_got[skill4] == 0)
		    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+72,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,UltraIcon)
		    skill = other.skill4
			
			if Player.wep == 0 && Player.bwep == 0 && Player.race != 14 && UberCont.opt_gamemode != 14//not fish only partner and not panda
			with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+120,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,UltraIcon)
		    skill = 109
		    }
		}
		else
		{
			//CROWN OF DESTINYYYYYYY
			if Player.race=21//horror
			{
			do {
			chosenskill=choose(skill1,skill2,skill3,skill4)
			} until (Player.ultra_got[chosenskill] == 0)

			with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-24,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,UltraIcon)
			{
			skill = other.chosenskill}
 
			if (Player.ultra_got[skill1] + Player.ultra_got[skill2] + Player.ultra_got[skill3] + Player.ultra_got[skill4] > 1)
			{
				do{
				otherchosenskill=choose(skill1,skill2,skill3,skill4)
				}until (otherchosenskill!=chosenskill && Player.ultra_got[otherchosenskill] == 0 )

				with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+24,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,UltraIcon)
				skill = other.otherchosenskill
			}

			}
			else
			{
			with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,UltraIcon)
			skill = choose(other.skill1,other.skill2,other.skill3,other.skill4);
			}
		}
	}

	pick = 0//ehm not necessary
	canmove = 1    
	exit;    
    
    }//end of the ultra code
    else if Player.ultra_got[73]{//*/ Skelly ultra A redemption patience all da time
    
    scrSkills()//maybe dont run this when ultra
    //27
    skill0=27;//patience

    
    if scrSkillLeft(0,0,0,0) 
	{
    do skill1 = ceil(random(maxskill))
    until Player.skill_got[skill1] = 0
	}
    else
    skill1=maxskill+1
    
    if scrSkillLeft(0,0,0,skill1)
	{
    do skill2 = ceil(random(maxskill))
    until skill2 != skill1 and Player.skill_got[skill2] = 0
	}
    else
    skill2=maxskill+1
    
    if scrSkillLeft(0,0,skill2,skill1)
	{
    do skill3 = ceil(random(maxskill))
    until skill3 != skill1 and skill3 != skill2 and Player.skill_got[skill3] = 0
	}
    else
    skill3=maxskill+1
    
    if scrSkillLeft(0,skill3,skill2,skill1)
	{
    do skill4 = ceil(random(maxskill))
    until skill4 != skill1 and skill4 != skill2 and skill4 != skill3 and Player.skill_got[skill4] = 0
	}
    else
    skill4=maxskill+1
	
	if scrSkillLeft(skill4,skill3,skill2,skill1)  
	{
    do skill5 = ceil(random(maxskill))
    until skill5 != skill1 and skill5 != skill2 and skill5 != skill3 and skill5 != skill4 and Player.skill_got[skill5] = 0
	}
    else
    skill5=maxskill+1
    
    }
    else{
	//Get a regular mutation
    if UberCont.opt_gamemode == 32 {
		//No alkaline boiling veins and no strong spirit
		// One hit wonder
		with Player
		{
			skill_got[14] = 1;
			skill_got[25] = 1;
			skill_got[32] = 1;
			if race != 10 && race != 12 && race != 18 && race != 19
			{
				//not Rebel yung cuz, angel and skeleton
				//Disable rhino skin, bloodlust second stomach and tough shell
				skill_got[1] = 1;
				skill_got[7] = 1;
				skill_got[9] = 1;
				skill_got[31] = 1;
			}
		}
	}
    scrSkills()//maybe dont run this when ultra
    
    if scrSkillLeft(0,0,0,0) 
	{
    do skill1 = ceil(random(maxskill))
    until Player.skill_got[skill1] = 0
	}
    else
    skill1=maxskill+1
    
    if Player.heavyheart=3
    {
    skill1=0;
    Player.heavyheart=-999;//never again
    }
    
    if scrSkillLeft(0,0,0,skill1)
	{
    do skill2 = ceil(random(maxskill))
    until skill2 != skill1 and Player.skill_got[skill2] = 0
	}
    else
    skill2=maxskill+1
    
    if scrSkillLeft(0,0,skill2,skill1)
	{
    do skill3 = ceil(random(maxskill))
    until skill3 != skill1 and skill3 != skill2 and Player.skill_got[skill3] = 0
	}
    else
    skill3=maxskill+1
    
    if scrSkillLeft(0,skill3,skill2,skill1) 
	{
    do skill4 = ceil(random(maxskill))
    until skill4 != skill1 and skill4 != skill2 and skill4 != skill3 and Player.skill_got[skill4] = 0
	}
    else
    skill4=maxskill+1
    
    
    if scrSkillLeft(skill4,skill3,skill2,skill1) 
	{
    do skill5 = ceil(random(maxskill))
    until skill5 != skill1 and skill5 != skill2 and skill5 != skill3 and skill5 != skill4 and Player.skill_got[skill5] = 0
	}
    else
    skill5=maxskill+1
    
	if Player.race=21//Horror
    {
		if scrSkillLeft(skill5,skill4,skill3,skill2,skill1) 
		{
	    do skill6 = ceil(random(maxskill))
	    until skill6 != skill1 and skill6 != skill2 and skill6 != skill3 and skill6 != skill4 and skill6 != skill5 and Player.skill_got[skill6] = 0
		}
	    else
	    skill6=maxskill+1
    }
    
    }


//}

	if UberCont.opt_gamemode == 28 //ALL MUTATION CHOICES
	{
		var xx = __view_get( e__VW.XView, 0 )+16;
		var yy = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24;
		var step = 30;
		scrollWidth = (-(__view_get( e__VW.WView, 0 ))) - 8
		scroll = 0;
		for (var i = 0; i <= maxskill; i++) {
			if (Player.skill_got[i] = 0)
			{
				with instance_create(xx,yy,SkillIcon)
				{
					skill = i;
				}
				xx += step;
				scrollWidth += step;
			}
			else
			{
				i++;
			}
		}
	}
    else if Player.crown != 8
    {
    
    if Player.race=21//Horror
    {
    
    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-112,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,SkillIcon)
    skill = other.skill1
    
    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-72,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,SkillIcon)
    skill = other.skill2
    
    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-24,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,SkillIcon)
    skill = other.skill3
    
    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+24,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,SkillIcon)
    skill = other.skill4
    
    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+72,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,SkillIcon)
    skill = other.skill5
	
	
	with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+112,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,SkillIcon)
    skill = other.skill6
    
    }
    else{
	    if Player.ultra_got[73]//Melting ultra A patience
	    {
	    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-96,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,SkillIcon)
	    skill = other.skill0
	    }
    
	    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-64,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,SkillIcon)
	    skill = other.skill1
    
	    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-32,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,SkillIcon)
	    skill = other.skill2
    
	    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,SkillIcon)
	    skill = other.skill3
    
	    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+32,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,SkillIcon)
	    skill = other.skill4
	
		with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+64,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,SkillIcon)
	    skill = other.skill5
	    }
	}
    else
    {
    //CROWN OF DESTINYYYYYYY
    if Player.race=21
    {//horror
    
	chosenskill=choose(skill1,skill2,skill3,skill4)

	with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-24,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,SkillIcon)
	skill = other.chosenskill

	do{
	otherchosenskill=choose(skill1,skill2,skill3,skill4)
	}until (otherchosenskill!=chosenskill||otherchosenskill=32)

	with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+24,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,SkillIcon)
	skill = other.otherchosenskill

	    }
	    else  
	    {
    
	    if Player.ultra_got[73]//Melting ultra A patience
	    {
	    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+24,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,SkillIcon)
	    skill = other.skill0
	    }
    
	    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,SkillIcon)
	    skill = choose(other.skill1,other.skill2,other.skill3,other.skill4);
	    }
    
    }
    if instance_exists(Player)//EXTRA WINGS JOKE!
    {
	    if Player.race=18 || Player.race=24
	    with SkillIcon
	    {
	        if skill=2//extra feet
	        {
	        sprite_index=sprExtraWings;
	        image_index=0;
	        }
	    }
	    if (UberCont.opt_gamemode == 24)
		{
			with SkillIcon
				skill = 22;//SHARPSTRESS	
		}
    }
}
image_speed = 0.4;
if UberCont.opt_gamemode == 32 {
	// One hit wonder
	with Player
	{
		//No alkaline and no strong spirit
		strongspirit = false;
		strongspiritused = false;
		skill_got[14] = 0;
		skill_got[25] = 0;
		skill_got[32] = 0;
		if race != 10 && race != 12 && race != 18 && race != 19
		{
			skill_got[1] = 0;
			skill_got[7] = 0;
			skill_got[9] = 0;
			skill_got[31] = 0;
		}
	}
}
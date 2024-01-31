function scrUltraEHorror() {
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
		
		do
	    {
	    skill5 = scrRandomUltraSelection();
	    }
	    until (skill5 != skill4 and skill5 != skill1 and skill5 != skill2 and skill5 != skill3 and Player.ultra_got[skill5] = 0)


	if !scrIsCrown(8)
	{
		//HORROR ULTRA E
		if Player.ultra_got[0] && !Player.altUltra
		{
		    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-112,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,SkillIcon)
			{
			    skill = 27//patience
				skillIndex = 0;
			}
		}
		with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-72,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,UltraIcon)
		{skill = other.skill1
			skillIndex = 1;
		}
		with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-24,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,UltraIcon)
		{skill = other.skill2
			skillIndex = 2
		}
		with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+24,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,UltraIcon)
		{skill = other.skill3
			skillIndex = 3
		}
		with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+72,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,UltraIcon)
		{skill = other.skill4
			skillIndex = 54
		}
		if Player.race == 21
		{
			with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+112,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,UltraIcon)
			{skill = other.skill5
				skillIndex = 5
			}
		}
	}
	else
	{
	//CROWN OF DESTINYYYYYYY
		//HORROR ULTRA E
		if Player.ultra_got[0] && !Player.altUltra
		{
		    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-32,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,SkillIcon)
			{
		    skill = 27//patience
			skillIndex = 0
			}
		}

		with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,UltraIcon)
		{
			skill = other.skill1
			skillIndex = 1
		}

		with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+32,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,UltraIcon)
		{	skill = other.skill2
			skillIndex = 2
		}


		if Player.race == 21
		{
			with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+64,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,UltraIcon)
			{
				skill = choose(other.skill3,other.skill4);
				skillIndex = 3
			}
		}

	}   
}
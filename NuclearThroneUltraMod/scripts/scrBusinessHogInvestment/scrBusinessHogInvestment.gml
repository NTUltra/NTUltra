function scrBusinessHogInvestment() {
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


	with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-72,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,UltraIcon)
	{skill = other.skill1
	}
	with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-24,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,UltraIcon)
	{skill = other.skill2
	}
	with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+24,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,UltraIcon)
	{skill = other.skill3
	}
	with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+72,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,UltraIcon)
	{skill = other.skill4
	}

	}
	else
	{
	//CROWN OF DESTINYYYYYYY

	with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,UltraIcon)
	skill = choose(other.skill1,other.skill2,other.skill3,other.skill4);

	}   


	Player.hogpoints -= 1;
	//Player.skillpoints -= 1;
	debug("SKILLPOINTS:",Player.skillpoints);
	/*
	if Player.hogpoints > 1 || Player.skillpoints > 0
	{
		with LevCont
			instance_destroy();
		instance_create(x,y,LevCont);
	}
*/
}

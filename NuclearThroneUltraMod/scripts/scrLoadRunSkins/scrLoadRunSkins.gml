///scrLoadRunSkins();
// /@description
///@param
function scrLoadRunSkins(race,bskin,altUltra,area){
	if bskin == 3
	{
		bskin = 0;
		altUltra = true;
	}
	else if bskin == 4
	{
		bskin = 1;
		altUltra = true;
	} else if bskin == 5
	{
		bskin = 2;
		altUltra = true;
	}
	else if bskin == 6
	{
		switch (race)
		{
			case 3:
				spr_idle = sprMutant3GIdle;
				spr_walk = sprMutant3GWalk;
				spr_hurt = sprMutant3GHurt;
				spr_dead = sprMutant3GDead;
			break;
		}
	}
	if bskin = 1
	{
		switch (race)
		{
			case 3:
			if altUltra
			{
				spr_idle = sprMutant3EIdle;
				spr_walk = sprMutant3EWalk;
				spr_hurt = sprMutant3EHurt;
				spr_dead = sprMutant3EDead;
			}	
			break;
			case 6:
			if altUltra
			{
				spr_idle = sprMutant6EIdle;
				spr_walk = sprMutant6EWalk;
				spr_hurt = sprMutant6EHurt;
				spr_dead = sprMutant6EDead;
			}
			break;
			case 8:
			if altUltra
			{
				spr_idle = sprMutant8EIdle;
				spr_walk = sprMutant8EWalk;
				spr_hurt = sprMutant8EHurt;
				spr_dead = sprMutant8EDead;
			}
			break;
			case 9:
			if altUltra
			{
				spr_idle = sprMutant9DIdle;
				spr_walk = sprMutant9DWalk;
				spr_hurt = sprMutant9DHurt;
				spr_dead = sprMutant9DDead;
			}
			break;
			case 10:
			if altUltra
			{
				if area == 5 || area == 108
				{
					spr_idle = sprMutant10HIdle;
					spr_walk = sprMutant10HWalk;
					spr_hurt = sprMutant10HHurt;
					spr_dead = sprMutant10HDead;
				}
				else
				{
					spr_idle = sprMutant10FIdle;
					spr_walk = sprMutant10FWalk;
					spr_hurt = sprMutant10FHurt;
					spr_dead = sprMutant10FDead;
				}
			}
			else if area == 5 || area == 108
			{
				spr_idle = sprMutant10DIdle;
				spr_walk = sprMutant10DWalk;
				spr_hurt = sprMutant10DHurt;
				spr_dead = sprMutant10DDead;
			}
			break;
			case 16:
			if altUltra
			{
				spr_idle = sprMutant16DIdle;
				spr_walk = sprMutant16DWalk;
				spr_hurt = sprMutant16DHurt;
				spr_dead = sprMutant16DDead;
			}
			break;
			case 21:
			if altUltra
			{
				spr_idle = sprMutant21DIdle;
				spr_walk = sprMutant21DWalk;
				spr_hurt = sprMutant21DHurt;
				spr_dead = sprMutant21DDead;
			}
			break;
			case 22:
			if altUltra
			{
				spr_idle = sprMutant22DIdle;
				spr_walk = sprMutant22DWalk;
				spr_hurt = sprMutant22DHurt;
				spr_dead = sprMutant22DDead;
			}
			break;
		}
	}
	else if bskin=2//cskin
	{
		switch (race)
		{
			case 3:
			if altUltra
			{
				spr_idle = sprMutant3FIdle;
				spr_walk = sprMutant3FWalk;
				spr_hurt = sprMutant3FHurt;
				spr_dead = sprMutant3FDead;
			}
			break;
	
			case 10:
			if altUltra
			{
				spr_idle = sprMutant10GIdle;
				spr_walk = sprMutant10GWalk;
				spr_hurt = sprMutant10GHurt;
				spr_dead = sprMutant10GDead;
			}
			break;
			case 16:
			if altUltra
			{
				spr_idle = sprMutant16DIdle;
				spr_walk = sprMutant16DWalk;
				spr_hurt = sprMutant16DHurt;
				spr_dead = sprMutant16DDead;
			}
			break;
			case 21:
			if altUltra
			{
				spr_idle = sprMutant21EIdle;
				spr_walk = sprMutant21EWalk;
				spr_hurt = sprMutant21EHurt;
				spr_dead = sprMutant21EDead;
			}
			break;
			case 22:
			if altUltra
			{
				spr_idle = sprMutant22DIdle;
				spr_walk = sprMutant22DWalk;
				spr_hurt = sprMutant22DHurt;
				spr_dead = sprMutant22DDead;
			}
			break;
		}
	}
	else//REGULAR SKIN!
	{
		switch (race)
		{
			case 3:
			if altUltra
			{
				spr_idle = sprMutant3DIdle;
				spr_walk = sprMutant3DWalk;
				spr_hurt = sprMutant3DHurt;
				spr_dead = sprMutant3DDead;
			}
			break;
			case 5:
			if altUltra
			{
				spr_idle = sprMutant5DIdle;
				spr_walk = sprMutant5DWalk;
				spr_hurt = sprMutant5DHurt;
				spr_dead = sprMutant5DDead;
			}
			break;
			case 6:
			if altUltra
			{
				spr_idle = sprMutant6DIdle;
				spr_walk = sprMutant6DWalk;
				spr_hurt = sprMutant6DHurt;
				spr_dead = sprMutant6DDead;
			}
			break;
			case 8:
			if altUltra
			{
				spr_idle = sprMutant8DIdle;
				spr_walk = sprMutant8DWalk;
				spr_hurt = sprMutant8DHurt;
				spr_dead = sprMutant8DDead;
			}
			break;
			case 9:
			if altUltra
			{
				spr_idle = sprMutant9DIdle;
				spr_walk = sprMutant9DWalk;
				spr_hurt = sprMutant9DHurt;
				spr_dead = sprMutant9DDead;
			}
			break;
			case 10:
			if altUltra
			{
				spr_idle = sprMutant10EIdle;
				spr_walk = sprMutant10EWalk;
				spr_hurt = sprMutant10EHurt;
				spr_dead = sprMutant10EDead;
			}
			break;
			case 16:
			if altUltra
			{
				spr_idle = sprMutant16DIdle;
				spr_walk = sprMutant16DWalk;
				spr_hurt = sprMutant16DHurt;
				spr_dead = sprMutant16DDead;
			}
			break;
			case 21:
			if altUltra
			{
				spr_idle = sprMutant21DIdle;
				spr_walk = sprMutant21DWalk;
				spr_hurt = sprMutant21DHurt;
				spr_dead = sprMutant21DDead;
			}
			break;
			case 22:
			return sprMutant22Idle;
			if altUltra
			{
				spr_idle = sprMutant22DIdle;
				spr_walk = sprMutant22DWalk;
				spr_hurt = sprMutant22DHurt;
				spr_dead = sprMutant22DDead;
			}
			break;
		}
	}
}
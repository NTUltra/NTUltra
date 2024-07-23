function scrLoadRace() {
	snd_good = [];
	spr_sit = sprMutant19Sit;
	//RACE STUFF not using the stupid functions
	if bskin = 1
	{
	switch (race)
	{
	case 1:
	spr_idle=sprMutant1BIdle;
	spr_walk=sprMutant1BWalk;
	spr_hurt=sprMutant1BHurt;
	spr_dead=sprMutant1BDead;
	spr_go_sit = sprMutant1BGoSit;
	spr_sit = sprMutant1BSit;
	break;
	case 2:
	spr_idle=sprMutant2BIdle;
	spr_walk=sprMutant2BWalk;
	spr_hurt=sprMutant2BHurt;
	spr_dead=sprMutant2BDead;
	spr_go_sit = sprMutant2BGoSit;
	spr_sit = sprMutant2BSit;
	break;
	case 3:
	spr_idle=sprMutant3BIdle;
	spr_walk=sprMutant3BWalk;
	spr_hurt=sprMutant3BHurt;
	spr_dead=sprMutant3BDead;
	spr_go_sit = sprMutant3BGoSit;
	spr_sit = sprMutant3BSit;
	break;
	case 4:
	spr_idle=sprMutant4BIdle;
	spr_walk=sprMutant4BWalk;
	spr_hurt=sprMutant4BHurt;
	spr_dead=sprMutant4BDead;
	spr_go_sit = sprMutant4BGoSit;
	spr_sit = sprMutant4BSit;
	break;
	case 5:
	spr_idle=sprMutant5BIdle;
	spr_walk=sprMutant5BWalk;
	spr_hurt=sprMutant5BHurt;
	spr_dead=sprMutant5BDead;
	spr_go_sit = sprMutant5BGoSit;
	spr_sit = sprMutant5BSit;
	break;
	case 6:
	spr_idle=sprMutant6BIdle;
	spr_walk=sprMutant6BWalk;
	spr_hurt=sprMutant6BHurt;
	spr_dead=sprMutant6BDead;
	spr_go_sit = sprMutant6BGoSit;
	spr_sit = sprMutant6BSit;
	break;
	case 7:
	spr_idle=sprMutant7BIdle;
	spr_walk=sprMutant7BWalk;
	spr_hurt=sprMutant7BHurt;
	spr_dead=sprMutant7BDead;
	spr_go_sit = sprMutant7BGoSit;
	spr_sit = sprMutant7BSit;
	break;
	case 8:
	spr_idle=sprMutant8BIdle;
	spr_walk=sprMutant8BWalk;
	spr_hurt=sprMutant8BHurt;
	spr_dead=sprMutant8BDead;
	spr_go_sit = sprMutant8BGoSit;
	spr_sit = sprMutant8BSit;
	break;
	case 9:
	spr_idle=sprMutant9BIdle;
	spr_walk=sprMutant9BWalk;
	spr_hurt=sprMutant9BHurt;
	spr_dead=sprMutant9Dead;
	spr_go_sit = sprMutant9BGoSit;
	spr_sit = sprMutant9BSit;
	break;
	case 10:
	spr_idle=sprMutant10BIdle;
	spr_walk=sprMutant10BWalk;
	spr_hurt=sprMutant10BHurt;
	spr_dead=sprMutant10BDead;
	spr_go_sit = sprMutant10BGoSit;
	spr_sit = sprMutant10BSit;
	break;
	case 11:
	spr_idle=sprMutant11BIdle;
	spr_walk=sprMutant11BWalk;
	spr_hurt=sprMutant11BHurt;
	spr_dead=sprMutant11BDead;
	spr_go_sit = sprMutant11BIdle;//TODO
	spr_sit = sprMutant11BIdle;//TODO
	break;
	case 12:
	spr_idle=sprMutant12BIdle;
	spr_walk=sprMutant12BWalk;
	spr_hurt=sprMutant12BHurt;
	spr_dead=sprMutant12BDeadOld;
	spr_go_sit = sprMutant12BIdle;//TODO
	spr_sit = sprMutant12BIdle;//TODO
	break;
	case 13:
	spr_idle=sprMutant13BIdle;
	spr_walk=sprMutant13BWalk;
	spr_hurt=sprMutant13BHurt;
	spr_dead=sprMutant13BDead;
	spr_go_sit = sprMutant13BIdle;//TODO
	spr_sit = sprMutant13BIdle;//TODO
	break;
	case 14:
	spr_idle=sprMutant14BIdle;
	spr_walk=sprMutant14BWalk;
	spr_hurt=sprMutant14BHurt;
	spr_dead=sprMutant14BDead;
	spr_go_sit = sprMutant14BIdle;//TODO
	spr_sit = sprMutant14BIdle;//TODO
	break;
	case 15:
	spr_idle=sprMutant15BIdle;
	spr_walk=sprMutant15BWalk;
	spr_hurt=sprMutant15BHurt;
	spr_dead=sprMutant15BDead;
	spr_go_sit = sprMutant15BIdle;//TODO
	spr_sit = sprMutant15BIdle;//TODO
	break;
	case 16:
	spr_idle=sprMutant16BIdle;
	spr_walk=sprMutant16BWalk;
	spr_hurt=sprMutant16BHurt;
	spr_dead=sprMutant16BDead;
	spr_go_sit = sprMutant16BIdle;//TODO
	spr_sit = sprMutant16BIdle;//TODO
	break;
	case 17:
	spr_idle=sprMutant17BIdle;
	spr_walk=sprMutant17BWalk;
	spr_hurt=sprMutant17BHurt;
	spr_dead=sprMutant17BDead;
	spr_go_sit = sprMutant17BIdle;//TODO
	spr_sit = sprMutant17BIdle;//TODO
	break;
	case 18:
	spr_idle=sprMutant18BIdle;
	spr_walk=sprMutant18BIdle;
	spr_hurt=sprMutant18BHurt;
	spr_dead=sprMutant18BDead;
	spr_go_sit = sprMutant18BIdle;//TODO
	spr_sit = sprMutant18BIdle;//TODO
	break;
	case 19:
	spr_idle=sprMutant19BIdle;
	spr_walk=sprMutant19BWalk;
	spr_hurt=sprMutant19BHurt;
	spr_dead=sprMutant19BDead;
	spr_go_sit = sprMutant19BIdle;//TODO
	spr_sit = sprMutant19BIdle;//TODO
	break;
	case 20:
	spr_idle=sprMutant20BIdle;
	spr_walk=sprMutant20BWalk;
	spr_hurt=sprMutant20BHurt;
	spr_dead=sprMutant20BDead;
	spr_go_sit = sprMutant20BIdle;//TODO
	spr_sit = sprMutant20BIdle;//TODO
	break;
	case 21:
	spr_idle=sprMutant21BIdle;
	spr_walk=sprMutant21BWalk;
	spr_hurt=sprMutant21BHurt;
	spr_dead=sprMutant21BDead;
	spr_go_sit = sprMutant21BGoSit;
	spr_sit = sprMutant21BSit;
	break;
	case 22:
	spr_idle=sprMutant22BIdle;
	spr_walk=sprMutant22BWalk;
	spr_hurt=sprMutant22BHurt;
	spr_dead=sprMutant22BDead;
	spr_go_sit = sprMutant22BGoSit;
	spr_sit = sprMutant22BSit;
	break;
	case 23:
	spr_idle=sprMutant23BIdle;
	spr_walk=sprMutant23BWalk;
	spr_hurt=sprMutant23BHurt;
	spr_dead=sprMutant23BDead;
	spr_go_sit = sprMutant23BGoSit;
	spr_sit = sprMutant23BSit;
	break;
	case 24:
	spr_idle=sprMutant24BIdle;
	spr_walk=sprMutant24BWalk;
	spr_hurt=sprMutant24BHurt;
	spr_dead=sprMutant24BDead;
	spr_go_sit = sprMutant24BIdle;//TODO
	spr_sit = sprMutant24BIdle;//TODO
	break;
	case 25:
	spr_idle=sprMutant25BIdle;
	spr_walk=sprMutant25BWalk;
	spr_hurt=sprMutant25BHurt;
	spr_dead=sprMutant25BDead;
	spr_go_sit = sprMutant25BIdle;//TODO
	spr_sit = sprMutant25BIdle;//TODO
	break;
	case 26:
	spr_idle=sprMutant26BIdle;
	spr_walk=sprMutant26BWalk;
	spr_hurt=sprMutant26BHurt;
	spr_dead=sprMutant26BDead;
	spr_go_sit = sprMutant26BIdle;//TODO
	spr_sit = sprMutant26BIdle;//TODO
	break;
	case 27:
	spr_idle=sprMutant27BIdle;
	spr_walk=sprMutant27BWalk;
	spr_hurt=sprMutant27BHurt;
	spr_dead=sprMutant27BDead;
	spr_go_sit = sprMutant27BIdle;//TODO
	spr_sit = sprMutant27BIdle;//TODO
	break;

	}
	}
	else if bskin=2//cskin
	{
	switch (race)
	{
	case 1:
	spr_idle=sprMutant1CIdle;
	spr_walk=sprMutant1CWalk;
	spr_hurt=sprMutant1CHurt;
	spr_dead=sprMutant1CDead;
	spr_go_sit = sprMutant1CGoSit;
	spr_sit = sprMutant1CSit;
	break;
	case 2:
	spr_idle=sprMutant2CIdle;
	spr_walk=sprMutant2CWalk;
	spr_hurt=sprMutant2CHurt;
	spr_dead=sprMutant2CDead;
	spr_go_sit = sprMutant2CIdle;//TODO
	spr_sit = sprMutant2CIdle;//TODO
	break;
	case 3:
	spr_idle=sprMutant3CIdle;
	spr_walk=sprMutant3CWalk;
	spr_hurt=sprMutant3CHurt;
	spr_dead=sprMutant3CDead;
	spr_go_sit = sprMutant3CIdle;//TODO
	spr_sit = sprMutant3CIdle;//TODO
	break;
	case 4:
	spr_idle=sprMutant4CIdle;
	spr_walk=sprMutant4CWalk;
	spr_hurt=sprMutant4CHurt;
	spr_dead=sprMutant4CDead;
	spr_go_sit = sprMutant4CIdle;//TODO
	spr_sit = sprMutant4CIdle;//TODO
	break;
	case 5:
	spr_idle=sprMutant5CIdle;
	spr_walk=sprMutant5CWalk;
	spr_hurt=sprMutant5CHurt;
	spr_dead=sprMutant5CDead;
	spr_go_sit = sprMutant5CIdle;//TODO
	spr_sit = sprMutant5CIdle;//TODO
	break;
	case 6:
	spr_idle=sprMutant6CIdle;
	spr_walk=sprMutant6CWalk;
	spr_hurt=sprMutant6CHurt;
	spr_dead=sprMutant6CDead;
	spr_go_sit = sprMutant6CIdle;//TODO
	spr_sit = sprMutant6CIdle;//TODO
	break;
	case 7:
	spr_idle=sprMutant7CIdle;
	spr_walk=sprMutant7CWalk;
	spr_hurt=sprMutant7CHurt;
	spr_dead=sprMutant7CDead;
	spr_go_sit = sprMutant7CIdle;//TODO
	spr_sit = sprMutant7CIdle;//TODO
	break;
	case 8:
	spr_idle=sprMutant8CIdle;
	spr_walk=sprMutant8CWalk;
	spr_hurt=sprMutant8CHurt;
	spr_dead=sprMutant8CDead;
	spr_go_sit = sprMutant8CIdle;//TODO
	spr_sit = sprMutant8CIdle;//TODO
	break;
	case 9:
	spr_idle=sprMutant9CIdle;
	spr_walk=sprMutant9CWalk;
	spr_hurt=sprMutant9CHurt;
	spr_dead=sprMutant9CDead;
	spr_go_sit = sprMutant9CIdle;//TODO
	spr_sit = sprMutant9CIdle;//TODO
	break;
	case 10:
	spr_idle=sprMutant10CIdle;
	spr_walk=sprMutant10CWalk;
	spr_hurt=sprMutant10CHurt;
	spr_dead=sprMutant10CDead;
	spr_go_sit = sprMutant10CIdle;//TODO
	spr_sit = sprMutant10CIdle;//TODO
	break;
	case 11:
	spr_idle=sprMutant11CIdle;
	spr_walk=sprMutant11CWalk;
	spr_hurt=sprMutant11CHurt;
	spr_dead=sprMutant11CDead;
	spr_go_sit = sprMutant11CIdle;//TODO
	spr_sit = sprMutant11CIdle;//TODO
	break;
	case 12:
	spr_idle=sprMutant12CIdle;
	spr_walk=sprMutant12CWalk;
	spr_hurt=sprMutant12CHurt;
	spr_dead=sprMutant12CDead;
	spr_go_sit = sprMutant12CIdle;//TODO
	spr_sit = sprMutant12CIdle;//TODO
	break;
	case 13:
	spr_idle=sprMutant13CIdle;
	spr_walk=sprMutant13CWalk;
	spr_hurt=sprMutant13CHurt;
	spr_dead=sprMutant13CDead;
	spr_go_sit = sprMutant13CIdle;//TODO
	spr_sit = sprMutant13CIdle;//TODO
	break;
	case 14:
	spr_idle=sprMutant14CIdle;
	spr_walk=sprMutant14CWalk;
	spr_hurt=sprMutant14CHurt;
	spr_dead=sprMutant14CDead;
	spr_go_sit = sprMutant14CIdle;//TODO
	spr_sit = sprMutant14CIdle;//TODO
	break;
	case 15:
	spr_idle=sprMutant15CIdleOld;
	spr_walk=sprMutant15CWalk;
	spr_hurt=sprMutant15CHurt;
	spr_dead=sprMutant15CDead;
	spr_go_sit = sprMutant15CIdleOld;//TODO
	spr_sit = sprMutant15CIdleOld;//TODO
	break;
	case 16:
	spr_idle=sprMutant16CIdle;
	spr_walk=sprMutant16CWalk;
	spr_hurt=sprMutant16CHurt;
	spr_dead=sprMutant16CDead;
	spr_go_sit = sprMutant16CIdle;//TODO
	spr_sit = sprMutant16CIdle;//TODO
	break;
	case 17:
	spr_idle=sprMutant17CIdle;
	spr_walk=sprMutant17CWalk;
	spr_hurt=sprMutant17CHurt;
	spr_dead=sprMutant17CDead;
	spr_go_sit = sprMutant17CIdle;//TODO
	spr_sit = sprMutant17CIdle;//TODO
	break;
	case 18:
	spr_idle=sprMutant18CIdle;
	spr_walk=sprMutant18CIdle;
	spr_hurt=sprMutant18CHurt;
	spr_dead=sprMutant18CDead;
	spr_go_sit = sprMutant18CIdle;//TODO
	spr_sit = sprMutant18CIdle;//TODO
	break;
	case 19:
	spr_idle=sprMutant19CIdle;
	spr_walk=sprMutant19CWalk;
	spr_hurt=sprMutant19CHurt;
	spr_dead=sprMutant19CDead;
	spr_go_sit = sprMutant19CIdle;//TODO
	spr_sit = sprMutant19CIdle;//TODO
	break;
	case 20:
	spr_idle=sprMutant20CIdle;
	spr_walk=sprMutant20CWalk;
	spr_hurt=sprMutant20CHurt;
	spr_dead=sprMutant20CDead;
	spr_go_sit = sprMutant20CIdle;//TODO
	spr_sit = sprMutant20CIdle;//TODO
	break;
	case 21:
	spr_idle=sprMutant21CIdle;
	spr_walk=sprMutant21CWalk;
	spr_hurt=sprMutant21CHurt;
	spr_dead=sprMutant21CDead;
	spr_go_sit = sprMutant21CIdle;//TODO
	spr_sit = sprMutant21CIdle;//TODO
	break;
	case 22:
	spr_idle=sprMutant22CIdle;
	spr_walk=sprMutant22CWalk;
	spr_hurt=sprMutant22CHurt;
	spr_dead=sprMutant22CDead;
	spr_go_sit = sprMutant22CIdle;//TODO
	spr_sit = sprMutant22CIdle;//TODO
	break;
	case 23:
	spr_idle=sprMutant23CIdle;
	spr_walk=sprMutant23CWalk;
	spr_hurt=sprMutant23CHurt;
	spr_dead=sprMutant23CDead;
	spr_go_sit = sprMutant23CIdle;//TODO
	spr_sit = sprMutant23CIdle;//TODO
	break;
	case 24:
	spr_idle=sprMutant24CIdle;
	spr_walk=sprMutant24CWalk;
	spr_hurt=sprMutant24CHurt;
	spr_dead=sprMutant24CDead;
	spr_go_sit = sprMutant24CIdle;//TODO
	spr_sit = sprMutant24CIdle;//TODO
	break;
	case 25:
	spr_idle=sprMutant25CIdle;
	spr_walk=sprMutant25CWalk;
	spr_hurt=sprMutant25CHurt;
	spr_dead=sprMutant25CDead;
	spr_go_sit = sprMutant25CIdle;//TODO
	spr_sit = sprMutant25CIdle;//TODO
	break;
	case 26:
	spr_idle=sprMutant26CIdle;
	spr_walk=sprMutant26CWalk;
	spr_hurt=sprMutant26CHurt;
	spr_dead=sprMutant26CDead;
	spr_go_sit = sprMutant26CIdle;//TODO
	spr_sit = sprMutant26CIdle;//TODO
	break;
	case 27:
	spr_idle=sprMutant27CIdle;
	spr_walk=sprMutant27CWalk;
	spr_hurt=sprMutant27CHurt;
	spr_dead=sprMutant27CDead;
	spr_go_sit = sprMutant27CIdle;//TODO
	spr_sit = sprMutant27CIdle;//TODO
	break;
	}

	}
	else if bskin=3//dskin
	{
	switch (race)
	{
		case 3:
		spr_idle=sprMutant3DIdle;
		spr_walk=sprMutant3DWalk;
		spr_hurt=sprMutant3DHurt;
		spr_dead=sprMutant3DDead;
		spr_go_sit = sprMutant3DIdle;//TODO
		spr_sit = sprMutant3DIdle;//TODO
		break;
		case 5:
		spr_idle=sprMutant5DIdle;
		spr_walk=sprMutant5DWalk;
		spr_hurt=sprMutant5DHurt;
		spr_dead=sprMutant5DDead;
		spr_go_sit = sprMutant5DGoSit;
		spr_sit = sprMutant5DSit;
		break;
		case 6:
		spr_idle=sprMutant6DIdle;
		spr_walk=sprMutant6DWalk;
		spr_hurt=sprMutant6DHurt;
		spr_dead=sprMutant6DDead;
		spr_go_sit = sprMutant6DIdle;//TODO
		spr_sit = sprMutant6DIdle;//TODO
		break;
		case 8:
		spr_idle=sprMutant8DIdle;
		spr_walk=sprMutant8DWalk;
		spr_hurt=sprMutant8DHurt;
		spr_dead=sprMutant8DDead;
		spr_go_sit = sprMutant8DIdle;//TODO
		spr_sit = sprMutant8DIdle;//TODO
		break;
		case 9:
		spr_idle=sprMutant9DIdle;
		spr_walk=sprMutant9DWalk;
		spr_hurt=sprMutant9DHurt;
		spr_dead=sprMutant9DDead;
		spr_go_sit = sprMutant9DIdle;//TODO
		spr_sit = sprMutant9DIdle;//TODO
		break;
		case 10:
		spr_idle=sprMutant10EIdle;
		spr_walk=sprMutant10EWalk;
		spr_hurt=sprMutant10EHurt;
		spr_dead=sprMutant10EDead;
		spr_go_sit = sprMutant10EIdle;//TODO
		spr_sit = sprMutant10EIdle;//TODO
		break;
		case 16:
		spr_idle=sprMutant16DIdle;
		spr_walk=sprMutant16DWalk;
		spr_hurt=sprMutant16DHurt;
		spr_dead=sprMutant16DDead;
		spr_go_sit = sprMutant16DIdle;//TODO
		spr_sit = sprMutant16DIdle;//TODO
		break;
		case 21:
		spr_idle=sprMutant21DIdle;
		spr_walk=sprMutant21DWalk;
		spr_hurt=sprMutant21DHurt;
		spr_dead=sprMutant21DDead;
		spr_go_sit = sprMutant21DIdle;//TODO
		spr_sit = sprMutant21DIdle;//TODO
		break;
		case 22:
		spr_idle=sprMutant22DIdle;
		spr_walk=sprMutant22DWalk;
		spr_hurt=sprMutant22DHurt;
		spr_dead=sprMutant22DDead;
		spr_go_sit = sprMutant22DIdle;//TODO
		spr_sit = sprMutant22DIdle;//TODO
		break;
		case 25:
		spr_idle=sprMutant25DIdle;
		spr_walk=sprMutant25DWalk;
		spr_hurt=sprMutant25DHurt;
		spr_dead=sprMutant25DDead;
		spr_go_sit = sprMutant25DIdle;//TODO
		spr_sit = sprMutant25DIdle;//TODO
		break;
	}
	}
	else if bskin=4//eskin
	{
	switch (race)
	{
		case 3:
		spr_idle=sprMutant3EIdle;
		spr_walk=sprMutant3EWalk;
		spr_hurt=sprMutant3EHurt;
		spr_dead=sprMutant3EDead;
		spr_go_sit = sprMutant3EIdle;//TODO
		spr_sit = sprMutant3EIdle;//TODO
		break;
		case 6:
		spr_idle=sprMutant6EIdle;
		spr_walk=sprMutant6EWalk;
		spr_hurt=sprMutant6EHurt;
		spr_dead=sprMutant6EDead;
		spr_go_sit = sprMutant6EIdle;//TODO
		spr_sit = sprMutant6EIdle;//TODO
		break;
		case 8:
		spr_idle=sprMutant8EIdle;
		spr_walk=sprMutant8EWalk;
		spr_hurt=sprMutant8EHurt;
		spr_dead=sprMutant8EDead;
		spr_go_sit = sprMutant8EIdle;//TODO
		spr_sit = sprMutant8EIdle;//TODO
		break;
		case 9:
		spr_idle=sprMutant9EIdle;
		spr_walk=sprMutant9EWalk;
		spr_hurt=sprMutant9EHurt;
		spr_dead=sprMutant9DDead;
		spr_go_sit = sprMutant9EIdle;//TODO
		spr_sit = sprMutant9EIdle;//TODO
		break;
		case 10:
		spr_idle=sprMutant10FIdle;
		spr_walk=sprMutant10FWalk;
		spr_hurt=sprMutant10FHurt;
		spr_dead=sprMutant10FDead;
		spr_go_sit = sprMutant10FIdle;//TODO
		spr_sit = sprMutant10FIdle;//TODO
		break;
		case 16:
		spr_idle=sprMutant16DIdle;
		spr_walk=sprMutant16DWalk;
		spr_hurt=sprMutant16DHurt;
		spr_dead=sprMutant16DDead;
		spr_go_sit = sprMutant16DIdle;//TODO
		spr_sit = sprMutant16DIdle;//TODO
		break;
		case 21:
		spr_idle=sprMutant21DIdle;
		spr_walk=sprMutant21DWalk;
		spr_hurt=sprMutant21DHurt;
		spr_dead=sprMutant21DDead;
		spr_go_sit = sprMutant21DIdle;//TODO
		spr_sit = sprMutant21DIdle;//TODO
		break;
		case 22:
		spr_idle=sprMutant22DIdle;
		spr_walk=sprMutant22DWalk;
		spr_hurt=sprMutant22DHurt;
		spr_dead=sprMutant22DDead;
		spr_go_sit = sprMutant22DIdle;//TODO
		spr_sit = sprMutant22DIdle;//TODO
		break;
	}
	}
	else if bskin=5//fskin
	{
	switch (race)
	{
		case 3:
		spr_idle=sprMutant3FIdle;
		spr_walk=sprMutant3FWalk;
		spr_hurt=sprMutant3FHurt;
		spr_dead=sprMutant3FDead;
		spr_go_sit = sprMutant3FIdle;//TODO
		spr_sit = sprMutant3FIdle;//TODO
		break;
		case 10:
		spr_idle=sprMutant10GIdle;
		spr_walk=sprMutant10GWalk;
		spr_hurt=sprMutant10GHurt;
		spr_dead=sprMutant10GDead;
		spr_go_sit = sprMutant10GIdle;//TODO
		spr_sit = sprMutant10GIdle;//TODO
		break;
		case 16:
		spr_idle=sprMutant16DIdle;
		spr_walk=sprMutant16DWalk;
		spr_hurt=sprMutant16DHurt;
		spr_dead=sprMutant16DDead;
		spr_go_sit = sprMutant16DIdle;//TODO
		spr_sit = sprMutant16DIdle;//TODO
		break;
		case 21:
		spr_idle=sprMutant21DIdle;
		spr_walk=sprMutant21DWalk;
		spr_hurt=sprMutant21DHurt;
		spr_dead=sprMutant21DDead;
		spr_go_sit = sprMutant21DIdle;//TODO
		spr_sit = sprMutant21DIdle;//TODO
		break;
		case 22:
		spr_idle=sprMutant22DIdle;
		spr_walk=sprMutant22DWalk;
		spr_hurt=sprMutant22DHurt;
		spr_dead=sprMutant22DDead;
		spr_go_sit = sprMutant22DIdle;//TODO
		spr_sit = sprMutant22DIdle;//TODO
		break;
	}
	}
	else if bskin=6//gskin
	{
	switch (race)
	{
		case 3:
		spr_idle=sprMutant3GIdle;
		spr_walk=sprMutant3GWalk;
		spr_hurt=sprMutant3GHurt;
		spr_dead=sprMutant3GDead;
		spr_go_sit = sprMutant3GIdle;//TODO
		spr_sit = sprMutant3GIdle;//TODO
		break;
	}
	}
	else//REGULAR SKIN!
	{
	switch (race)
	{
	case 1:
	spr_idle=sprMutant1Idle;
	spr_walk=sprMutant1Walk;
	spr_hurt=sprMutant1Hurt;
	spr_dead=sprMutant1Dead;
	spr_go_sit = sprMutant1GoSit;
	spr_sit = sprMutant1Sit;
	break;
	case 2:
	spr_idle=sprMutant2Idle;
	spr_walk=sprMutant2Walk;
	spr_hurt=sprMutant2Hurt;
	spr_dead=sprMutant2Dead;
	spr_go_sit = sprMutant2GoSit;
	spr_sit = sprMutant2Sit;
	break;
	case 3:
	spr_idle=sprMutant3Idle;
	spr_walk=sprMutant3Walk;
	spr_hurt=sprMutant3Hurt;
	spr_dead=sprMutant3Dead;
	spr_go_sit = sprMutant3GoSit;
	spr_sit = sprMutant3Sit;
	break;
	case 4:
	spr_idle=sprMutant4Idle;
	spr_walk=sprMutant4Walk;
	spr_hurt=sprMutant4Hurt;
	spr_dead=sprMutant4Dead;
	spr_go_sit = sprMutant4GoSit;
	spr_sit = sprMutant4Sit;
	break;
	case 5:
	spr_idle=sprMutant5Idle;
	spr_walk=sprMutant5Walk;
	spr_hurt=sprMutant5Hurt;
	spr_dead=sprMutant5Dead;
	spr_go_sit = sprMutant5GoSit;
	spr_sit = sprMutant5Sit;
	break;
	case 6:
	spr_idle=sprMutant6Idle;
	spr_walk=sprMutant6Walk;
	spr_hurt=sprMutant6Hurt;
	spr_dead=sprMutant6Dead;
	spr_go_sit = sprMutant6GoSit;
	spr_sit = sprMutant6Sit;
	break;
	case 7:
	spr_idle=sprMutant7Idle;
	spr_walk=sprMutant7Walk;
	spr_hurt=sprMutant7Hurt;
	spr_dead=sprMutant7Dead;
	spr_go_sit = sprMutant7GoSit;
	spr_sit = sprMutant7Sit;
	break;
	case 8:
	spr_idle=sprMutant8Idle;
	spr_walk=sprMutant8Walk;
	spr_hurt=sprMutant8Hurt;
	spr_dead=sprMutant8Dead;
	spr_go_sit = sprMutant8GoSit;
	spr_sit = sprMutant8Sit;
	break;
	case 9:
	spr_idle=sprMutant9Idle;
	spr_walk=sprMutant9Walk;
	spr_hurt=sprMutant9Hurt;
	spr_dead=sprMutant9Dead;
	spr_go_sit = sprMutant9GoSit;
	spr_sit = sprMutant9Sit;
	break;
	case 10:
	spr_idle=sprMutant10Idle;
	spr_walk=sprMutant10Walk;
	spr_hurt=sprMutant10Hurt;
	spr_dead=sprMutant10Dead;
	spr_go_sit = sprMutant9GoSit;
	spr_sit = sprMutant9Sit;
	break;
	case 11:
	spr_idle=sprMutant11Idle;
	spr_walk=sprMutant11Walk;
	spr_hurt=sprMutant11Hurt;
	spr_dead=sprMutant11Dead;
	spr_go_sit = sprMutant11Idle;//TODO
	spr_sit = sprMutant11Idle;//TODO
	break;
	case 12:
	spr_idle=sprMutant12Idle;
	spr_walk=sprMutant12Walk;
	spr_hurt=sprMutant12Hurt;
	spr_dead=sprMutant12Dead;
	spr_go_sit = sprMutant12Idle;//TODO
	spr_sit = sprMutant12Idle;//TODO
	break;
	case 13:
	spr_idle=sprMutant13Idle;
	spr_walk=sprMutant13Walk;
	spr_hurt=sprMutant13Hurt;
	spr_dead=sprMutant13Dead;
	spr_go_sit = sprMutant13Idle;//TODO
	spr_sit = sprMutant13Idle;//TODO
	break;
	case 14:
	spr_idle=sprMutant14Idle;
	spr_walk=sprMutant14Walk;
	spr_hurt=sprMutant14Hurt;
	spr_dead=sprMutant14Dead;
	spr_go_sit = sprMutant14Idle;//TODO
	spr_sit = sprMutant14Idle;//TODO
	break;
	case 15:
	spr_idle=sprMutant15Idle;
	spr_walk=sprMutant15Walk;
	spr_hurt=sprMutant15Hurt;
	spr_dead=sprMutant15Dead;
	spr_go_sit = sprMutant15Idle;//TODO
	spr_sit = sprMutant15Idle;//TODO
	break;
	case 16:
	spr_idle=sprMutant16Idle;
	spr_walk=sprMutant16Walk;
	spr_hurt=sprMutant16Hurt;
	spr_dead=sprMutant16Dead;
	spr_go_sit = sprMutant16Idle;//TODO
	spr_sit = sprMutant16Idle;//TODO
	break;
	case 17:
	spr_idle=sprMutant17Idle;
	spr_walk=sprMutant17Walk;
	spr_hurt=sprMutant17Hurt;
	spr_dead=sprMutant17Dead;
	spr_go_sit = sprMutant17Idle;//TODO
	spr_sit = sprMutant17Idle;//TODO
	break;
	case 18:
	spr_idle=sprMutant18Idle;
	spr_walk=sprMutant18Idle;
	spr_hurt=sprMutant18Hurt;
	spr_dead=sprMutant18Dead;
	spr_go_sit = sprMutant18Idle;//TODO
	spr_sit = sprMutant18Idle;//TODO
	break;
	case 19:
	spr_idle=sprMutant19Idle;
	spr_walk=sprMutant19Walk;
	spr_hurt=sprMutant19Hurt;
	spr_dead=sprMutant19Dead;
	spr_go_sit = sprMutant19GoSit;
	spr_sit = sprMutant19Sit;
	break;
	case 20:
	spr_idle=sprMutant20Idle;
	spr_walk=sprMutant20Walk;
	spr_hurt=sprMutant20Hurt;
	spr_dead=sprMutant20Dead;
	spr_go_sit = sprMutant20Idle;//TODO
	spr_sit = sprMutant20Idle;//TODO
	break;
	case 21:
	spr_idle=sprMutant21Idle;
	spr_walk=sprMutant21Walk;
	spr_hurt=sprMutant21Hurt;
	spr_dead=sprMutant21Dead;
	spr_go_sit = sprMutant21GoSit;
	spr_sit = sprMutant21Sit;
	break;
	case 22:
	spr_idle=sprMutant22Idle;
	spr_walk=sprMutant22Walk;
	spr_hurt=sprMutant22Hurt;
	spr_dead=sprMutant22Dead;
	spr_go_sit = sprMutant22GoSit;
	spr_sit = sprMutant22Sit;
	break;
	case 23:
	spr_idle=sprMutant23Idle;
	spr_walk=sprMutant23Walk;
	spr_hurt=sprMutant23Hurt;
	spr_dead=sprMutant23Dead;
	spr_go_sit = sprMutant23GoSit;
	spr_sit = sprMutant23Sit;
	break;
	case 24:
	spr_idle=sprMutant24Idle;
	spr_walk=sprMutant24Walk;
	spr_hurt=sprMutant24Hurt;
	spr_dead=sprMutant24Dead;
	spr_go_sit = sprMutant24Idle;//TODO
	spr_sit = sprMutant24Idle;//TODO
	break;
	case 25:
	spr_idle=sprMutant25Idle;
	spr_walk=sprMutant25Walk;
	spr_hurt=sprMutant25Hurt;
	spr_dead=sprMutant25Dead;
	spr_go_sit = sprMutant25Idle;//TODO
	spr_sit = sprMutant25Idle;//TODO
	break;
	case 26:
	spr_idle=sprMutant26Idle;
	spr_walk=sprMutant26Walk;
	spr_hurt=sprMutant26Hurt;
	spr_dead=sprMutant26Dead;
	spr_go_sit = sprMutant26Idle;//TODO
	spr_sit = sprMutant26Idle;//TODO
	break;
	case 27:
	spr_idle=sprMutant27Idle;
	spr_walk=sprMutant27Walk;
	spr_hurt=sprMutant27Hurt;
	spr_dead=sprMutant27Dead;
	spr_go_sit = sprMutant27Idle;//TODO
	spr_sit = sprMutant27Idle;//TODO
	break;
	}

	}



	//load character sounds

	switch (race)
	{
	case 0:
	snd_hurt=sndMutant1Hurt;	//Got hit
	snd_dead=sndMutant1Dead;	//Got dead
	snd_lowa=sndMutant1LowA;	//Got low ammo
	snd_lowh=sndMutant1LowH;	//Got low health
	snd_crwn=sndMutant1Crwn;	//Got crown
	snd_chst=sndMutant1Chst;	//Got chest
	snd_wrld=sndMutant1Wrld;	//Got first subarea
	snd_thrn=sndMutant1Thrn;	//Got secret area
	snd_valt=sndMutant1Valt;	//Got crown vault
	break;
	case 1:
	snd_hurt=sndMutant1Hurt
	snd_dead=sndMutant1Dead
	snd_lowa=sndMutant1LowA;
	snd_lowh=sndMutant1LowH;
	snd_crwn=sndMutant1Crwn;
	snd_chst=sndMutant1Chst;
	snd_wrld=sndMutant1Wrld;
	snd_thrn=sndMutant1Thrn;
	snd_valt=sndMutant1Valt;
	break;
	case 2:
	snd_hurt=sndMutant2Hurt
	snd_dead=sndMutant2Dead
	snd_lowa=sndMutant2LowA;
	snd_lowh=sndMutant2LowH;
	snd_crwn=sndMutant2Crwn;
	snd_chst=sndMutant2Chst;
	snd_wrld=sndMutant2Wrld;
	snd_thrn=sndMutant2Thrn;
	snd_valt=sndMutant2Valt;
	break;
	case 3:
	snd_hurt=sndMutant3Hurt
	snd_dead=sndMutant3Dead
	snd_lowa=sndMutant3LowA;
	snd_lowh=sndMutant3LowH;
	snd_crwn=sndMutant3Crwn;
	snd_chst=sndMutant3Chst;
	snd_wrld=sndMutant3Wrld;
	snd_thrn=sndMutant3Thrn;
	snd_valt=sndMutant3Valt;
	break;
	case 4:
	snd_hurt=sndMutant4Hurt
	snd_dead=sndMutant4Dead
	snd_lowa=sndMutant4LowA;
	snd_lowh=sndMutant4LowH;
	snd_crwn=sndMutant4Crwn;
	snd_chst=sndMutant4Chst;
	snd_wrld=sndMutant4Wrld;
	snd_thrn=sndMutant4Thrn;
	snd_valt=sndMutant4Valt;
	break;
	case 5:
	snd_hurt=sndMutant5Hurt
	snd_dead=sndMutant5Dead
	snd_lowa=sndMutant5LowA;
	snd_lowh=sndMutant5LowH;
	snd_crwn=sndMutant5Crwn;
	snd_chst=sndMutant5Chst;
	snd_wrld=sndMutant5Wrld;
	snd_thrn=sndMutant5Thrn;
	snd_valt=sndMutant5Valt;
	break;
	case 6:
	snd_hurt=sndMutant6Hurt
	snd_dead=sndMutant6Dead
	snd_lowa=sndMutant6LowA;
	snd_lowh=sndMutant6LowH;
	snd_crwn=sndMutant6Crwn;
	snd_chst=sndMutant6Chst;
	snd_wrld=sndMutant6Wrld;
	snd_thrn=sndMutant6Thrn;
	snd_valt=sndMutant6Valt;
	break;
	case 7:
	snd_hurt=sndMutant7Hurt
	snd_dead=sndMutant7Dead
	snd_lowa=sndMutant7LowA;
	snd_lowh=sndMutant7LowH;
	snd_crwn=sndMutant7Crwn;
	snd_chst=sndMutant7Chst;
	snd_wrld=sndMutant7Wrld;
	snd_thrn=sndMutant7Thrn;
	snd_valt=sndMutant7Valt;
	break;
	case 8:
	snd_hurt=sndMutant8Hurt
	snd_dead=sndMutant8Dead
	snd_lowa=sndMutant8LowA;
	snd_lowh=sndMutant8LowH;
	snd_crwn=sndMutant8Crwn;
	snd_chst=sndMutant8Chst;
	snd_wrld=sndMutant8Wrld;
	snd_thrn=sndMutant8Thrn;
	snd_valt=sndMutant8Valt;
	break;
	case 9:
	snd_hurt=sndMutant9Hurt
	snd_dead=sndMutant9Dead
	snd_lowa=sndMutant9LowA;
	snd_lowh=sndMutant9LowH;
	snd_crwn=sndMutant9Crwn;
	snd_chst=sndMutant9Chst;
	snd_wrld=sndMutant9Wrld;
	snd_thrn=sndMutant9Thrn;
	snd_valt=sndMutant9Valt;
	break;
	case 10:
	snd_hurt=sndMutant10Hurt
	snd_dead=sndMutant10Dead
	snd_lowa=sndMutant10LowA;
	snd_lowh=sndMutant10LowH;
	snd_crwn=sndMutant10Crwn;
	snd_chst=sndMutant10Chst;
	snd_wrld=sndMutant10Wrld;
	snd_thrn=sndMutant10Thrn;
	snd_valt=sndMutant10Valt;
	break;
	case 11://Hunter
	snd_hurt=sndMutantHunterHurt
	snd_dead=sndMutantHunterDead
	snd_lowa=sndMutantHunterLowA;//DMUKGURFAH
	snd_lowh=sndMutantHunterLowH;//VE SHO
	snd_crwn=sndMutantHunterCrwn;
	snd_chst=sndMutantHunterChst;
	snd_wrld=sndMutantHunterWrld;
	snd_thrn=sndMutantHunterThrn;
	snd_valt=sndMutantHunterValt;//OA FHO we examine
	break;
	case 12://YC
	snd_hurt=sndMutant12Hurt
	snd_dead=sndMutant12Dead
	snd_lowa=sndMutant12LowA;
	snd_lowh=sndMutant12LowH;
	snd_crwn=sndMutant12Crwn;
	snd_chst=sndMutant12Chst;
	snd_wrld=sndMutant12Wrld;
	snd_thrn=sndMutant12Thrn;
	snd_valt=sndMutant12Valt;
	break;
	case 13://sheep
	snd_hurt=sndSheepDead
	snd_dead=sndSheepDead
	snd_lowa=sndSheepDead;
	snd_lowh=sndSheepDead;
	snd_crwn=sndSheep;
	snd_chst=sndSheep;
	snd_wrld=sndSheep;
	snd_thrn=sndSheep;
	snd_valt=sndSheep;
	break;
	case 14://panda
	snd_hurt=sndMutant14Hurt
	snd_dead=sndMutant14Dead
	snd_lowa=sndMutant14LowH;//Todo
	snd_lowh=sndMutant14LowH;
	snd_crwn=sndMutant14Chst;//Todo
	snd_chst=sndMutant14Chst;
	snd_wrld=sndMutant14Wrld;
	snd_thrn=sndMutant14Thrn;
	snd_valt=sndMutant14Valt;
	break;
	case 15://Atom
	snd_hurt=sndMutant15Hurt;
	snd_dead=sndMutant15Dead;
	snd_lowa=sndMutant15LowA;
	snd_lowh=sndMutant15LowH;
	snd_crwn=sndMutant15Crwn;
	snd_chst=sndMutant15Chst;
	snd_wrld=sndMutant15Wrld;
	snd_thrn=sndMutant15Thrn;
	snd_valt=sndMutant15Valt;
	break;
	case 16://Viking
	snd_hurt=sndMutant16Hurt
	snd_dead=sndMutant16Dead
	snd_lowa=sndMutant16LowA;
	snd_lowh=sndMutant16LowH;
	snd_crwn=sndMutant16Crwn;
	snd_chst=sndMutant16Chst;
	snd_wrld=sndMutant16Wrld;
	snd_thrn=sndMutant16Chst;
	snd_valt=sndMutant16Valt;
	break;
	case 17://Gun smith
	snd_hurt=sndMutant17Hurt
	if bskin == 0
		snd_hurt = sndMutant17HurtA;
	snd_dead=sndMutant17Dead
	snd_lowa=sndMutant17LowA;
	snd_lowh=sndMutant17LowH;
	snd_crwn=sndMutant17Crwn;
	snd_chst=sndMutant17Chst;
	snd_wrld=sndMutant17Wrld;
	snd_thrn=sndMutant17Thrn;
	snd_valt=sndMutant17Valt;
	break;
	case 18://ANGEL 
	snd_hurt=sndAngelHit
	snd_dead=sndStatueDead
	snd_lowa=sndScorpionDie;
	snd_lowh=sndStatueDead;
	snd_crwn=sndStatueCharge;
	snd_chst=sndStatueCharge;
	snd_wrld=sndStatueCharge;
	snd_thrn=sndStatueCharge;
	snd_valt=sndStatueCharge;
	break;
	case 19://SKELETON
	snd_hurt=sndMutant19Hurt
	snd_dead=sndMutant19Dead
	snd_lowa=sndMutant19LowA;
	snd_lowh=sndMutant19LowH;
	snd_crwn=sndMutant19Cnfm;
	snd_chst=sndMutant19Chst;
	snd_wrld=sndMutant19Wrld;
	snd_thrn=sndMutant19Thrn;
	snd_valt=sndMutant19Valt;
	break;
	case 20://Bussiness Hog
	snd_hurt=sndMutant20Hurt
	snd_dead=sndMutant20Dead
	snd_lowa=sndMutant20LowA;
	snd_lowh=sndMutant20LowH;
	snd_crwn=sndMutant20Crwn;
	snd_chst=sndMutant20Chst;
	snd_wrld=sndMutant20Wrld;
	snd_thrn=sndMutant20Thrn;
	snd_valt=sndMutant20Valt;
	break;
	case 21://Horror
	snd_hurt=sndMutant11Hurt
	snd_dead=sndMutant11Dead
	snd_lowa=sndMutant11LowA;
	snd_lowh=sndMutant11LowH;
	snd_crwn=sndMutant11Crwn;
	snd_chst=sndMutant11Chst;
	snd_wrld=sndMutant11Wrld;
	snd_thrn=sndMutant11Thrn;
	snd_valt=sndMutant11Valt;
	break;
	case 22://ROGUE
	snd_hurt=sndMutant22Hurt
	snd_dead=sndMutant22Dead
	snd_lowa=sndMutant22LowA;
	snd_lowh=sndMutant22LowH;
	snd_crwn=sndMutant22Crwn;
	snd_chst=sndMutant22Chst;
	snd_wrld=sndMutant22Wrld;
	snd_thrn=sndMutant22Thrn;
	snd_valt=sndMutant22Valt;
	break;
	case 23://Frog
	snd_hurt=sndMutant23Hurt
	snd_dead=sndMutant23Dead
	snd_lowa=sndMutant23LowA;
	snd_lowh=sndMutant23LowH;
	snd_crwn=sndMutant23Crwn;
	snd_chst=sndMutant23Chst;
	snd_wrld=sndMutant23Wrld;
	snd_thrn=sndMutant23Thrn;
	snd_valt=sndMutant23Valt;
	break;
	case 24://
	snd_hurt=sndMutant24NewHurt
	snd_dead=sndMutant24NewDead
	snd_lowa=sndMutant24NewLowA;
	snd_lowh=sndMutant24NewLowH;
	snd_crwn=sndMutant24NewCrwn;
	snd_chst=sndMutant24NewChst;
	snd_wrld=sndMutant24NewWrld;
	snd_thrn=sndMutant24NewCrwn;
	snd_valt=sndMutant24NewValt;
	break;
	case 25://
	snd_hurt=sndMutant25Hurt
	snd_dead=sndMutant25Dead
	snd_lowa=sndMutant25LowA;
	snd_lowh=sndMutant25LowH;
	snd_crwn=sndMutant25Crwn;
	snd_chst=sndMutant25Chst;
	snd_wrld=sndMutant25Wrld;
	snd_thrn=sndMutant25Thrn;
	snd_valt=sndMutant25Valt;
	break;
	case 26://
	snd_hurt=sndMutant26Hurt
	snd_dead=sndMutant26Dead
	snd_lowa=sndMutant26LowA;
	snd_lowh=sndMutant26LowA;//
	snd_crwn=sndMutant26Crwn;
	snd_chst=sndMutant26Crwn;//chst
	snd_wrld=sndMutant26Wrld;
	snd_thrn=sndMutant26Crwn;//
	snd_valt=sndMutant26Crwn;
	break;
	
	case 27://
	snd_hurt=sndMutant27Hurt;
	snd_dead=sndMutant27Dead;
	snd_lowa=sndMutant27LowA;
	snd_lowh=sndMutant27LowH;//
	snd_crwn=sndMutant27Crwn;
	snd_chst=sndMutant27Chst;//chst
	snd_wrld=sndMutant27Wrld;
	snd_thrn=sndMutant27Thrn;//
	snd_valt=sndMutant27Valt;
	snd_cpt=sndMutant27Cpt;//Captain win (unused for now)
	snd_good=[sndMutant27Chst2,sndMutant27Chst3];
	break;

	}
	snd_hurt_actual = snd_hurt;
}

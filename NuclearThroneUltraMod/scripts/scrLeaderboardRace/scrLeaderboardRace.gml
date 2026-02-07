///scrLeaderboardRace();
// /@description
///@param
function scrLeaderboardRace(race,bskin,altUltra,area){
	if bskin == 3
	{
		bskin = 0;
		altUltra = true;
		if race == 16
		{
			return sprMutant16DIdle	
		}
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
	else if bskin == 6//gskin
	{
	switch (race)
	{
	case 3:
	return sprMutant3GIdle;
	break;
	}
	}
	if bskin = 1
	{
	switch (race)
	{
	case 1:
	return sprMutant1BIdle;
	break;
	case 2:
	return sprMutant2BIdle;
	break;
	case 3:
	if altUltra
	{
		return sprMutant3EIdle;
	}
	return sprMutant3BIdle;
	break;
	case 4:
	return sprMutant4BIdle;
	break;
	case 5:
	return sprMutant5BIdle;
	break;
	case 6:
	if altUltra
	{
		return sprMutant6EIdle;
	}
	return sprMutant6BIdle;
	break;
	case 7:
	return sprMutant7BIdle;
	break;
	case 8:
	if altUltra
	{
		return sprMutant8EIdle;
	}
	return sprMutant8BIdle;
	break;
	case 9:
	if altUltra
	{
		return sprMutant9EIdle;
	}
	return sprMutant9BIdle;
	break;
	case 10:
	if altUltra
	{
		if area == 5 || area == 108
		{
			return sprMutant10HIdle
		}
		else
		{
			return sprMutant10FIdle;
		}
	}
	else if area == 5 || area == 108
	{
		 return sprMutant10DIdle;
	}
	return sprMutant10BIdle;
	break;
	case 11:
	return sprMutant11BIdle;
	break;
	case 12:
	return sprMutant12BIdle;
	break;
	case 13:
	return sprMutant13BIdle;
	break;
	case 14:
	return sprMutant14BIdle;
	break;
	case 15:
	return sprMutant15BIdle;
	break;
	case 16:
	return sprMutant16BIdle;
	break;
	case 17:
	return sprMutant17BIdle;
	break;
	case 18:
	return sprMutant18BIdle;
	break;
	case 19:
	return sprMutant19BIdle;
	break;
	case 20:
	return sprMutant20BIdle;
	break;
	case 21:
	if altUltra
	{
		return sprMutant21EIdle;
	}
	return sprMutant21BIdle;
	break;
	case 22:
	if altUltra
	{
		return sprMutant22DIdle;
	}
	return sprMutant22BIdle;
	break;
	case 23:
	return sprMutant23BIdle;
	break;
	case 24:
	return sprMutant24BIdle;
	break;
	case 25:
	if altUltra
		return sprMutant25DIdle;
	return sprMutant25BIdle;
	break;
	case 26:
	return sprMutant26BIdle;
	break;
	case 27:
	return sprMutant27BIdle;
	break;
	case 28:
	return sprMutant28BIdle;
	break;
	case 29:
	return sprMutant29BIdle;
	break;

	}
	}
	else if bskin=2//cskin
	{
	switch (race)
	{
	case 1:
	return sprMutant1CIdle;
	break;
	case 2:
	return sprMutant2CIdle;
	break;
	case 3:
	if altUltra
	{
		return sprMutant3FIdle;
	}
	return sprMutant3CIdle;
	break;
	case 4:
	return sprMutant4CIdle;
	break;
	case 5:
	return sprMutant5CIdle;
	break;
	case 6:
	return sprMutant6CIdle;
	break;
	case 7:
	return sprMutant7CIdle;
	break;
	case 8:
	return sprMutant8CIdle;
	break;
	case 9:
	return sprMutant9CIdle;
	break;
	case 10:
	if altUltra
	{
		return sprMutant10GIdle;
	}
	return sprMutant10CIdle;
	break;
	case 11:
	return sprMutant11CIdle;
	break;
	case 12:
	return sprMutant12CIdle;
	break;
	case 13:
	return sprMutant13CIdle;
	break;
	case 14:
	return sprMutant14CIdle;
	break;
	case 15:
	return sprMutant15CIdleOld;
	break;
	case 16:
	return sprMutant16CIdle;
	break;
	case 17:
	return sprMutant17CIdle;
	break;
	case 18:
	return sprMutant18CIdle;
	break;
	case 19:
	return sprMutant19CIdle;
	break;
	case 20:
	return sprMutant20CIdle;
	break;
	case 21:
	if altUltra
	{
		return sprMutant21EIdle;
	}
	return sprMutant21CIdle;
	break;
	case 22:
	if altUltra
	{
		return sprMutant22DIdle;
	}
	return sprMutant22CIdle;
	break;
	case 23:
	return sprMutant23CIdle;
	break;
	case 24:
	return sprMutant24CIdle;
	break;
	case 25:
	if altUltra
		return sprMutant25DIdle;
	return sprMutant25CIdle;
	break;
	case 26:
	return sprMutant26CIdle;
	break;
	case 27:
	return sprMutant27CIdle;
	break;
	case 28:
	return sprMutant28CIdle;
	break;
	case 29:
	return sprMutant29CIdle;
	break;
	}

	}
	else//REGULAR SKIN!
	{
	switch (race)
	{
	case 1:
	return sprMutant1Idle;
	break;
	case 2:
	return sprMutant2Idle;
	break;
	case 3:
	if altUltra
	{
		return sprMutant3DIdle;
	}
	return sprMutant3Idle;
	break;
	case 4:
	return sprMutant4Idle;
	break;
	case 5:
	if altUltra
	{
		return sprMutant5DIdle;
	}
	return sprMutant5Idle;
	break;
	case 6:
	if altUltra
	{
		return sprMutant6DIdle;
	}
	return sprMutant6Idle;
	break;
	case 7:
	return sprMutant7Idle;
	break;
	case 8:
	if altUltra
	{
		return sprMutant8DIdle;
	}
	return sprMutant8Idle;
	break;
	case 9:
	if altUltra
	{
		return sprMutant9DIdle;
	}
	return sprMutant9Idle;
	break;
	case 10:
	if altUltra
	{
		return sprMutant10EIdle;
	}
	return sprMutant10Idle;
	break;
	case 11:
	return sprMutant11Idle;
	break;
	case 12:
	return sprMutant12Idle;
	break;
	case 13:
	return sprMutant13Idle;
	break;
	case 14:
	return sprMutant14Idle;
	break;
	case 15:
	return sprMutant15Idle;
	break;
	case 16:
	/*
	if altUltra
	{
		return sprMutant16DIdle;
	}*/
	return sprMutant16Idle;
	break;
	case 17:
	return sprMutant17Idle;
	break;
	case 18:
	return sprMutant18Idle;
	break;
	case 19:
	return sprMutant19Idle;
	break;
	case 20:
	return sprMutant20Idle;
	break;
	case 21:
	if altUltra
	{
		return sprMutant21DIdle;
	}
	return sprMutant21Idle;
	break;
	case 22:
	if altUltra
	{
		return sprMutant22DIdle;
	}
	return sprMutant22Idle;
	break;
	case 23:
	return sprMutant23Idle;
	break;
	case 24:
	return sprMutant24Idle;
	break;
	case 25:
	if altUltra
		return sprMutant25DIdle;
	return sprMutant25Idle;
	break;
	case 26:
	return sprMutant26Idle;
	break;
	case 27:
	return sprMutant27Idle;
	break;
	case 28:
	return sprMutant28Idle;
	break;
	case 29:
	return sprMutant29Idle;
	break;
	}

	}
	return sprSharpStress;
}
///getUltraMutation();
// /@description
///@param
function getUltraMutation(){
	with Player
	{
		var isFishMode = scrIsGamemode(14);
		//Horror
		if race == 21
		{
			if ultra_got[0]
				return 0;
		}
		var i = 1+((race-1)*4);
		repeat(4)
		{
			if ultra_got[i]
			{
				if !(isFishMode && i == 14)
					return i;
			}
			i++;
		}
		if ultra_got[109]//Trash secret
		{
			return 109;	
		}
		else
		{
			return 255;
		}
		if (previousUltra != -1)
		{
			var noUltra = true;
			var i = 0;
			repeat(maxultra+1)
			{
				if !ultra_got[i]
				{
					noUltra = false;
					continue;
				}
				i ++;
			}
			if noUltra
				return previousUltra;
		}
	}
}
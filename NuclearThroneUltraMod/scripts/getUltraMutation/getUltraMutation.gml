///getUltraMutation();
// /@description
///@param
function getUltraMutation(){
	with Player
	{
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
				return i;
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
	}
}
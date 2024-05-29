///scrApplyEagleEyes();
// /@description
///@param
function scrApplyEagleEyes(){
	with Player
	{
		if race=25
		{
			accuracy = standartAccuracy*0.2//0.3//in case you have build up rage use the standart
		}
		else
		{
			accuracy = standartAccuracy*0.27//0.38//in case you have build up rage use the standart
		}
		if ultra_got[43] && !altUltra {
			accuracy = 0;
		}
		standartAccuracy = accuracy//new standart
	}
}
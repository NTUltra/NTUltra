///xxx();
// /@description
///@param
function scrApplyHandsInversion(){
	with Player
	{
		isInInverted = true;
		if race == 27 && canHeal
		{
			var am = 2;
			if ultra_got[106] || (ultra_got[107] && altUltra)
				am = 4;
			scrHeal(am,true);
		}
	}
}
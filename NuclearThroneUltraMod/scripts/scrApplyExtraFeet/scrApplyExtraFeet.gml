///scrApplyExtraFeet();
// /@description
///@param
function scrApplyExtraFeet(){
	with Player {
		if race == 25
			maxSpeed += 0.6;
		else
			maxSpeed += 0.5;
	}
}
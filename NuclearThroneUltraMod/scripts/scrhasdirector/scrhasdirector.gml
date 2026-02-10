///xxx();
// /@description
///@param
function scrHasDirector(){
	with Player
	{
		var directors = [89, 170, 171, 172, 173, 174, 175, 176, 182, 183, 237, 293, 367, 409, 433, 454, 606, 607, 616, 647, 656, 654, 767, 794,
		184, 185,186,187,189,190,199,204,292,518,519,536,537,546,637,942,//Seekers
		741,810,//Paper
		240,243,397,522//Swarm
		]
		if (array_contains(directors,wep) || array_contains(directors,bwep) || array_contains(directors,cwep))
			return true
	}
	return false;
}
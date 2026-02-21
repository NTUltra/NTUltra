///xxx();
// /@description
///@param
function scrIsInInvertedArea(){
	var dataRef = noone;
	if instance_exists(Player)
	{
		dataRef = Player;
	}
	else {
		dataRef = UberCont;	
	}
	var area = dataRef.area
	if dataRef.isInInverted || area == 105 || area  == 106 || area  == 107 || area  == 108 || area  == 109 || area  == 110
	|| area  == 111 || area  == 112 || area  == 118 || area == 120 || area == 121 || area == 122
	|| area == 123 || area == 124 || area == 125 || area == 127 || area == 129 || area == 131 || area == 139 || area == 140
	|| area == 141 || area == 143 || area == 145 || area == 147 || area == 150
	{
		return true;
	}
	return false;
}
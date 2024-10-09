///xxx();
// /@description
///@param
function scrIsInInvertedArea(){
	if instance_exists(Player)
	{
		var area = Player.area
		if Player.isInInverted || area == 105 || area  == 106 || area  == 107 || area  == 108 || area  == 109 || area  == 110
		|| area  == 111 || area  == 112 || area  == 118 || area == 120 || area == 121 || area == 122
		|| area == 123 || area == 124 || area == 125 || area == 127 || area == 129 || area == 131 || area == 139 || area == 140
		|| area == 141
		{
			return true;
		}
	}
	return false;
}
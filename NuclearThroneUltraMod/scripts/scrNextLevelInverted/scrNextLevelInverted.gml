/// @description areas inverted looping
function scrNextLevelInverted() {



	if area = 105//inverted desert
	{
	lastarea=105;
	if subarea<3
	subarea++;
	else
	{
	area=110//inverted sewers
	lastarea=110
	subarea=1
	}

	exit;
	}

	if area = 110//inverted sewers
	{
	area=106//inverted scrapyard
	lastarea=106
	subarea=1
	exit;
	}

	if area = 106//inverted scrapyard
	{
	lastarea=106
	if subarea<3
	subarea++;
	else
	{
	area=111//inverted caves
	lastarea=111
	subarea=1
	}

	exit;
	}

	if area = 111//inverted caves
	{
	area=107//inverted frozen city
	lastarea=107
	subarea=1
	exit;
	}

	if area = 107//inverted frozen city
	{
	lastarea=107
	if subarea<3
	subarea++;
	else
	{
	area=112//inverted labs
	lastarea=112
	subarea=1
	}

	exit;
	}

	if area = 112//inverted labs
	{
	lastarea=112
	if subarea<2
	subarea++;
	else
	{
	area=108//inverted vulcano
	lastarea=108
	subarea=1
	}

	exit;
	}

	if area = 108//inverted vulcano
	{
	lastarea=108
	if subarea<2
	subarea++;
	else
	{
	area=109//inverted wonderland
	lastarea=109
	subarea=1
	}

	exit;
	}

	if area = 109//inverted frozen city
	{
	lastarea=109
	if subarea<3
	subarea++;
	else
	{
	looping = true;
	}

	exit;
	}



}

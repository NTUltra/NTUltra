///xxx();
// /@description
///@param
function scrAreaName(area,subarea,loops){
	var txt = string(area)+"_"+string(subarea)
	var upsideDown = false;
	if area == 10
	{
		txt = "1C_"+string(subarea);
	}
	else if area == 9
	{
		txt = "7_"+string(subarea);
	}
	else if area == 4
	{
		txt = "6_"+string(subarea);
	}
	else if area == 6
	{
		txt = "4_"+string(subarea);
	}
	else if area == 7
	{
		txt = "4B_"+string(subarea);
	}
	else if area == 8
	{
		txt = "5B_"+string(subarea);
	}
	else if area > 99
	{
		txt = "???"
		switch (area)
		{
			case 121://INV Savanna
				txt = "1C_"+string(subarea);
				upsideDown = true;
			break;
			case 101://Oasis
				txt = "1B_"+string(subarea);
			break;
			case 122://Oasis
				txt = "1B_"+string(subarea);
				upsideDown = true;
			break;
			case 102://Pizza
				txt = "2B_"+string(subarea);
			break;
			case 103://YV MANSION
				txt = "3B_"+string(subarea);
			break;
			case 125://INV YV MANSION
				txt = "3B_"+string(subarea);
				upsideDown = true;
			break;
			case 117://Mushroom
				txt = "4C_"+string(subarea);
			break;
			case 124://INV Mushroom
				txt = "4C_"+string(subarea);
				upsideDown = true;
			break;
			case 114://Jungle
				txt = "5C_"+string(subarea);
			break;
			case 123://INV Jungle
				txt = "5C_"+string(subarea);
				upsideDown = true;
			break;
			case 105: //Inverted desert
				txt = "1_"+string(subarea);
				upsideDown = true;
			break;
			case 106: //Inverted scrapyard
				txt = "3_"+string(subarea);
				upsideDown = true;
			break;
			case 107: //Inverted frozen city
				txt = "5_"+string(subarea);
				upsideDown = true;
			break;
			case 108: //Inverted vulcano
				txt = "4B_"+string(subarea);
				upsideDown = true;
			break;
			case 109: //Inverted wonderland
				txt = "5B_"+string(subarea);
				upsideDown = true;
			break;
			case 110: //Inverted sewers
				txt = "2_"+string(subarea);
				upsideDown = true;
			break;
			case 111: //Inverted crystal caves
				txt = "6_"+string(subarea);
				upsideDown = true;
			break;
			case 112: //Inverted labs
				txt = "4_"+string(subarea);
				upsideDown = true;
			break;
			case 118: //Inverted Palace
				txt = "7_"+string(subarea);
			break;
		}
	}
	if loops>0
	{
		txt="L"+string(loops)+" "+txt;
	}
	return [txt,upsideDown];
}
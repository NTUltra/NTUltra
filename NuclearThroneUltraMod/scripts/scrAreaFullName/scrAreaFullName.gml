///scrAreaFullName();
// /@description
///@param
function scrAreaFullName(area){
	var upsideDown = false;
	var txt = "";
	if area == 1
	{
		txt = "DESERT"
	}
	else if area == 2
	{
		txt = "SEWERS"
	}
	else if area == 3
	{
		txt = "SCRAPYARD"
	}
	else if area == 4
	{
		txt = "CRYSTAL CAVES"
	}
	else if area == 5
	{
		txt = "FROZEN CITY"
	}
	else if area == 6
	{
		txt = "LABS"
	}
	else if area == 10
	{
		txt = "SAVANNA"
	}
	else if area == 9
	{
		txt = "THE PALACE"
	}
	else if area == 4
	{
		txt = "CRYSTAL CAVES"
	}
	else if area == 6
	{
		txt = "LABS"
	}
	else if area == 7
	{
		txt = "VOLCANO"
	}
	else if area == 8
	{
		txt = "WONDERLAND"
	}
	else if area == 126
	{
		txt = "GRAVEYARD"
	}
	else if area > 99
	{
		txt = "???"
		switch (area)
		{
			case 100://Crown vault
				txt = "CROWN VAULT";
			break;
			case 128://Crown Courtyard
				txt = "CROWN COURTYARD";
			break;
			case 129://Crown Courtyard
				txt = "CROWN COURTYARD";
				upsideDown = true;
			break;
			case 130://Factory
				txt = "FACTORY"
			break;
			case 131://INV Factory
				txt = "FACTORY"
				upsideDown = true;
			break;
			case 132://Cursed Factory
				txt = "CURSED FACTORY"
			break;
			case 133://Golden Factory
				txt = "GOLDEN FACTORY"
			break;
			case 134://Ultra Factory
				txt = "ULTRA FACTORY"
			break;
			case 135://Headquarters
				txt = "I.D.P.D. HQ"
			break;
			case 136://Ultra scrapyard
				txt = "ULTRA SCRAPYARD"
			break;
			case 137://VOID
				txt = "THE VOID"
			break;
			case 138://SKY
				txt = "IRRADIATED SKIES"
			break;
			case 139://THE PIT
				txt = "THE PIT"
				upsideDown = true;
			break;
			case 116://Survival Arena
				txt = "SURVIVAL ARENA"
			break;
			case 121://INV Savanna
				txt = "SAVANNA"
				upsideDown = true;
			break;
			case 101://Oasis
				txt = "OASIS"
			break;
			case 122://Oasis
				txt = "OASIS"
				upsideDown = true;
			break;
			case 102://Pizza
				txt = "PIZZA SEWERS"
			break;
			case 127://INV Graveyard
				txt = "GRAVEYARD"
				upsideDown = true;
			break;
			case 103://YV MANSION
				txt = "Y.V. MANSION";
			break;
			case 125://INV YV MANSION
				txt = "Y.V. MANSION";
				upsideDown = true;
			break;
			case 117://Mushroom
				txt = "MUSHROOM SWAMP";
			break;
			case 124://INV Mushroom
				txt = "MUSHROOM SWAMP";
				upsideDown = true;
			break;
			case 114://Jungle
				txt = "JUNGLE";
			break;
			case 123://INV Jungle
				txt = "JUNGLE";
				upsideDown = true;
			break;
			case 105: //Inverted desert
				txt = "DESERT";
				upsideDown = true;
			break;
			case 106: //Inverted scrapyard
				txt = "SCRAPYARD";
				upsideDown = true;
			break;
			case 107: //Inverted frozen city
				txt = "FROZEN CITY";
				upsideDown = true;
			break;
			case 108: //Inverted vulcano
				txt = "VOLCANO";
				upsideDown = true;
			break;
			case 109: //Inverted wonderland
				txt = "WONDERLAND";
				upsideDown = true;
			break;
			case 110: //Inverted sewers
				txt = "SEWERS";
				upsideDown = true;
			break;
			case 111: //Inverted crystal caves
				txt = "CRYSTAL CAVES";
				upsideDown = true;
			break;
			case 115: //Cursed crystal caves cheese
				txt = "CURSED CAVES";
			break;
			case 113: //Bandit land
				txt = "BANDIT LAND";
			break;
			case 112: //Inverted labs
				txt = "LABS";
				upsideDown = true;
			break;
			case 118: //Inverted Palace
				txt = "THE PALACE";
				upsideDown = true;
			break;
			case 140: //Inverted Palace
				txt = "IRRADIATED SKIES";
				upsideDown = true;
			break;
			case 141: //Inverted storm
				txt = "INVERSION GAUNTLET";
				upsideDown = true;
			break;
		}
	}
	return [txt,upsideDown];
}
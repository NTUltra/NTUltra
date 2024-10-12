///scrAddArea();
// /@description
///@param area
function scrAddArea(theArea){
	if theArea == 127 && instance_exists(PitNavigation)
		theArea = 141;
	with UberCont
	{
		if theArea == 3 || theArea == 106
			visitedScrap = true;
		else if theArea == 101 || theArea == 122
			visitedOasis = true;
		else if theArea == 10 || theArea == 121
			visitedSavanna = true;
		if visitedScrap && visitedOasis && visitedSavanna {
			scrUnlockGameMode(45,"FOR VISITING#SCRAPYARD, OASIS#AND SAVANNA#ON GAMEMODE ALT SPAWNS",44)	
		}	
	}
	if !array_contains(UberCont.tot_areas,theArea) && isValidGamemodeToUnlock() {
		UberCont.tot_areas[array_length(UberCont.tot_areas)] = theArea;
		with UberCont
		{
			var al = array_length(tot_areas);
			var counter = 0;
			for(var i = 0; i < al; i++)
			{
				if tot_areas[i] > 99 || tot_areas[i] == 10 || tot_areas[i] == 7 || tot_areas[i] == 8
				{
					counter++;	
				}
			}
			if counter > 9
			{
				scrUnlockGameMode(44,"FOR FINDING 10 SECRET AREAS")	
			}
		}
	}
}
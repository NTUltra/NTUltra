///scrAddToRoute();
// /@description
///@param
function scrAddToRoute(area){
	/*
	var areaArray = scrAreaName(area,1,0);
	areaArray[0] = string_replace(areaArray[0],"_1","");
	var areaString = areaArray[0];
	if areaArray[1]
		areaString += "I";//Inverted
	else
		areaString += "N";//Normal
	*/
	with UberCont
	{
		if area != previousRoute
		{
			if (!scrIsGamemode(10))
			{
				var routeComboString = string(previousRoute) + ">" + string(area);
				if (!array_contains(foundRoutes,routeComboString))
				{
					foundRoutes[array_length(foundRoutes)] = routeComboString;
					//scrSave();
				}
			}
			previousRoute = area;
			routeString +=  string(area) + ">";
		}
	}
}
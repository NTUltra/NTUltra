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
	if area != UberCont.previousRoute
	{
		UberCont.previousRoute = area;
		UberCont.routeString +=  string(area) + ">";
	}
}
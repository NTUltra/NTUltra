///scrDrawRoute();
// /@description
///@param
function scrDrawRoute(){
	//To reveal all or not to reveal all?
	//scrDrawOneRoute(everyArea,array_length(everyArea) - 1, 1, c_dkgray, false, true);
	var b = lerp(10,20,routeGlow);
	var discoveredNames = scrDrawOneRoute(allRoutes,array_length(allRoutes) - 1, 1, 
	make_colour_rgb(b,b,b), true);
	if array_length(route) < 1
		return;
	if UberCont.normalGameSpeed == 60
		time += 0.1;
	else
		time += 0.2;
	if time > 1
	{
		time = 0;
		if routeIndex < array_length(route) - 1
		{
			routeIndex += 1;
		}
		else
		{
			time = 1;
		}
	}
	scrDrawOneRoute(route,routeIndex,time);
	return discoveredNames;
}
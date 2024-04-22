///xxx();
// /@description
///@param
function scrTranslateRoute() {
	if instance_exists(GameRender) {
		with GameRender
		{
			alarm[6] = 60;
			var al = array_length(UberCont.foundRoutes);
			allRoutes = [];
			var j = 0;
			for (var i = 0; i < al; i ++)
			{
				var routePart = string_split(UberCont.foundRoutes[i],">",true);
				allRoutes[j] = routePart[0];
				j++;
				allRoutes[j] = routePart[1];
				j++;
			}
			route = string_split(UberCont.routeString,">",true);
			if array_length(route) == 1
				route[1] = route[0];
			time = 0;
			loop = 0;
			routeIndex = 0;
		}
	}
}
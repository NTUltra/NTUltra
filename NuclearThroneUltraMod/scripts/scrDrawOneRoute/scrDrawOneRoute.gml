///scrDrawOneRoute();
// /@description
///@param
function scrDrawOneRoute(myRoute, myRouteIndex, myTime, overwriteRouteColour = false, canDisconnect = false, justSquares = false){
	var mx;
	var my;
	var gotHover = false;
	if (canDisconnect)
	{
		mx = mouse_x - camera_get_view_x(view_camera[0]);
		my = mouse_y - camera_get_view_y(view_camera[0]);
	}
	var totalWidth = camera_get_view_width(0) - (camera_get_view_width(0)*0.25)
	var ox = camera_get_view_x(0) + (camera_get_view_width(0)*0.125);
	var oy = camera_get_view_y(0) + (camera_get_view_height(0)*0.5) - 32;
	var xm = camera_get_view_x(0) + (camera_get_view_width(0)*0.5)
	var xx = ox;
	var yy = oy;
	var xstep = totalWidth/7;
	var ystep = 8;
	var size = 2;
	var routeColourIndex = 0;
	var col;
	var prevCol = c_white;
	var prevInverted = false;
	var routeCol;
	var skipStep = 0;
	var myLoop = 0;
	for (var i = 0; i <= myRouteIndex; i++) {
		
		if (!overwriteRouteColour)
		{
			col = c_white;
			routeCol = routeColours[routeColourIndex];
			var opacity = 1/(loop + 1 - myLoop);
			if loop != myLoop
			{
				opacity *= 0.75;
				col = routeCol;
			}
			opacity = max(opacity,0.1);
		}
		else
		{
			col = overwriteRouteColour;
			routeCol = overwriteRouteColour
		}
		var tx = xx;
		var ty = yy;
		var inverted = false;
		var areaNumber = real(myRoute[i])
		switch(areaNumber) {
			case 1://Desert
				tx = ox;
				ty = oy;
			break;
			case 105://INV Desert
				tx = ox;
				ty = oy;
				inverted = true;
			break;
			case 2://Sewers
				tx = ox + xstep;
				ty = oy;
			break;
			case 110://INV Sewers
				tx = ox + xstep;
				ty = oy;
				inverted = true;
			break;
			case 102://PIZZA Sewers
				tx = ox + xstep;
				ty = oy + ystep;
			break;
			case 3://Scrapyard
				tx = ox + xstep * 2;
				ty = oy;
			break;
			case 106://INV Scrapyard
				tx = ox + xstep * 2;
				ty = oy;
				inverted = true;
			break;
			case 136://ultra Scrapyard
				tx = ox + xstep * 2;
				ty = oy - ystep;
			break;
			case 4://Crystal Caves
				tx = ox + xstep * 5;
				ty = oy;
			break;
			case 111://INV Crystal Caves
				tx = ox + xstep * 5;
				ty = oy;
				inverted = true;
			break;
			case 5://Frozen City
				tx = ox + xstep * 4;
				ty = oy;
			break;
			case 107://INV Frozen City
				tx = ox + xstep * 4;
				ty = oy;
				inverted = true;
			break;
			case 6://Labs
				tx = ox + xstep * 3;
				ty = oy;
			break;
			case 112://INV Labs
				tx = ox + xstep * 3;
				ty = oy;
				inverted = true;
			break;
			case 7://Vulcano
				tx = ox + xstep * 3;
				ty = oy + ystep;
			break;
			case 108://INV Vulcano
				tx = ox + xstep * 3;
				ty = oy + ystep;
				inverted = true;
			break;
			case 8://Wonderland
				tx = ox + xstep * 4;
				ty = oy + ystep;
			break;
			case 109://INV Wonderland
				tx = ox + xstep * 4;
				ty = oy + ystep;
				inverted = true;
			break;
			case 9://Palace
				tx = ox + xstep * 6;
				ty = oy;
			break;
			case 118://INV Palace
				tx = ox + xstep * 6;
				ty = oy;
				inverted = true;
			break;
			case 119://Throne 2
				tx = ox + xstep * 7;
				ty = oy;
				if (!canDisconnect && !justSquares) {
					skipStep = 1;
					routeColourIndex ++;
					myLoop += 1;
					if (i == myRouteIndex && myTime == 1)
					{
						loop += 1;
					}
					if (routeColourIndex >= array_length(routeColours))
					{
						routeColourIndex = 0;
					}
				}
			break;
			case 120://INV Throne 2
				tx = ox + xstep * 7;
				ty = oy;
				inverted = true;
				if (!canDisconnect && !justSquares) {
					skipStep = 1;
					routeColourIndex ++;
					if (i == myRouteIndex && myTime == 1)
						loop += 1;
					myLoop += 1;
					if (routeColourIndex >= array_length(routeColours))
					{
						routeColourIndex = 0;
					}
				}
			break;
			case 130://Factory
				tx = ox + xstep * 6;
				ty = oy + ystep;
			break;
			case 131://INV Factory
				tx = ox + xstep * 6;
				ty = oy + ystep;
				inverted = true;
			break;
			case 132://Cursed Factory
				tx = ox + xstep * 6;
				ty = oy - ystep;
			break;
			case 133://Golden Factory
				tx = ox + xstep * 6;
				ty = oy + ystep * 2;
			break;
			case 134://Ultra Factory
				tx = ox + xstep * 6;
				ty = oy - (ystep * 2);
			break;
			case 138://Irradiated skies
				tx = ox + xstep * 5;
				ty = oy + ystep;
			break;
			case 140://INV Irradiated skies
				tx = ox + xstep * 5;
				ty = oy + ystep;
				inverted = true;
			break;
			case 139://The pit
				tx = ox;
				ty = oy + ystep * 2;
				inverted = true;
			break;
			case 141://Inverted gauntlet/storm
				tx = ox + xstep * 2;
				ty = oy + ystep * 2;
				inverted = true;
			break;
			case 135://HQ
				if (!overwriteRouteColour)
				{
					if i == myRouteIndex
						time = max(time,0.9);
					col = make_colour_rgb(22,97,223);//Rogue Blue;
					tx = tx-(size*3);
					if (prevInverted)
						tx -= (size*3)
					ty = ty;
				}
			break;
			case 100://Crown vault
				if (!overwriteRouteColour && i != 0)
				{
					if i == myRouteIndex
						time = max(time,0.9);
					col = c_lime;
					tx = tx-(size*3);
					if (prevInverted)
						tx -= (size*3)
					ty = ty;
				}
			break;
			case 116://Survival Arena
				//col = c_lime;
				//tx = xm;
				//ty = oy;
			break;
			case 128://Crown Courtyard
				if (!overwriteRouteColour)
					col = c_lime;
				tx = xm;
				ty = oy - (ystep * 2);
			break;
			case 129://INV Crown Courtyard
				if (!overwriteRouteColour)
				{
					col = c_lime;
					tx = xm;
					ty = oy - (ystep * 2);
					inverted = true;
				}
			break;
			case 137://Void
				if (!overwriteRouteColour)
				{
					col = c_purple;
					tx = xm;
					ty = oy + (ystep * 2);
				}
			break;
			case 10://Savanna
				tx = ox;
				ty = oy - ystep;
			break;
			case 121://INV Savanna
				tx = ox;
				ty = oy - ystep;
				inverted = true;
			break;
			case 101://Oasis
				tx = ox;
				ty = oy + ystep;
			break;
			case 122://INV Oasis
				tx = ox;
				ty = oy + ystep;
				inverted = true;
			break;
			case 126://Graveyard
				tx = ox + xstep;
				ty = oy - ystep;
			break;
			case 127://INV Graveyard
				tx = ox + xstep;
				ty = oy - ystep;
				inverted = true;
			break;
			case 103://YV
				tx = ox + xstep * 2;
				ty = oy + ystep;
			break;
			case 125://INV YV
				tx = ox + xstep * 2;
				ty = oy + ystep;
				inverted = true;
			break;
			case 117://MUSHROOM
				tx = ox + xstep * 3;
				ty = oy - ystep;
			break;
			case 124://INV MUSHROOM
				tx = ox + xstep * 3;
				ty = oy - ystep;
				inverted = true;
			break;
			case 114://Jungle
				tx = ox + xstep * 4;
				ty = oy - ystep;
			break;
			case 123://INV Jungle
				tx = ox + xstep * 4;
				ty = oy - ystep;
				inverted = true;
			break;
			case 115://Cursed crystal caves cheese
				tx = ox + xstep * 5;
				ty = oy - ystep;
			break;
			case 113://Bandit land
				tx = ox + xstep * 4;
				ty = oy + ystep * 2;
			break;
		}
		if (justSquares)
		{
			if (inverted)
			{
				if areaNumber != 139 && areaNumber != 140 && areaNumber != 141
					tx += size * 3;
				if overwriteRouteColour
				{
					col = make_colour_rgb(0,52,52);
				}
				else
				{
					col = c_aqua;
				}
			}
			draw_rectangle_colour(tx-size+1,ty-size+1,tx+size-1,ty+size-1,c_black,c_black,c_black,c_black,false);
			draw_rectangle_colour(tx-size,ty-size,tx+size,ty+size,col,col,col,col,false);
		}
		else if skipStep != 0 && (!canDisconnect || i % 2 == 1) {
			
			if (i == myRouteIndex && myTime < 1) {
				draw_line_width_color(xx,yy,
				lerp(xx,tx,myTime),
				lerp(yy,ty,myTime),3,routeCol,routeCol);
				draw_rectangle_colour(xx-size,yy-size,xx+size,yy+size,prevCol,prevCol,prevCol,prevCol,false);
			} else {
				if (inverted)
				{
					if areaNumber != 139 && areaNumber != 140 && areaNumber != 141
						tx += size * 3;
					if overwriteRouteColour
					{
						col = make_colour_rgb(0,18,18);
					}
					else
					{
						col = c_aqua;
						
					}
				}
				if (overwriteRouteColour) {
					draw_line_width_color(xx,yy,tx,ty,1,routeCol,routeCol);
				}
				else
				{
					col = make_colour_hsv(color_get_hue(col),
					colour_get_saturation(col)*opacity,
					colour_get_value(col)*opacity);
					routeCol = make_colour_hsv(color_get_hue(routeCol),
					colour_get_saturation(routeCol),
					colour_get_value(routeCol)*opacity);
					//draw_line_colour(xx+1,yy+1,tx+1,ty+1,c_black,c_black);
					if opacity < 1
					{
						draw_line_width_color(xx,yy,tx,ty,2,routeCol,routeCol);
					}
					else
						draw_line_width_color(xx,yy,tx,ty,3,routeCol,routeCol);
				}
				draw_rectangle_colour(xx-size,yy-size,xx+size,yy+size,prevCol,prevCol,prevCol,prevCol,false);
				//draw_rectangle_colour(tx+1-size,ty+1-size,tx+1+size,ty+1+size,c_black,c_black,c_black,c_black,false);
				draw_rectangle_colour(tx-size,ty-size,tx+size,ty+size,col,col,col,col,false);
				prevCol = col;
			}
		}/* else if (canDisconnect && i > 0) {
			debug("impossible connection found: ", i);
			debug(myRoute[i - 1]);
			debug(myRoute[i]);
		}*/
		xx = tx;
		yy = ty;
		if (canDisconnect && !is_array(gotHover) && areaNumber != 100 && areaNumber != 0 && areaNumber != 135)
		{
			if (mx > (tx - size-2) && mx < (tx + size+2)
			&& my > (ty - size-2) && my < (ty + size+2))
			{
				var area = scrAreaName(myRoute[i],1,0)
				var arString = string_replace(area[0],"_1","");
				tx = round(tx);
				ty = round(ty);
				arString += "\n";
				arString += scrAreaFullName(areaNumber)[0];
				gotHover = [arString, area[1],tx];
			}
		}
		prevInverted = inverted;
		skipStep -= 1;
	}
	draw_set_colour(c_white);
	return gotHover;
}
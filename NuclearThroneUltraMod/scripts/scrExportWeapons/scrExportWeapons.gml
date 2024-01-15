///xxx();
// /@description
///@param
function scrExportWeapons(){
	var amountPerTier = [];
	var amountTypes = [];
	var z = 0;
	repeat(highest_wep_tier+1)
	{
		amountPerTier[z] = 0;
		var w = 0;
		repeat(6)
		{
			amountTypes[z][w] = 0;
			w ++;
		}
		z ++;
	}
	var highestAmountOfSingleTier = 0;
	for (var i = 0; i < maxwep+1; i++) {
		if wep_area[i] >= 0
		{
			amountPerTier[wep_area[i]] += 1;
			if (amountPerTier[wep_area[i]] > highestAmountOfSingleTier)
			{
				highestAmountOfSingleTier = amountPerTier[wep_area[i]];
			}
			amountTypes[wep_area[i]][wep_type[i]] += 1;
		}
	}
	/*
	debug(amountPerTier);
	z = 0;
	debug("__________________________________");
	repeat(array_length(amountPerTier))
	{
		debug(string(z) + " : " + string(amountPerTier[z]));
		var w= 0;
		repeat(6)
		{
			//debug("t"+string(w)+" : " + string(amountTypes[z][w]));//Log amount of types per tier
			w++;
		}
		z++;
	}
	debug("__________________________________");
	*/
	//debug("The highest tier weapon is: ",highestTierWeapon);
	//
	/*EXPORT WEAPON TABLE*/
	var scale = 3;
	var vStep = 48 * scale;
	var hStep = 64 * scale;
	var halfVStep = vStep*0.5;
	var halfHStep = hStep*0.5;
	var vSpace = hStep*2;
	var hSpace = vStep*2;
	var surf = surface_create((hStep*(highest_wep_tier+3))+hStep,(vStep*highestAmountOfSingleTier)+vStep);
	surface_set_target(surf);
	draw_clear(make_colour_rgb(25,19,13));
	var xx = halfHStep;
	var yy = vStep + halfHStep;
	draw_set_colour(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	for (var t = -2; t < highest_wep_tier + 1; t++)
	{
		yy = vStep;
		draw_text_transformed(xx,yy - vStep,string(t),scale,scale,0);
		var areaName = "";
		switch (t)
		{
			case -2:
				areaName = "OUTSIDE POOL";
				break;
			case -1:
				areaName = "SPECIAL";
				break;
			case 0:
				areaName = "1-1";
				break;
			case 1:
				areaName = "1-2";
				break;
			case 2:
				areaName = "1-3";
				break;
			case 3:
				areaName = "2-1";
				break;
			case 4:
				areaName = "3-1";
				break;
			case 5:
				areaName = "3-2";
				break;
			case 6:
				areaName = "3-3";
				break;
			case 7:
				areaName = "4-1/4-2";
				break;
			case 8:
				areaName = "5-1";
				break;
			case 9:
				areaName = "5-2/5-3";
				break;
			case 10:
				areaName = "6-1/6-2";
				break;
			case 11:
				areaName = "7-1/7-2/7-3/T2";
				break;
			case 12:
				areaName = "L1 1-1/1-2";
				break;
			case 13:
				areaName = "L1 1-3/2-1";
				break;
			case 14:
				areaName = "L1 3-1/3-2";
				break;
			case 15:
				areaName = "L1 3-3/4-1";
				break;
			case 16:
				areaName = "L1 4-2/5-1/5-2";
				break;
			case 17:
				areaName = "L1 5-3/6-1/6-2";
				break;
			case 18:
				areaName = "L1 7-1/7-2/7-3/T2\nL2 1-1/1-2";
				break;
			case 19:
				areaName = "L2 2-1/3-1";
				break;
			case 20:
				areaName = "L2 3-2/3-3";
				break;
			case 21:
				areaName = "L2 4-1/4-2/5-1";
				break;
			case 22:
				areaName = "L2 5-2/5-3";
				break;
			case 23:
				areaName = "L2 6-1/6-2/7-1/7-2/\n7-3/T2 L3 1-1";
				break;
			case 24:
				areaName = "L3 1-2/1-3";
				break;
			case 25:
				areaName = "L3 2-1/3-1";
				break;
			case 26:
				areaName = "L3 3-2/3-3";
				break;
			case 27:
				areaName = "L3 4-1/5-1/5-2";
				break;
			case 28:
				areaName = "L3 5-3/6-1/6-2";
				break;
			case 29:
				areaName = "L3 7-1/7-2/7-3/T2\nL4 1-1/1-2";
				break;
			case 30:
				areaName = "L4 1-3/2-1";
				break;
			case 31:
				areaName = "L4 3-1/3-2";
				break;
			case 32:
				areaName = "L4 3-3/4-1/4-2";
				break;
			case 33:
				areaName = "L4 5-1/5-2";
				break;
		}
		draw_text(xx,yy - vStep + (10*scale),areaName);
		for (var i = 0; i < maxwep+1; i++) {
			if wep_area[i] == t
			{
				draw_text_ext(xx,yy - halfVStep + (2*scale),wep_name[i],8,hStep-2);
				var sprt = wep_sprt[i];
				draw_sprite_ext(sprt,0,xx - halfHStep*0.5,yy,scale,scale,0,c_white,1);
				draw_line(0,yy - halfVStep,surface_get_width(surf),yy - halfVStep);
				yy += vStep;
			}
		}
		xx += hStep;
		draw_line(xx - halfHStep,0,xx - halfHStep,surface_get_height(surf));
	}
	draw_text(halfHStep,surface_get_height(surf) - vStep,"VERSION: " + UberCont.updateVersion + UberCont.subUpdateVersion);
	surface_reset_target();
	surface_save(surf,"WeaponTable"+UberCont.updateVersion + UberCont.subUpdateVersion+".png");
	surface_free(surf);
	/*
	for (var i = 0; i < maxwep+1; i++) {
		if wep_area[i] >= 0
		{
			amountPerTier[wep_area[i]] += 1;
			amountTypes[wep_area[i]][wep_type[i]] += 1;
		}
	}
	*/
}
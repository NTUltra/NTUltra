///xxx();
// /@description
///@param
function scrDrawUltraMenu(race, widescreen = 0) {
	draw_set_colour(c_black);
	var xo = 0;
	if UberCont.opt_sideart == sprite_get_number(sprSideArt) + 1
		xo = 108;
	var b = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - widescreen - 3;
	var w =  camera_get_view_width(view_camera[0]);
	draw_rectangle(
	camera_get_view_x(view_camera[0]),
	camera_get_view_y(view_camera[0]) + widescreen - 1,
	camera_get_view_x(view_camera[0]) + w,
	b,
	false);
	draw_set_colour(c_white);
	var o = 64;
	w -= o;
	var xxx = camera_get_view_x(view_camera[0]) + o;
	var yyy = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])*0.5)-18;//-24
	var yyyy = yyy + 24;
	var titleNameSpace = 12;
	var xxxx = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])*0.5) - 147;
	var am = 5;
	//More than 5 ultras
	//draw_set_halign(fa_center);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text(xxxx,yyy-28,"ULTRA MUTATIONS");
	switch (race)
	{
		case 3:		//Eyes
			am ++;
		break;
		case 5:		//Plant
			am ++;
		break;
		case 6:		//YV
			am += 2;
		break;
		case 8:		//ROBOT
			am ++;
		break;
		case 9:		//Chicken
			am ++;
		break;
		case 13:	//Sheep
			am ++;
		break;
		case 16:	//Viking
			am ++;
		break;
		case 17:	//Weapon Smith
			am ++;
		break;
		case 19:	//Skeleton
			am ++;
		break;
		case 21:	//Horror
			am ++;
		break;
		case 27:	//Hands
			am ++;
		break;
	}
	var step = w/am;
	var i = ((race-1)*4) + 1;
	var j = 0;
	var canShow = (UberCont.ctot_ultra_taken[i] || UberCont.ctot_ultra_taken[i+1] || UberCont.ctot_ultra_taken[i+2] || UberCont.ctot_ultra_taken[i+3])
	var canShowThis = true;
	repeat(am)
	{
		var drawIndex = i;
		var drawSprite = sprUltraIcon;
		var name = "";
		var text = "";
		var unlockHint = "";//"REACH LEVEL ULTRA AS" + race_name[race];
		var howToUnlock = "";
		canShowThis = true;
		if j == 4
		{
			canShowThis = false;
			var drawIndex = 0;
			var u = race;
			if u > 9		//Chicken has two secret ultras
				u ++;
			if u > 14	//Sheep has two secret ultras
				u ++;
			if u > 18	//Vikig has two secret ultras
				u ++;
			if u > 20	//Weapon smith has two secret ultras
				u ++
			if u > 23	//Skeleton has two secret ultras
				u ++
			if u > 25	//Horror is seperate
				u --;
			name = string_hash_to_newline(secret_ultra_name[u]);
			text = secret_ultra_text[u];
			canShowThis = UberCont.ctot_secret_ultra_taken[u];
			unlockHint = "HINT: " + secret_ultra_hint[u];
			howToUnlock = "UNLOCK: " + secret_ultra_unlk[u]
			switch (race)
			{
				case 1:
					drawSprite = sprFishCanGun;
				break;
				case 2:
					drawSprite = sprCrystalCursedUltra;
				break;
				case 3:
					drawSprite = sprEyesStrangeStyle;
				break;
				case 4:
					drawSprite = sprDeathStare;
				break;
				case 5:
					drawSprite = sprPlantSonicSpeed;
				break;
				case 6:
					drawSprite = sprYvBlasphemy;
				break;
				case 7:
					drawSprite = sprSteroidsPunchSwap;
				break;
				case 8:
					drawSprite = sprExclusiveTaste;
				break;
				case 9:
					drawSprite = sprPhoenix;
				break;
				case 10:
					drawSprite = sprBigRebel;
				break;
				case 11:
					drawSprite = sprSniperEye;
				break;
				case 12:
					drawSprite = sprGreenTeam;
				break;
				case 13:
					drawSprite = sprSAS;
				break;
				case 14:
					drawSprite = sprInconsistentIncompatability;
				break;
				case 15:
					drawSprite = sprPathOfDestruction;
				break;
				case 16:
					drawSprite = sprCaptainOfTheKraken;
				break;
				case 17:
					drawSprite = sprQuickSwapper;
				break;
				case 18:
					drawSprite = sprMirror;
				break;
				case 19:
					drawSprite = sprReminisce;
				break;
				case 20:
					drawSprite = sprHoardingThief;
				break;
				case 21:
					//HORROR
					drawSprite = sprUltraIcon;
					canShowThis = true;
					unlockHint = "";
					howToUnlock = "";
					name = string_hash_to_newline(ultra_name[0]);
					text = ultra_text[0];
				break;
				case 22:
					drawSprite = sprFreakRogue;
				break;
				case 23:
					drawSprite = sprSpikedFrog;
				break;
				case 24:
					drawSprite = sprAirLord;
				break;
				case 25:
					drawSprite = sprBeeKeeper;
				break;
				case 26:
					drawSprite = sprGrumpyLecture;
				break;
				case 27:
					drawSprite = sprHotHands;
				break;
			}
		}
		else if j == 5
		{
			switch (race)
			{
				case 3:
					var u = 34;
					name = string_hash_to_newline(secret_ultra_name[u]);
					text = secret_ultra_text[u];
					canShowThis = UberCont.ctot_secret_ultra_taken[u];
					unlockHint = "HINT: " + secret_ultra_hint[u];
					howToUnlock = "UNLOCK: " + secret_ultra_unlk[u];
					drawSprite = sprVoidStyle;
				break;
				case 5:
					var u = 33;
					name = string_hash_to_newline(secret_ultra_name[u]);
					text = secret_ultra_text[u];
					canShowThis = UberCont.ctot_secret_ultra_taken[u];
					unlockHint = "HINT: " + secret_ultra_hint[u];
					howToUnlock = "UNLOCK: " + secret_ultra_unlk[u];
					drawSprite = sprPlantKillKillKill;
				break;
				case 6:
					var u = 35;
					name = string_hash_to_newline(secret_ultra_name[u]);
					text = secret_ultra_text[u];
					canShowThis = UberCont.ctot_secret_ultra_taken[u];
					unlockHint = "HINT: " + secret_ultra_hint[u];
					howToUnlock = "UNLOCK: " + secret_ultra_unlk[u];
					drawSprite = sprYvVenuzianAirhorn;
				break;
				case 8:
					var u = 37;
					name = string_hash_to_newline(secret_ultra_name[u]);
					text = secret_ultra_text[u];
					canShowThis = UberCont.ctot_secret_ultra_taken[u];
					unlockHint = "HINT: " + secret_ultra_hint[u];
					howToUnlock = "UNLOCK: " + secret_ultra_unlk[u];
					drawSprite = sprCursedTechonology;
				break;
				case 9:
					var u = 10;
					name = string_hash_to_newline(secret_ultra_name[u]);
					text = secret_ultra_text[u];
					canShowThis = UberCont.ctot_secret_ultra_taken[u];
					unlockHint = "HINT: " + secret_ultra_hint[u];
					howToUnlock = "UNLOCK: " + secret_ultra_unlk[u];
					drawSprite = sprReverseFocus;
				break;
				case 13:
					var u = 15;
					name = string_hash_to_newline(secret_ultra_name[u]);
					text = secret_ultra_text[u];
					canShowThis = UberCont.ctot_secret_ultra_taken[u];
					unlockHint = "HINT: " + secret_ultra_hint[u];
					howToUnlock = "UNLOCK: " + secret_ultra_unlk[u];
					drawSprite = sprHynotize;
				break;
				case 16:
					var u = 19;
					name = string_hash_to_newline(secret_ultra_name[u]);
					text = secret_ultra_text[u];
					canShowThis = UberCont.ctot_secret_ultra_taken[u];
					unlockHint = "HINT: " + secret_ultra_hint[u];
					howToUnlock = "UNLOCK: " + secret_ultra_unlk[u];
					drawSprite = sprLivingArmour;
				break;
				case 17:
					var u = 21;
					name = string_hash_to_newline(secret_ultra_name[u]);
					text = secret_ultra_text[u];
					canShowThis = UberCont.ctot_secret_ultra_taken[u];
					unlockHint = "HINT: " + secret_ultra_hint[u];
					howToUnlock = "UNLOCK: " + secret_ultra_unlk[u];
					drawSprite = sprEnginuity;
				break;
				case 19:
					var u = 24;
					name = string_hash_to_newline(secret_ultra_name[u]);
					text = secret_ultra_text[u];
					canShowThis = UberCont.ctot_secret_ultra_taken[u];
					unlockHint = "HINT: " + secret_ultra_hint[u];
					howToUnlock = "UNLOCK: " + secret_ultra_unlk[u];
					drawSprite = sprUltimateGamble;
				break;
				case 21:
					var u = 0;
					name = string_hash_to_newline(secret_ultra_name[u]);
					text = secret_ultra_text[u];
					canShowThis = UberCont.ctot_secret_ultra_taken[u];
					unlockHint = "HINT: " + secret_ultra_hint[u];
					howToUnlock = "UNLOCK: " + secret_ultra_unlk[u];
					drawSprite = sprCashFlow;
				break;
				case 27:
					var u = 32;
					name = string_hash_to_newline(secret_ultra_name[u]);
					text = secret_ultra_text[u];
					canShowThis = UberCont.ctot_secret_ultra_taken[u];
					unlockHint = "HINT: " + secret_ultra_hint[u];
					howToUnlock = "UNLOCK: " + secret_ultra_unlk[u];
					drawSprite = sprBoomHands;
				break;
			}
		}
		else if j == 6
		{
			switch (race)
			{
				case 6:
					var u = 36;
					name = string_hash_to_newline(secret_ultra_name[u]);
					text = secret_ultra_text[u];
					canShowThis = UberCont.ctot_secret_ultra_taken[u];
					unlockHint = "HINT: " + secret_ultra_hint[u];
					howToUnlock = "UNLOCK: " + secret_ultra_unlk[u];
					drawSprite = sprYvGodsDontDie;
				break;
				default: 
					name = string_hash_to_newline(ultra_name[i]);
					text = ultra_text[i];
				break;
			}
		}
		else
		{
			var name = string_hash_to_newline(ultra_name[i]);
			var text = ultra_text[i];	
		}
		#region render ultra text
			var col = c_white;
			if !canShow || !canShowThis
			{
				col = c_dkgray;
			}
				draw_sprite_ext(drawSprite,drawIndex,xxx,yyy,1,1,0,col,1);
			if !canShow || !canShowThis
			{
				draw_sprite(sprLocked,0,xxx,yyy);
			}
			draw_set_colour(c_white);
			if (mouse_x < xxx + 12 && mouse_x > xxx - 12 && mouse_y > yyy - 12 && mouse_y < yyy + 12)
			{
				var bb = yyyy + titleNameSpace + string_height(string_hash_to_newline(scrReplaceAllColourCodes(text)));
				if j > 3
					bb += max(string_height(howToUnlock),string_height(unlockHint));
				if bb > b
				{
					draw_rectangle_colour(camera_get_view_x(view_camera[0]), b,
					camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]),
					bb, c_black, c_black, c_black, c_black, false);
				}
				if j > 3
					bb -= max(string_height(howToUnlock),string_height(unlockHint));
				if !canShowThis || !canShow
				{
					draw_text(xxxx,yyyy,scrCensorString(name));
					draw_text(xxxx,yyyy + titleNameSpace,scrCensorString(scrReplaceAllColourCodes(text)));
					if j > 3
					{
						draw_text_colour(xxxx,bb, unlockHint,c_gray,c_gray,c_gray,c_gray,1);
					}
				}
				else 
				{
					if j > 3
					{
						draw_text_colour(xxxx,bb,howToUnlock,c_gray,c_gray,c_gray,c_gray,1);
					}
					draw_text(xxxx,yyyy,name);
					draw_set_color(make_colour_rgb(160,160,160));
					scrDrawTextColours(xxxx,yyyy + titleNameSpace,text);
					draw_set_colour(c_white);
				}
			}
		#endregion
		xxx += step;
		i++;
		j++;
	}
	draw_set_halign(fa_left);
	draw_set_valign(fa_bottom);
}
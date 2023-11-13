function scrDrawOptions2() {
	//DRAW OPTIONS2

	if widescreen > 0
	widescreen -= 8

	//scrGameModes();

	if instance_exists(GameModeUpDown) && GameModeUpDown.gamemodenr != 0
		gamemodename=string(gamemode[gamemodeOrder[GameModeUpDown.gamemodenr]]);
	else
		gamemodename = "";

	var canUnlock = "";
	if instance_exists(GameModeUpDown)
	if isValidGamemodeToUnlock()
	{
		canUnlock = "- ENABLED -";
	}
	else
	{
		canUnlock = "-DISABLED-";
	}
	txt0 = "#GAMEMODE CONCOCTIONS########################UNLOCKABLES ARE#"+canUnlock+"##HOLD [LEFT CLICK] TO ADD/REMOVE GAMEMODE#PRESS [RIGHT CLICK] TO RETURN";
	var gamemodeScrollString = "";
	var al = array_length(UberCont.opt_gamemode)
	if al < 1
		gamemodeScrollString = "NORMAL";
	for (var i = 0; i < al; i++)
	{
		gamemodeScrollString += string_replace_all(UberCont.gamemode[UberCont.opt_gamemode[i]],"#"," ");
		if i != al - 1
			gamemodeScrollString += " + ";
	}
	txt1 = "###RESET########"
	txt2 = "##### "+string(gamemodename)+"######";

	stxt0 = "#GAMEMODE CONCOCTIONS#########################" + canUnlock //+ "##HOLD                                    ";
	stxt1 = "###RESET##### ####### #### ####"
	stxt2 = txt2


	

	//with DiscAmountUpDown
	//event_perform(ev_draw,0)

	//with DiscDamageUpDown
	//event_perform(ev_draw,0)
	//with GameModeUpDown
	//event_perform(ev_draw,0)

	//with StartingWeaponUpDown
	//event_perform(ev_draw,0)

	//with WeaponDisplay
	//event_perform(ev_draw,0)


	draw_set_valign(fa_top)
	draw_set_halign(fa_center)
	var yy = __view_get( e__VW.YView, 0 )-4;
	draw_set_color(c_black)
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,yy+1,string_hash_to_newline(string(txt0)))
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+1,yy+1,string_hash_to_newline(string(txt0)))
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+1,yy,string_hash_to_newline(string(txt0)))
	draw_set_color(c_gray)
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,yy,string_hash_to_newline(string(txt0)))
	draw_set_color(c_white)
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,yy,string_hash_to_newline(string(stxt0)))

	draw_set_halign(fa_right)
	draw_set_color(c_black)
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-8,yy+1,string_hash_to_newline(string(txt1)))
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-7,yy+1,string_hash_to_newline(string(txt1)))
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-7,yy,string_hash_to_newline(string(txt1)))
	draw_set_color(c_gray)
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-8,yy,string_hash_to_newline(string(txt1)))
	draw_set_color(c_white)
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-8,yy,string_hash_to_newline(string(stxt1)))

	draw_set_halign(fa_left)

	draw_set_color(c_black)
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+12,yy+1,string_hash_to_newline(string(txt2)))
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+13,yy+1,string_hash_to_newline(string(txt2)))
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+13,yy,string_hash_to_newline(string(txt2)))
	draw_set_color(c_gray)
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+12,yy,string_hash_to_newline(string(txt2)))
	draw_set_color(c_white)
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+12,yy,string_hash_to_newline(string(stxt2)))
	
	draw_set_color(c_black)
	yy = __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) - 28;
	gmwidth = max(0,string_width(gamemodeScrollString) - __view_get( e__VW.WView, 0 ));
	var xx = lerp(
	__view_get( e__VW.XView, 0 )+(__view_get( e__VW.WView, 0 )*0.5) - gmwidth*0.5,
	__view_get( e__VW.XView, 0 )+(__view_get( e__VW.WView, 0 )*0.5) + gmwidth*0.5,
	gmScroll);
		draw_set_halign(fa_center)
	draw_text(xx,yy+1,gamemodeScrollString)
	draw_text(xx,yy+1,gamemodeScrollString)
	draw_text(xx,yy,gamemodeScrollString)
	draw_set_color(c_ltgray)
	draw_text(xx,yy,gamemodeScrollString)
	draw_set_halign(fa_left)
	//draw_set_color(c_white)
	//draw_text(xx,yy,gamemodeScrollString)

	if instance_exists(StartingWeaponUpDown)
	{
	//scrWeapons();
	with StartingWeaponUpDown{
		draw_set_halign(fa_center);
		var yyy = y + 10;
		var yy = y + 42;
		draw_text_color(x+8,yyy,Menu.race_name[Menu.race],c_white,c_white,c_white,c_white,1);
		if wep == 0
		{
			draw_text_color(x+8,y+18,"RANDOM",c_white,c_white,c_white,c_white,1);
			UberCont.opt_gm1wep = wep;
		}
		else {
			var locked = false;
			var col = c_silver;
			if (!UberCont.wep_found[Menu.race,wep])
			{
				locked = true;
				col = c_dkgray;
			}
			else
			{
				UberCont.opt_gm1wep = wep;
			}
			draw_ellipse_colour(x-16,yy-12,x+32,yy+14,col,col,false);
			draw_sprite(wep_sprt[StartingWeaponUpDown.wep],0,round(x),yy);
			draw_text_color(x+8,yyy + 8,string(StartingWeaponUpDown.wep),c_white,c_white,c_white,c_white,1);
			draw_text_ext_color(x+8,y+36,
			string_hash_to_newline("###"+string(StartingWeaponUpDown.wep_name[wep])),
			8,128,
			c_white,c_white,c_white,c_white,1);
			
			if locked
			{
				draw_sprite(sprLocked,0,round(x + 8),yy);
				var ri = inList;
				var unlockedFor = "";
				var maxInList = 7;
				var maxCounter = 0;
				repeat(UberCont.racemax)
				{
					if (maxCounter < maxInList && UberCont.wep_found[ri,wep])
					{
						unlockedFor	+= "\n"+UberCont.race_name[ri];
						maxCounter ++;
					}
					ri++;
					if ri > UberCont.racemax
					{
						ri = 1;	
					}
				}
				draw_text_ext_colour(x+8,y+76,
				"UNLOCKED FOR:" + unlockedFor,8,132,c_gray,c_gray,c_gray,c_gray,1);
			}
		}
		/*
		else
		{
			draw_text_color(x,y+16,string_hash_to_newline(string(StartingWeaponUpDown.wep)),c_white,c_white,c_white,c_white,1);
			draw_text_color(x,y+32,string_hash_to_newline("####"+"????"),c_white,c_white,c_white,c_white,1);
		}*/
		draw_set_halign(fa_left)
	}
	}


}

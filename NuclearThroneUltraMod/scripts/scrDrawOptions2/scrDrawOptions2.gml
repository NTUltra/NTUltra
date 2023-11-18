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
		with StartingWeaponUpDown {
			draw_set_halign(fa_center);
			var yyy = y + 10;
			var yy = y + 42;
			draw_text_color(x+8,yyy,Menu.race_name[Menu.race],c_ltgray,c_ltgray,c_ltgray,c_ltgray,1);
			if wep == 0
			{
				draw_text_color(x+8,y+18,"RANDOM",c_white,c_white,c_white,c_white,1);
				UberCont.opt_gm1wep = wep;
			}
			else {
				var locked = false;
				var superLocked = false;
				var col = c_silver;
				var wepCol = c_white;
				var wepNameCol = c_white;
				var wepName = string(wep) + ". " + wep_name[wep]
				if (!UberCont.any_wep_found[wep])
				{
					superLocked = true;
					col = c_black;
					wepCol = c_gray;
					wepNameCol = c_gray;
					wepName = string(wep) + ". " + scrCensorString(wep_name[wep]);
				}
				if (!superLocked && !UberCont.wep_found[Menu.race,wep])
				{
					locked = true;
					col = c_dkgray;
					wepNameCol = c_white;
					UberCont.opt_gm1wep = wep;	
				}
				draw_ellipse_colour(x-16,yy-12,x+32,yy+14,col,col,false);
				draw_sprite_ext(wep_sprt[wep],0,round(x),yy,1,1,0,wepCol,1);
				if (superLocked)
				{
					draw_sprite(sprLocked,0,round(x + 8),yy);	
				}
				draw_text_color(x+8,yyy + 8,wepName,wepNameCol,wepNameCol,wepNameCol,wepNameCol,1);
				if wep_area[wep] >= 0
				{
					draw_sprite_ext(sprWepTier,0,x,y+64,1,1,0,wepNameCol,1);
					draw_set_halign(fa_left)
					draw_text_ext_color(x+2,y+37,
					string_hash_to_newline("###"+string(wep_area[wep])),
					8,128,
					wepNameCol,wepNameCol,wepNameCol,wepNameCol,1);
					draw_set_halign(fa_center)
					if scrIsWeaponValidForUnlocks(wep)
					{
						draw_sprite_ext(sprIsValidGamemode,1,x+16,y+61,1,1,0,wepNameCol,1);
					}
				}
				else if scrIsWeaponValidForUnlocks(wep)
				{
					draw_sprite_ext(sprIsValidGamemode,1,x+8,y+61,1,1,0,wepNameCol,1);
				}
			
				if locked
				{
					var ri = inList;
					var unlockedFor = "";
					var maxInList = 7;
					var maxCounter = 0;
					var yy = y + 76;
					var xx = x + 8;
					var my = yy + 8;
					draw_text_ext_colour(xx,yy,
					"UNLOCKED FOR:",8,300,c_ltgray,c_ltgray,c_ltgray,c_ltgray,1);
					repeat(UberCont.racemax)
					{
						if (maxCounter < maxInList && (UberCont.wep_found[ri,wep]))
						{
							unlockedFor	+= "\n"+UberCont.race_name[ri];
							maxCounter ++;
							if (mouse_x > xx - 64 && mouse_x < xx + 64 && mouse_y > my && mouse_y < my + 8)
							{
								alarm[0] = 20;
								draw_text_ext_colour(xx,my,
								UberCont.race_name[ri],8,300,c_white,c_white,c_white,c_white,1);
								if mouse_check_button_pressed(mb_left) {
									snd_play_2d(sndClick);
									Menu.race = ri;
								}
							}
							else
							{
								draw_text_ext_colour(xx,my,
								UberCont.race_name[ri],8,300,c_gray,c_gray,c_gray,c_gray,1);
							}
							my += 8;
						}
						ri++;
						if ri > UberCont.racemax
						{
							ri = 1;	
						}
					}
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

function scrDrawOptions2() {
	//DRAW OPTIONS2

	if widescreen > 0
	widescreen -= 8
	var up;
	var down;
	var left;
	var right;
	var swap;
	var gamemodename;

	up=scrAsciiChar(UberCont.opt_up);
	down=scrAsciiChar(UberCont.opt_down);
	left=scrAsciiChar(UberCont.opt_left);
	right=scrAsciiChar(UberCont.opt_right);
	swap=scrAsciiChar(UberCont.opt_swap);
	pickup=scrAsciiChar(UberCont.opt_pickup);

	scrGameModes();

	if instance_exists(GameModeUpDown)
	gamemodename=string(gamemode[gamemodeOrder[GameModeUpDown.gamemodenr]]);
	else
	gamemodename=string(gamemode[UberCont.opt_gamemode]);
	/*if UberCont.opt_gamemode = 0{
	gamemode="NORMAL"}
	else if UberCont.opt_gamemode = 1 {gamemode="ONE WEAPON ONLY"}
	else if UberCont.opt_gamemode = 2 {gamemode="FAVOURABLE BUILD"}
	else {gamemode="NO HUD"}*/

	var canUnlock = "";
	if instance_exists(GameModeUpDown)
	if isValidGamemodeToUnlock(gamemodeOrder[GameModeUpDown.gamemodenr])
	{
		canUnlock = "- ENABLED -";
	}
	else
	{
		canUnlock = "-DISABLED-";
	}
	txt0 = "#GAME#CLICK WITH LMB ON SQUARE THEN PRESS KEY########################UNLOCKABLES ARE#"+canUnlock+"#IN THIS GAMEMODE#PRESS [RIGHT CLICK] TO RETURN";
	txt1 = "####CUSTOMIZE CONTROLS#UP#DOWN#LEFT#RIGHT#SWAP WEAPONS#PICKUP##GAMEMODE########"
	txt2 = "#####"+up+"#"+down+"#"+left
	+"#"+right+"#"+swap+"#"+pickup+"##"+string(gamemodename)+"######";

	stxt0 = "#GAME##########################" + canUnlock;
	stxt1 = "####CUSTOMIZE CONTROLS##### ####### #### ####"
	stxt2 = txt2


	with KeyUp
	event_perform(ev_draw,0)
	with KeyDown
	event_perform(ev_draw,0)
	with KeyLeft
	event_perform(ev_draw,0)
	with KeyRight
	event_perform(ev_draw,0)
	with KeySwap
	event_perform(ev_draw,0)
	with KeyPickup
	event_perform(ev_draw,0)
	with KeyReset
	event_perform(ev_draw,0)

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



	draw_set_font(fntM)
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
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+8,yy+1,string_hash_to_newline(string(txt2)))
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+9,yy+1,string_hash_to_newline(string(txt2)))
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+9,yy,string_hash_to_newline(string(txt2)))
	draw_set_color(c_gray)
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+8,yy,string_hash_to_newline(string(txt2)))
	draw_set_color(c_white)
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+8,yy,string_hash_to_newline(string(stxt2)))

	if instance_exists(StartingWeaponUpDown)
	{
	//scrWeapons();
	with StartingWeaponUpDown{
		draw_set_halign(fa_middle)
		if wep=0
		{
			draw_text_color(x+8,y+16,string_hash_to_newline("RANDOM"),c_white,c_white,c_white,c_white,1);
		}
		else if (   (   wep !=298 && wep!=311  && wep!=315  && wep!=329  && wep!=177  && wep!=192  && wep!=69  && wep!=75  && wep!=264  && wep!=328
		  && wep!=231  && wep!=263  && wep!=214  && wep!=316    ) || (  wep=298 && UberCont.oneweponly298=1 || wep=311 && UberCont.oneweponly311=1
		   || wep=315 && UberCont.oneweponly315=1 || wep=329 && UberCont.oneweponly329=1 || wep=177 && UberCont.oneweponly177=1 || wep=192 && UberCont.oneweponly192=1
		    || wep=69 && UberCont.oneweponly69=1 || wep=75 && UberCont.oneweponly75=1 || wep=264 && UberCont.oneweponly264=1 || wep=328 && UberCont.oneweponly328=1
		     || wep=231 && UberCont.oneweponly231=1 || wep=263 && UberCont.oneweponly263=1 || wep=214 && UberCont.oneweponly214=1 || wep=316 && UberCont.oneweponly316=1    )   )
		    {
		    draw_sprite(wep_sprt[StartingWeaponUpDown.wep],0,x,y+37);
			draw_text_color(x+8,y+16,string_hash_to_newline(string(StartingWeaponUpDown.wep)),c_white,c_white,c_white,c_white,1);
			draw_text_ext_color(x+8,y+32,
			string_hash_to_newline("###"+string(StartingWeaponUpDown.wep_name[wep])),
			8,128,
			c_white,c_white,c_white,c_white,1);
			UberCont.opt_gm1wep=wep;
		}
		else
		{
		draw_text_color(x,y+16,string_hash_to_newline(string(StartingWeaponUpDown.wep)),c_white,c_white,c_white,c_white,1);
		draw_text_color(x,y+32,string_hash_to_newline("####"+"????"),c_white,c_white,c_white,c_white,1);
		}
		draw_set_halign(fa_left)
	}
	}


}

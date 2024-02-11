function scrDrawUpdate() {

	//DRAW UPDATE
	if widescreen > 0
		widescreen -= 8
	if keyboard_check_pressed(vk_space)
	{
	if updatepage=0
	updatepage=1;
	else
	updatepage=0;
	}

	if updatepage=0
	{
		if keyboard_check_pressed(ord("D"))
		{
			url_open("https://discord.gg/kmp5t2TK6j");
		}
		if keyboard_check_pressed(ord("T"))
		{
			url_open("https://twitter.com/Erdeppol");
		}
	var txt0 = @"#UPDATE [30.13.00]
	
	* TWO NEW SECRET ULTRAS FOR Y.V.
	
	* NEW SECRET SKIN FOR ROBOT
	
	* NEW SECRET ULTRA FOR ROBOT
	
	* CHICKEN, HARDER TO KILL ADDED:
	  CROWN VAULTS REGENERATE 1 MAX HP
	  
	* VIKING AXE BUFFS
	
	* GAMMA GUTS NOW HAS INCREASED RANGE
	
	* HAMMER HEAD NOW LETS YOU DIG
	AND BECOME IMMUNE
	
	* ALTERNATIVE/SECRET ULTRAS
	ARE NOW UNLOCKED PERMANENTLY
	AND NO LONGER REPLACE EXISTING ULTRAS
	
	* NEW WEAPON: HEAVY SCREWDRIVER
	
	
	PRESS [T] FOR UPDATES ON TWITTER
	PRESS [D] TO JOIN THE DISCORD
	
	* PRESS [SPACE] FOR PAGE 2"
	}
	else
	{
		if keyboard_check_pressed(ord("D"))
		{
			url_open("https://discord.gg/kmp5t2TK6j");
		}
		if keyboard_check_pressed(ord("T"))
		{
			url_open("https://twitter.com/Erdeppol");
		}
	var txt0=@"
	* YOU CAN NOW REACH 200%!

	* SPLINTER GUNS BUFFED
	
	* BAZOOKA BUFFS
	
	* SPEED LINES ON PLUTONIUM HUNGER
	
	* OPTIMIZED THE GAME
	WHEN THERE ARE A TON OF ENEMIES
	
	* CROWN OF GUNS BUFFED
	
	* BLOOD ROCKET WEAPONS COST REDUCED
	
	* GRAVEYARD NOW REQUIRES YOU TO TAKE
	THE REROLL BEFORE YOU CAN LEAVE
	
	* PICKUPS COLLISION IMPROVED
	
	* MINOR GHOST WEAPONS NERF
	
	* INCREASED MORPH DAMAGE
	
	
	PRESS [T] FOR UPDATES ON TWITTER
	PRESS [D] TO JOIN THE DISCORD

	* PRESS [SPACE] FOR PAGE 1";
	}

	var stxt0 = txt0


	draw_set_valign(fa_top)
	draw_set_halign(fa_center)


	draw_set_color(c_black)
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+1,string_hash_to_newline(string(txt0)))
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+1,__view_get( e__VW.YView, 0 )+1,string_hash_to_newline(string(txt0)))
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+1,__view_get( e__VW.YView, 0 ),string_hash_to_newline(string(txt0)))
	draw_set_color(c_gray)
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 ),string_hash_to_newline(string(txt0)))
	draw_set_color(c_white)
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 ),string_hash_to_newline(string(stxt0)))


}

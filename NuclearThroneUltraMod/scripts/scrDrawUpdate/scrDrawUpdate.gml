function scrDrawUpdate() {

	//DRAW UPDATE
	if widescreen > 0
		widescreen -= 8
	/*if keyboard_check_pressed(vk_space)
	{
	if updatepage=0
	updatepage=1;
	else
	updatepage=0;
	}*/

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
		if keyboard_check_pressed(ord("C"))
		{
			url_open("https://erdeppol.itch.io/nuclear-throne-ultra-mod/devlog/693507/301603");
		}
	var txt0 = @"#UPDATE [30.16.03]
	
	* NEW MUTATION: MOOD SWING!
	
	* NEW WEAPONS:
	  ULTRA ORBITER
	  FROST TELEPATHOR
	  OLD RIFLE
	  MICRO GRENADE
	  ICICLE GUN
	  FROST KNIFE
	  GOLDEN FROST KNIFE
	
	* EXTRA FEET NOW NEGATES RECOIL
	
	* ATOM ELECTRON BUFF
	
	* ANGEL TRANQUILITY BUFF
	
	* BUFFED SHEEP CHARGE
	
	* NERF/ADJUSTED ULTRA DISC GUYS
	
	* SEVERAL BUGFIXES & BALANCE CHANGES
	
	PRESS [T] FOR UPDATES ON TWITTER
	PRESS [D] TO JOIN THE DISCORD
	PRESS [C] FOR FULL CHANGELOG"
	//* PRESS [SPACE] FOR PAGE 2"
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
	
	* GRAVEYARD NOW REQUIRES YOU TO TAKE
	THE REROLL BEFORE YOU CAN LEAVE
	
	* PICKUPS COLLISION IMPROVED
	
	* MINOR GHOST WEAPONS NERF
	
	* INCREASED MORPH DAMAGE
	
	[30.14.00]
	
	* FIXED SEVERAL CRASHES
	
	* INCREASED WEAPON DROPRATE
	ON SOME ENEMIES AND BOSSES
	
	
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

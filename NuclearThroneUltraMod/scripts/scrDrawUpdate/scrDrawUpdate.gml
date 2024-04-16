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
		if keyboard_check_pressed(ord("C"))
		{
			url_open("https://erdeppol.itch.io/nuclear-throne-ultra-mod/devlog/716030/302100");
		}
	var txt0 = @"#UPDATE [30.21.00]
	
	* NEW LAVABALL ENEMY ART!
	  (BY YUVO)
	
	* NEW SECRET SKINS FOR
	  EYES
	  DOCTOR (BY DAPH & YOKU)
	
	* NEW WEAPONS
	  SQUARAGON
	  MICRO LAUNCHER SHOTGUN
	  BLOOD MINIGUN
	  ULTRA SUCK CANNON
	  
	* HUMPHRY ACTIVE CHANGES
	
	* ANGEL ACTIVE CHANGES
	
	* BUSINESS HOG INVESTMENT NERF
	
	* INCREASED DAMAGE BLUE FIRE
	* GOLDEN SNIPER ATTACK CHANGED
	
	PRESS [T] FOR UPDATES ON TWITTER
	PRESS [D] TO JOIN THE DISCORD
	PRESS [C] FOR FULL CHANGELOG
	
	PRESS [SPACE] FOR PAGE 2"
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
		if keyboard_check_pressed(ord("C"))
		{
			url_open("https://erdeppol.itch.io/nuclear-throne-ultra-mod/devlog/714542/302000");
		}
	var txt0=@"#UPDATE [30.20.00]
	
	* NEW WEAPONS
	  LASER FLAK CANNON
	  DOUBLE LASER MINIGUN
	  SUCK CANNON
	  YOYO MINIGUN
	  LIGHTNING DRAGON
	  SUPER BLOOD ROCKET GUN
	  MORPH-O-MINIGUN
	  SUPER COFFEE CANNON
	  VOID RIPPER
	  BOLT BOMB
	  ORBITING YOYO GUN
	  DOUBLE MORPH-O-LASER
	  HEAVY JACKHAMMER
	  NAIL GUN
	  NAIL MACHINEGUN
	  TRIAGON
	  PLASMA LASER MINIGUN
	  
	* BUFFED ADRENALINE FUEL
	* INCREASED BOSS HEALTH SCALING
	
	PRESS [T] FOR UPDATES ON TWITTER
	PRESS [D] TO JOIN THE DISCORD
	PRESS [C] FOR FULL CHANGELOG
	
	PRESS [SPACE] FOR PAGE 1";
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

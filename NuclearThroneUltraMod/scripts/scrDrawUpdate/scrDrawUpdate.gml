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
	var txt0 = @"#UPDATE [31.00.00]
	
	* NEW PLAYER PROGRESSION SYSTEMS!
	* ADDED IDPD HQ!
	* NEW ELITE IDPD!
	* NEW MUTATION INNER PEACE
	* ANOTHER HIDDEN NEW MUTATION!
	* LOADS OF NEW WEAPONS!
	* ADDED SOME OTHER SIGNIFICANT FEATURES
	THAT I WONT SPOIL HERE

	* REBALANCED AMMO
	* MORE WEAPON DROPS!
	
	* MELEE DEFLECT WINDOW DECREASED
	
	* GRAVEYARD REWARD CHANGED
	
	* IMPROVED BOSS INTROS!
		
	* ADDED AND CHANGED SOME ULTRA MODS
	
	* ADDED OUTLINE WHEN YOU ARE IMMUNE
		
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
	var txt0=@"#UPDATE [31.00.00]
	
	* MOVED SOME LOOP BOSSES TO LOOP 2+
	
	* BUFFED FLEXIBLE ELBOWS
	* NEW FISH THRONEBUTT
	* DOCTOR PASSIVE REBALANCED
	* MINOR ALIEN INTESTINES REWORK
	* MOOD SWING NOW WORKS ON TOXIC
	* BOILING VEINS TAKES MOOD SWINGS
	EXPLOSION BUFF
	* SCARRIER FACE NOW ADDS
	A FLAT DAMAGE INCREASE
	* HAMMERHEAD MINOR REWORK
	
	* HARD MODE FIRST MUTATION
	NOW ENABLES ENTIRE LIST OF MUTATIONS
	
	* SWARM BOLTS ARE NOW VENEMOUS
	
	* LOTS OF QOL CHANGES
	* LOTS OF BALANCE CHANGES
	* LOTS OF BUGFIXES
	
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

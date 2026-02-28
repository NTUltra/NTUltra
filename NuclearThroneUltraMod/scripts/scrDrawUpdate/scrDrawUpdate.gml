function scrDrawUpdate() {

	//DRAW UPDATE
	if widescreen > 0
		widescreen -= 8
		/*
	if keyboard_check_pressed(vk_space)
	{
	if updatepage=0
	updatepage=1;
	else
	updatepage=0;
	}
*/
	if updatepage=0
	{
		if keyboard_check_pressed(ord("D"))
		{
			url_open("https://discord.gg/kmp5t2TK6j");
		}
		if keyboard_check_pressed(ord("B"))
		{
			url_open("https://bsky.app/profile/erdeppol.bsky.social");
		}
		if keyboard_check_pressed(ord("C"))
		{
			url_open("https://erdeppol.itch.io/nuclear-throne-ultra-mod/devlog/1414548/320000");
		}
	var txt0 = @"#UPDATE [32.00.00]
	
	* ADDED TWO NEW MUTANTS!
	
	* REBALANCED ENEMIES TO BE
	MORE DIFFICULT AND LIKE VANILLA
	
	* ADDED THREE NEW AREAS
	
	* ADDED A WHOLE BUNCH OF NEW WEAPONS
	
	* ADDED A LOOP 2+ BOSS IN SAVANNA AND OASIS
	
	* ADDED TWO NEW CROWNS
	
	* ADDED A NEW MUTATION
	
	* MINOR REWORKS FOR SOME MUTATIONS
	
	* ADJUSTED SOME AREA GENERATION
	
	* LOTS MORE BALANCE CHANGES
	
	* ADDED ULTRA WIDE SUPPORT
		
	PRESS [B] FOR UPDATES ON BLUESKY
	PRESS [D] TO JOIN THE DISCORD
	PRESS [C] FOR FULL CHANGELOG
	"
	//PRESS [SPACE] FOR PAGE 2"
	}
	else
	{
		if keyboard_check_pressed(ord("D"))
		{
			url_open("https://discord.gg/kmp5t2TK6j");
		}
		if keyboard_check_pressed(ord("B"))
		{
			url_open("https://bsky.app/profile/erdeppol.bsky.social");
		}
		if keyboard_check_pressed(ord("C"))
		{
			url_open("https://erdeppol.itch.io/nuclear-throne-ultra-mod/devlog/824529/310000");
		}
	var txt0=@"#UPDATE [31.00.00]
	
	* MOVED SOME LOOP BOSSES TO LOOP 2+
	
	* NEW YUNG CUZ THRONEBUTT
	* NEW FISH THRONEBUTT
	* DOCTOR PASSIVE REBALANCED
	* MINOR ALIEN INTESTINES REWORK
	* MOOD SWING NOW WORKS ON TOXIC
	* BOILING VEINS TAKES MOOD SWINGS
	EXPLOSION BUFF
	* SCARIER FACE NOW ADDS
	A FLAT DAMAGE INCREASE
	* HAMMERHEAD MINOR REWORK
	
	* HARD MODE FIRST MUTATION
	NOW ENABLES ENTIRE LIST OF MUTATIONS
	
	* SWARM BOLTS ARE NOW VENEMOUS
	
	* LOTS OF QOL CHANGES
	* LOTS OF BALANCE CHANGES
	* LOTS OF BUGFIXES
	
	PRESS [B] FOR UPDATES ON BLUESKY
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

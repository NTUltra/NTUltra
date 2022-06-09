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
	txt0 = @"#UPDATE 28 [0.06]
	
	
	* 70 NEW WEAPONS
	
	* NEW ULTRA MUTATION ART
	BY SEYMOUR SCHLONG
	
	* BUFFED IMPACT WRISTS
	* BUFFED RECYCLE GLAND
	* BUFFED SHOTGUN SHOULDERS
	* RECYCLE GLAND NOW WORKS ON
	ALLY BULLETS
	* NEW PLANT ULTRA C
	* CHANGED VIKING ULTRA C
	* NEW GOLDEN ENEMIES
	* NEW ULTRA MOD
	* MORE ULTRA MOD CASES COVERED
	
	* NEW MUTATIONS
	FLEXIBLE ELBOWS
	PUFFY CHEEKS
	
	* NEW SECRET FISH ULTRA
	
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
	txt0=@"
	
	* NEW GOLDEN ENEMIES
	
	GOLD JUNGLE FLY (LOOP 2+)
	GOLDEN CRYSTALS
	INVERTED GOLDEN CRYSTALS
	GOLDEN TEAPOT
	INVERTED GOLDEN TEAPOT
	INVERTED GOLDEN SNOW TANK
	GOLDEN SNIPERS (LOOP 1+)
	INVERTED GOLDEN SNIPERS (LOOP 1+)
	GOLDEN NECROMANCERS (LOOP 1+)
	INVERTED GOLDEN NECROMANCERS (LOOP 1+)
	GOLDEN HYENA (LOOP 2+)
	
	
	* DEEP LOOP GOLDEN TOTEMS (LOOP 7+)
	
	* LOTS OF BALANCE AND BUGFIXES
	
	PRESS [T] FOR UPDATES ON TWITTER
	PRESS [D] TO JOIN THE DISCORD
	
	
	* PRESS [SPACE] FOR PAGE 1";
	}

	stxt0 = txt0


	draw_set_font(fntM)
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

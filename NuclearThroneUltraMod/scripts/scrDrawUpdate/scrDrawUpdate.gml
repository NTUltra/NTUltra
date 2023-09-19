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
	txt0 = @"#UPDATE 28 [0.10]
	* 127 NEW WEAPONS!
	* ALL ULTRA MUTATION ART!
	MANY BY SEYMOUR SCHLONG
	* FORKING LIGHTNING!
	* BUFFED IMPACT WRISTS
	* BUFFED RECYCLE GLAND
	* BUFFED SHOTGUN SHOULDERS
	* BUFFED HAMMERHEAD
	* LONG ARMS NOW SCALES SWINGS
	* EXTRA FEET BUFF +DROPCHANCE
	* HOG ULTRA B CHANGES
	* NEW PLANT ULTRA C
	* NEW SECRET FISH ULTRA
	* CHANGED VIKING ULTRA C
	* CHANGED STEROIDS ULTRA B
	* ROBOT ULTRA BUFFS
	* NEW GOLDEN ENEMIES
	* NEW MUTATIONS
	FLEXIBLE ELBOWS
	PUFFY CHEEKS
	* BUFFED HORROR ULTRAS A & C & E
	* WALKING CROWNS
	* FROG MINIMUM WALK SPEED LOWERED
	
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
	* NEW ULTRA MOD LIGHTNING <=> PELLET
	* MORE ULTRA MOD CASES COVERED
	* 4 NEW CROWNS
	* CUSTOM SIDE-ART
	* BUFFED ATOM ULTRA C & D
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
	* ULTRA CHESTS (LOOP 2+)
	* ANGEL ACTIVE ADDITION: DEFLECT
	* NEW GAMEMODES
	MELEE ONLY , ONE HIT WONDER
	ULTRA MUTATION START
	HARD MODE , ALL DEFLECTOR
	* BUFFED SHEEP'S PASSIVE (& ULTRA B)
	* LOTS OF BALANCE AND BUGFIXES
	
	PRESS [T] FOR UPDATES ON TWITTER
	PRESS [D] TO JOIN THE DISCORD
	
	* PRESS [SPACE] FOR PAGE 1";
	}

	stxt0 = txt0


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

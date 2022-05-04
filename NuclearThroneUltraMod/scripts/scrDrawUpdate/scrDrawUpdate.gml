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
	txt0 = @"#UPDATE 27 [0.02]
	
	* FIXED SOFTLOCKS!
	* INVERTED THRONE!
	* A NEW CHARACTER!
	* MUTATION REROLL STATION
	* SOMETHING BIG IN THE CROWNVAULT
	* MELEE DAMAGE NOW STACKS!
	THIS MEANS EAGLE EYES+SHOVEL IS A THING
	* REBALANCED MELEE 
	TO ADJUST FOR STACKING:
	SHOVEL DAMAGE REDUCED
	SWORD/SHANK GUN DAMAGE DECREASED
	JACKHAMMER DAMAGE DECREASED
	* NEW STARTING WEAPON FOR BUSINESS HOG
	* CROWN VAULT IS ACCESSIBLE IN PALACE
	* HUNTER ACTIVE REWORK
	* ANGEL INPUT BUFFERING
	* ANGEL TRANQUILITY ULTRA REWORK
	* WRENCH CAN NOW FIX YV'S CAR
	* CHANGED YV ULTRA C
	* SECRET YV ULTRA & SKINS
	* TWEAKED PALACE AREA GENERATION
	
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
	* FLAME SMG
	* HAND CANNON & AUTO HAND CANNON
	* AUTO MISSILE LAUNCHER
	* FAT SMARTGUN
	* POP WALL & POP LASER
	* JAW CRUSHER & JAW OBLITERATOR
	* DOUBLE MINI PLASMA RIFLE
	* FLAME DIRECTOR JAW ERASER
	* SCYTHE & SUPER SCYTHE
	* EXPLOSIVE ASSAULT RIFLE
	* LASER SHOVEL
	
	* OUTLINES FOR SKIN UNLOCKS
	* OUTLINES FOR ALL UNLOCKS ON CHARACTER
	* TWO NEW CROSSHAIRS
	* ENEMY HP REDUCTION IS MULTIPLICATIVE
	* CARS IN THE OASIS
	* SLIGHTLY FASTER PORTALS
	* FIXED SWARM WEAPONS
	BEING ABSOLUTELY BUSTED
	* INCREASED SPLINTER DAMAGE
	* LOTS OF BALANCE AND BUGFIXES#
	
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

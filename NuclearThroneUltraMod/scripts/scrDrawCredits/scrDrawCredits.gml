function scrDrawCredits() {

	//DRAW CREDITS

	if widescreen > 0
	widescreen -= 8
	
	if keyboard_check_pressed(vk_space)
	{
		if creditpage=0
			creditpage=1;
		else
			creditpage=0;
	}
	
	if creditpage == 0
	{
		if keyboard_check_pressed(ord("D"))
		{
			url_open("https://discord.gg/kmp5t2TK6j");
		}
		if keyboard_check_pressed(ord("T"))
		{
			url_open("https://twitter.com/Erdeppol");
		}
		thanks = "#ADDITIONAL ART:#ricottakitten#Guru Jr##OTHER PEOPLE:#Jodi#@ideaot/jasmine###@Erdeppol##NT-UM DISCORD##MUSIC USED:##Larje100#Inverted Sewers#Eric Chevalier#The lava stream#The lava tower"
		stxt2 = "######ADDITIONAL ART:####OTHER PEOPLE:####PRESS [T] TWITTER##PRESS [D] DISCORD###MUSIC USED:##Larje100##Eric Chevalier"
		txt0 = "#NUCLEAR THRONE ULTRA#NUCLEAR THRONE BY VLAMBEER##MOD BY ERDEPPOL"
		txt1 = "######ADDITIONAL CODE:#base4/spencers145##QA GODDESS:#AgentCucco##ART & SFX#@larje100##ULTRA MUTATION ART:#@tilde_bee#Lynzkar#skurleton#Lunarshards###ToasterGhostMary##HUNTER ART#NotYourSagittarius##"
		txt2 = "#####"+string(thanks)
		stxt0 = "#NUCLEAR THRONE ULTRA###MOD    ERDEPPOL########################[PRESS SPACE FOR PAGE 2]"
		stxt1 = "######ADDITIONAL CODE:###QA GODDESS:###ART & SFX###ULTRA MUTATION ART:######CONCEPT ART:###HUNTER ART####"//White text
	}
	else
	{
		thanks = "###MUSIC USED:##Lena Raine#Jukio-Reflections#Confronting Myself#T4N3 - Namachuukei#68-Game Set#Plume, Fred Leonard#Laurent parisi#Crossing the swamp#David Fenn#Crooked Crow#Reaper's Battle#Christophe Heral#Plant Boss#Christopher Larkin#Nosk#Disasterpeace#Chimera"
		stxt2 = "######MUSIC USED:##Lena Raine#Jukio##T4N3##Plume, Fred Leonard#Laurent parisi##David Fenn###Christophe Heral##Christopher Larkin##Disasterpeace#"
		txt0 = "#NUCLEAR THRONE#A GAME BY VLAMBEER##MOD BY ERDEPPOL"
		txt1 = "######DIRECTOR:#JAN WILLEM NIJMAN##PRODUCER:#RAMI ISMAIL##ART & ORIGINAL#CHARACTER DESIGN:#PAUL VEER##ORIGINAL MUSIC:#JUKIO KALLIO##SOUND DESIGN:#JOONAS TURNER##PROMOTIONAL ART:#JUSTIN CHAN##VOICE OF MR. VENUZ:#DOSEONE#"
		txt2 = "###"+string(thanks)
		stxt0 = "#NUCLEAR THRONE###MOD    ERDEPPOL########################[PRESS SPACE FOR PAGE 1]"
		stxt1 = "######DIRECTOR:###PRODUCER:###ART & ORIGINAL#CHARACTER DESIGN:###ORIGINAL MUSIC:###SOUND DESIGN:###PROMOTIONAL ART:###VOICE OF MR. VENUZ:#####"
	}

	
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

	draw_set_halign(fa_right)
	draw_set_color(c_black)
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-8,__view_get( e__VW.YView, 0 )+1,string_hash_to_newline(string(txt1)))
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-7,__view_get( e__VW.YView, 0 )+1,string_hash_to_newline(string(txt1)))
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-7,__view_get( e__VW.YView, 0 ),string_hash_to_newline(string(txt1)))
	draw_set_color(c_gray)
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-8,__view_get( e__VW.YView, 0 ),string_hash_to_newline(string(txt1)))
	draw_set_color(c_white)
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-8,__view_get( e__VW.YView, 0 ),string_hash_to_newline(string(stxt1)))

	draw_set_halign(fa_left)

	draw_set_color(c_black)
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+8,__view_get( e__VW.YView, 0 )+1,string_hash_to_newline(string(txt2)))
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+9,__view_get( e__VW.YView, 0 )+1,string_hash_to_newline(string(txt2)))
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+9,__view_get( e__VW.YView, 0 ),string_hash_to_newline(string(txt2)))
	draw_set_color(c_gray)
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+8,__view_get( e__VW.YView, 0 ),string_hash_to_newline(string(txt2)))
	draw_set_color(c_white)
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+8,__view_get( e__VW.YView, 0 ),string_hash_to_newline(string(stxt2)))



}
